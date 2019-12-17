/*
Copyright 2008-2019 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.
pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.
*/
%define FONTDOCSTRING
"Font module, see official documentation at
https://www.opencascade.com/doc/occt-7.4.0/refman/html/package_font.html"
%enddef
%module (package="OCC.Core", docstring=FONTDOCSTRING) Font


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%include ../common/CommonIncludes.i
%include ../common/ExceptionCatcher.i
%include ../common/FunctionTransformers.i
%include ../common/Operators.i
%include ../common/OccHandle.i


%{
#include<Font_module.hxx>

//Dependencies
#include<Standard_module.hxx>
#include<NCollection_module.hxx>
#include<TCollection_module.hxx>
#include<Image_module.hxx>
#include<TColStd_module.hxx>
#include<TopoDS_module.hxx>
#include<Bnd_module.hxx>
#include<Geom_module.hxx>
#include<Quantity_module.hxx>
#include<TColgp_module.hxx>
#include<TColStd_module.hxx>
#include<TCollection_module.hxx>
#include<Storage_module.hxx>
%};
%import Standard.i
%import NCollection.i
%import TCollection.i
%import Image.i
%import TColStd.i
%import TopoDS.i
/* public enums */
enum Font_StrictLevel {
	Font_StrictLevel_Strict = 0,
	Font_StrictLevel_Aliases = 1,
	Font_StrictLevel_Any = 2,
};

enum Font_UnicodeSubset {
	Font_UnicodeSubset_Western = 0,
	Font_UnicodeSubset_Korean = 1,
	Font_UnicodeSubset_CJK = 2,
	Font_UnicodeSubset_Arabic = 3,
};

enum  {
	Font_UnicodeSubset_NB = Font_UnicodeSubset_Arabic,
};

enum Font_FontAspect {
	Font_FontAspect_UNDEFINED = - 1,
	Font_FontAspect_Regular = 0,
	Font_FontAspect_Bold = 1,
	Font_FontAspect_Italic = 2,
	Font_FontAspect_BoldItalic = 3,
	Font_FA_Undefined = Font_FontAspect_UNDEFINED,
	Font_FA_Regular = Font_FontAspect_Regular,
	Font_FA_Bold = Font_FontAspect_Bold,
	Font_FA_Italic = Font_FontAspect_Italic,
	Font_FA_BoldItalic = Font_FontAspect_BoldItalic,
};

enum  {
	Font_FontAspect_NB = Font_FontAspect_BoldItalic + 1,
};

/* end public enums declaration */

/* handles */
%wrap_handle(Font_FTFont)
%wrap_handle(Font_FTLibrary)
%wrap_handle(Font_FontMgr)
%wrap_handle(Font_SystemFont)

/* end handles declaration */

/* templates */
%template(Font_NListOfSystemFont) NCollection_List <opencascade::handle <Font_SystemFont>>;
/* end templates declaration */

/* typedefs */
typedef struct FT_FaceRec_ * FT_Face;
typedef struct FT_Vector_ FT_Vector;
typedef struct FT_LibraryRec_ * FT_Library;
typedef NCollection_List <opencascade::handle <Font_SystemFont>> Font_NListOfSystemFont;
/* end typedefs declaration */

/*****************************
* class Font_BRepTextBuilder *
*****************************/
%nodefaultctor Font_BRepTextBuilder;
class Font_BRepTextBuilder {
	public:
};


%extend Font_BRepTextBuilder {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/********************
* class Font_FTFont *
********************/
%nodefaultctor Font_FTFont;
class Font_FTFont : public Standard_Transient {
	public:
		/****************** AdvanceX ******************/
		%feature("compactdefaultargs") AdvanceX;
		%feature("autodoc", "* Compute horizontal advance to the next character with kerning applied when applicable. Assuming text rendered horizontally. @param theUCharNext the next character to compute advance from current one
	:param theUCharNext:
	:type theUCharNext: Standard_Utf32Char
	:rtype: float") AdvanceX;
		float AdvanceX (Standard_Utf32Char theUCharNext);

		/****************** AdvanceX ******************/
		%feature("compactdefaultargs") AdvanceX;
		%feature("autodoc", "* Compute horizontal advance to the next character with kerning applied when applicable. Assuming text rendered horizontally. @param theUChar the character to be loaded as current one @param theUCharNext the next character to compute advance from current one
	:param theUChar:
	:type theUChar: Standard_Utf32Char
	:param theUCharNext:
	:type theUCharNext: Standard_Utf32Char
	:rtype: float") AdvanceX;
		float AdvanceX (Standard_Utf32Char theUChar,Standard_Utf32Char theUCharNext);

		/****************** AdvanceY ******************/
		%feature("compactdefaultargs") AdvanceY;
		%feature("autodoc", "* Compute vertical advance to the next character with kerning applied when applicable. Assuming text rendered vertically. @param theUCharNext the next character to compute advance from current one
	:param theUCharNext:
	:type theUCharNext: Standard_Utf32Char
	:rtype: float") AdvanceY;
		float AdvanceY (Standard_Utf32Char theUCharNext);

		/****************** AdvanceY ******************/
		%feature("compactdefaultargs") AdvanceY;
		%feature("autodoc", "* Compute vertical advance to the next character with kerning applied when applicable. Assuming text rendered vertically. @param theUChar the character to be loaded as current one @param theUCharNext the next character to compute advance from current one
	:param theUChar:
	:type theUChar: Standard_Utf32Char
	:param theUCharNext:
	:type theUCharNext: Standard_Utf32Char
	:rtype: float") AdvanceY;
		float AdvanceY (Standard_Utf32Char theUChar,Standard_Utf32Char theUCharNext);

		/****************** Ascender ******************/
		%feature("compactdefaultargs") Ascender;
		%feature("autodoc", "* returns vertical distance from the horizontal baseline to the highest character coordinate.
	:rtype: float") Ascender;
		float Ascender ();

		/****************** CharSubset ******************/
		%feature("compactdefaultargs") CharSubset;
		%feature("autodoc", "* Determine Unicode subset for specified character
	:param theUChar:
	:type theUChar: Standard_Utf32Char
	:rtype: Font_UnicodeSubset") CharSubset;
		static Font_UnicodeSubset CharSubset (Standard_Utf32Char theUChar);

		/****************** Descender ******************/
		%feature("compactdefaultargs") Descender;
		%feature("autodoc", "* returns vertical distance from the horizontal baseline to the lowest character coordinate.
	:rtype: float") Descender;
		float Descender ();

		/****************** FindAndCreate ******************/
		%feature("compactdefaultargs") FindAndCreate;
		%feature("autodoc", "* Find the font Initialize the font. @param theFontName the font name @param theFontAspect the font style @param theParams initialization parameters @param theStrictLevel search strict level for using aliases and fallback returns true on success
	:param theFontName:
	:type theFontName: TCollection_AsciiString
	:param theFontAspect:
	:type theFontAspect: Font_FontAspect
	:param theParams:
	:type theParams: Font_FTFontParams
	:param theStrictLevel: default value is Font_StrictLevel_Any
	:type theStrictLevel: Font_StrictLevel
	:rtype: opencascade::handle<Font_FTFont>") FindAndCreate;
		static opencascade::handle<Font_FTFont> FindAndCreate (const TCollection_AsciiString & theFontName,const Font_FontAspect theFontAspect,const Font_FTFontParams & theParams,const Font_StrictLevel theStrictLevel = Font_StrictLevel_Any);

		/****************** FindAndInit ******************/
		%feature("compactdefaultargs") FindAndInit;
		%feature("autodoc", "* Find (using Font_FontMgr) and initialize the font from the given name. @param theFontName the font name @param theFontAspect the font style @param theParams initialization parameters @param theStrictLevel search strict level for using aliases and fallback returns true on success
	:param theFontName:
	:type theFontName: TCollection_AsciiString
	:param theFontAspect:
	:type theFontAspect: Font_FontAspect
	:param theParams:
	:type theParams: Font_FTFontParams
	:param theStrictLevel: default value is Font_StrictLevel_Any
	:type theStrictLevel: Font_StrictLevel
	:rtype: bool") FindAndInit;
		bool FindAndInit (const TCollection_AsciiString & theFontName,Font_FontAspect theFontAspect,const Font_FTFontParams & theParams,Font_StrictLevel theStrictLevel = Font_StrictLevel_Any);

		/****************** Font_FTFont ******************/
		%feature("compactdefaultargs") Font_FTFont;
		%feature("autodoc", "* Create uninitialized instance.
	:param theFTLib: default value is opencascade::handle<Font_FTLibrary>()
	:type theFTLib: Font_FTLibrary
	:rtype: None") Font_FTFont;
		 Font_FTFont (const opencascade::handle<Font_FTLibrary> & theFTLib = opencascade::handle<Font_FTLibrary>());

		/****************** GlyphImage ******************/
		%feature("compactdefaultargs") GlyphImage;
		%feature("autodoc", "* returns image plane for currently rendered glyph
	:rtype: inline  Image_PixMap") GlyphImage;
		inline const Image_PixMap & GlyphImage ();

		/****************** GlyphMaxSizeX ******************/
		%feature("compactdefaultargs") GlyphMaxSizeX;
		%feature("autodoc", "* returns maximal glyph width in pixels (rendered to bitmap).
	:param theToIncludeFallback: default value is false
	:type theToIncludeFallback: bool
	:rtype: unsigned int") GlyphMaxSizeX;
		unsigned int GlyphMaxSizeX (bool theToIncludeFallback = false);

		/****************** GlyphMaxSizeY ******************/
		%feature("compactdefaultargs") GlyphMaxSizeY;
		%feature("autodoc", "* returns maximal glyph height in pixels (rendered to bitmap).
	:param theToIncludeFallback: default value is false
	:type theToIncludeFallback: bool
	:rtype: unsigned int") GlyphMaxSizeY;
		unsigned int GlyphMaxSizeY (bool theToIncludeFallback = false);

		/****************** GlyphRect ******************/
		%feature("compactdefaultargs") GlyphRect;
		%feature("autodoc", "* Retrieve glyph bitmap rectangle
	:param theRect:
	:type theRect: Font_Rect
	:rtype: None") GlyphRect;
		void GlyphRect (Font_Rect & theRect);

		/****************** GlyphsNumber ******************/
		%feature("compactdefaultargs") GlyphsNumber;
		%feature("autodoc", "* Return glyphs number in this font. @param theToIncludeFallback if True then the number will include fallback list
	:param theToIncludeFallback: default value is false
	:type theToIncludeFallback: bool
	:rtype: int") GlyphsNumber;
		Standard_Integer GlyphsNumber (bool theToIncludeFallback = false);

		/****************** HasSymbol ******************/
		%feature("compactdefaultargs") HasSymbol;
		%feature("autodoc", "* Return True if font contains specified symbol (excluding fallback list).
	:param theUChar:
	:type theUChar: Standard_Utf32Char
	:rtype: bool") HasSymbol;
		bool HasSymbol (Standard_Utf32Char theUChar);

		/****************** Init ******************/
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "* Initialize the font from the given file path. @param theFontPath path to the font @param theParams initialization parameters returns true on success
	:param theFontPath:
	:type theFontPath: TCollection_AsciiString
	:param theParams:
	:type theParams: Font_FTFontParams
	:rtype: bool") Init;
		bool Init (const TCollection_AsciiString & theFontPath,const Font_FTFontParams & theParams);

		/****************** Init ******************/
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "* Initialize the font from the given file path or memory buffer. @param theData memory to read from, should NOT be freed after initialization!  when NULL, function will attempt to open theFileName file @param theFileName optional path to the font @param theParams initialization parameters returns true on success
	:param theData:
	:type theData: NCollection_Buffer
	:param theFileName:
	:type theFileName: TCollection_AsciiString
	:param theParams:
	:type theParams: Font_FTFontParams
	:rtype: bool") Init;
		bool Init (const opencascade::handle<NCollection_Buffer> & theData,const TCollection_AsciiString & theFileName,const Font_FTFontParams & theParams);

		/****************** Init ******************/
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "* Initialize the font. @param theFontPath path to the font @param thePointSize the face size in points (1/72 inch) @param theResolution the resolution of the target device in dpi returns true on success
	:param theFontPath:
	:type theFontPath: NCollection_String
	:param thePointSize:
	:type thePointSize: unsigned int
	:param theResolution:
	:type theResolution: unsigned int
	:rtype: bool") Init;
		bool Init (const NCollection_String & theFontPath,unsigned int thePointSize,unsigned int theResolution);

		/****************** Init ******************/
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "* Initialize the font. @param theFontName the font name @param theFontAspect the font style @param thePointSize the face size in points (1/72 inch) @param theResolution the resolution of the target device in dpi returns true on success
	:param theFontName:
	:type theFontName: NCollection_String
	:param theFontAspect:
	:type theFontAspect: Font_FontAspect
	:param thePointSize:
	:type thePointSize: unsigned int
	:param theResolution:
	:type theResolution: unsigned int
	:rtype: bool") Init;
		bool Init (const NCollection_String & theFontName,Font_FontAspect theFontAspect,unsigned int thePointSize,unsigned int theResolution);

		/****************** IsCharFromArabic ******************/
		%feature("compactdefaultargs") IsCharFromArabic;
		%feature("autodoc", "* Return True if specified character is within subset of Arabic characters.
	:param theUChar:
	:type theUChar: Standard_Utf32Char
	:rtype: bool") IsCharFromArabic;
		static bool IsCharFromArabic (Standard_Utf32Char theUChar);

		/****************** IsCharFromCJK ******************/
		%feature("compactdefaultargs") IsCharFromCJK;
		%feature("autodoc", "* Return True if specified character is within subset of modern CJK characters.
	:param theUChar:
	:type theUChar: Standard_Utf32Char
	:rtype: bool") IsCharFromCJK;
		static bool IsCharFromCJK (Standard_Utf32Char theUChar);

		/****************** IsCharFromHiragana ******************/
		%feature("compactdefaultargs") IsCharFromHiragana;
		%feature("autodoc", "* Return True if specified character is within subset of Hiragana (Japanese).
	:param theUChar:
	:type theUChar: Standard_Utf32Char
	:rtype: bool") IsCharFromHiragana;
		static bool IsCharFromHiragana (Standard_Utf32Char theUChar);

		/****************** IsCharFromKatakana ******************/
		%feature("compactdefaultargs") IsCharFromKatakana;
		%feature("autodoc", "* Return True if specified character is within subset of Katakana (Japanese).
	:param theUChar:
	:type theUChar: Standard_Utf32Char
	:rtype: bool") IsCharFromKatakana;
		static bool IsCharFromKatakana (Standard_Utf32Char theUChar);

		/****************** IsCharFromKorean ******************/
		%feature("compactdefaultargs") IsCharFromKorean;
		%feature("autodoc", "* Return True if specified character is within subset of modern Korean characters (Hangul).
	:param theUChar:
	:type theUChar: Standard_Utf32Char
	:rtype: bool") IsCharFromKorean;
		static bool IsCharFromKorean (Standard_Utf32Char theUChar);

		/****************** IsCharRightToLeft ******************/
		%feature("compactdefaultargs") IsCharRightToLeft;
		%feature("autodoc", "* Return True if specified character should be displayed in Right-to-Left order.
	:param theUChar:
	:type theUChar: Standard_Utf32Char
	:rtype: bool") IsCharRightToLeft;
		static bool IsCharRightToLeft (Standard_Utf32Char theUChar);

		/****************** IsSingleStrokeFont ******************/
		%feature("compactdefaultargs") IsSingleStrokeFont;
		%feature("autodoc", "* Return True if this is single-stroke (one-line) font, False by default. Such fonts define single-line glyphs instead of closed contours, so that they are rendered incorrectly by normal software.
	:rtype: bool") IsSingleStrokeFont;
		bool IsSingleStrokeFont ();

		/****************** IsValid ******************/
		%feature("compactdefaultargs") IsValid;
		%feature("autodoc", "* returns true if font is loaded
	:rtype: inline bool") IsValid;
		inline bool IsValid ();

		/****************** LineSpacing ******************/
		%feature("compactdefaultargs") LineSpacing;
		%feature("autodoc", "* returns default line spacing (the baseline-to-baseline distance).
	:rtype: float") LineSpacing;
		float LineSpacing ();

		/****************** PointSize ******************/
		%feature("compactdefaultargs") PointSize;
		%feature("autodoc", "* Configured point size
	:rtype: unsigned int") PointSize;
		unsigned int PointSize ();

		/****************** Release ******************/
		%feature("compactdefaultargs") Release;
		%feature("autodoc", "* Release currently loaded font.
	:rtype: void") Release;
		virtual void Release ();

		/****************** RenderGlyph ******************/
		%feature("compactdefaultargs") RenderGlyph;
		%feature("autodoc", "* Render specified glyph into internal buffer (bitmap).
	:param theChar:
	:type theChar: Standard_Utf32Char
	:rtype: bool") RenderGlyph;
		bool RenderGlyph (const Standard_Utf32Char theChar);

		/****************** SetSingleStrokeFont ******************/
		%feature("compactdefaultargs") SetSingleStrokeFont;
		%feature("autodoc", "* Set if this font should be rendered as single-stroke (one-line).
	:param theIsSingleLine:
	:type theIsSingleLine: bool
	:rtype: None") SetSingleStrokeFont;
		void SetSingleStrokeFont (bool theIsSingleLine);

		/****************** SetUseUnicodeSubsetFallback ******************/
		%feature("compactdefaultargs") SetUseUnicodeSubsetFallback;
		%feature("autodoc", "* Set if fallback fonts should be used in case if used font does not include symbols from specific Unicode subset.
	:param theToFallback:
	:type theToFallback: bool
	:rtype: None") SetUseUnicodeSubsetFallback;
		void SetUseUnicodeSubsetFallback (Standard_Boolean theToFallback);

		/****************** SetWidthScaling ******************/
		%feature("compactdefaultargs") SetWidthScaling;
		%feature("autodoc", "* Setup glyph scaling along X-axis. By default glyphs are not scaled (scaling factor = 1.0)
	:param theScaleFactor:
	:type theScaleFactor: float
	:rtype: None") SetWidthScaling;
		void SetWidthScaling (const float theScaleFactor);

		/****************** ToSynthesizeItalic ******************/
		%feature("compactdefaultargs") ToSynthesizeItalic;
		%feature("autodoc", "* Return True if italic style should be synthesized; False by default.
	:rtype: bool") ToSynthesizeItalic;
		bool ToSynthesizeItalic ();

		/****************** ToUseUnicodeSubsetFallback ******************/
		%feature("compactdefaultargs") ToUseUnicodeSubsetFallback;
		%feature("autodoc", "* Return flag to use fallback fonts in case if used font does not include symbols from specific Unicode subset; True by default. @sa Font_FontMgr::ToUseUnicodeSubsetFallback()
	:rtype: bool") ToUseUnicodeSubsetFallback;
		Standard_Boolean ToUseUnicodeSubsetFallback ();

};


%make_alias(Font_FTFont)

%extend Font_FTFont {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**************************
* class Font_FTFontParams *
**************************/
%nodefaultctor Font_FTFontParams;
class Font_FTFontParams {
	public:
		unsigned int PointSize;
		unsigned int Resolution;
		bool ToSynthesizeItalic;
		bool IsSingleStrokeFont;
		/****************** Font_FTFontParams ******************/
		%feature("compactdefaultargs") Font_FTFontParams;
		%feature("autodoc", "* //!< single-stroke (one-line) font, False by default Empty constructor.
	:rtype: None") Font_FTFontParams;
		 Font_FTFontParams ();

		/****************** Font_FTFontParams ******************/
		%feature("compactdefaultargs") Font_FTFontParams;
		%feature("autodoc", "* Constructor.
	:param thePointSize:
	:type thePointSize: unsigned int
	:param theResolution:
	:type theResolution: unsigned int
	:rtype: None") Font_FTFontParams;
		 Font_FTFontParams (unsigned int thePointSize,unsigned int theResolution);

};


%extend Font_FTFontParams {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/***********************
* class Font_FTLibrary *
***********************/
%nodefaultctor Font_FTLibrary;
class Font_FTLibrary : public Standard_Transient {
	public:
		/****************** Font_FTLibrary ******************/
		%feature("compactdefaultargs") Font_FTLibrary;
		%feature("autodoc", "* Initialize new FT_Library instance.
	:rtype: None") Font_FTLibrary;
		 Font_FTLibrary ();

		/****************** Instance ******************/
		%feature("compactdefaultargs") Instance;
		%feature("autodoc", "* Access FT_Library instance.
	:rtype: FT_Library") Instance;
		FT_Library Instance ();

		/****************** IsValid ******************/
		%feature("compactdefaultargs") IsValid;
		%feature("autodoc", "* This method should always return true. returns true if FT_Library instance is valid.
	:rtype: bool") IsValid;
		bool IsValid ();

};


%make_alias(Font_FTLibrary)

%extend Font_FTLibrary {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*********************
* class Font_FontMgr *
*********************/
%nodefaultctor Font_FontMgr;
class Font_FontMgr : public Standard_Transient {
	public:
		class Font_FontMap {};
		class Font_FontAlias {};
		/****************** AvailableFonts ******************/
		%feature("compactdefaultargs") AvailableFonts;
		%feature("autodoc", "* Return the list of available fonts.
	:param theList:
	:type theList: Font_NListOfSystemFont
	:rtype: None") AvailableFonts;
		void AvailableFonts (Font_NListOfSystemFont & theList);

		/****************** CheckFont ******************/
		%feature("compactdefaultargs") CheckFont;
		%feature("autodoc", "* Read font file and retrieve information from it.
	:param theFontPath:
	:type theFontPath: char *
	:rtype: opencascade::handle<Font_SystemFont>") CheckFont;
		opencascade::handle<Font_SystemFont> CheckFont (const char * theFontPath);

		/****************** FindFallbackFont ******************/
		%feature("compactdefaultargs") FindFallbackFont;
		%feature("autodoc", "* Tries to find fallback font for specified Unicode subset. Returns NULL in case when fallback font is not found in the system. @param theSubset [in] Unicode subset @param theFontAspect [in] font aspect to find
	:param theSubset:
	:type theSubset: Font_UnicodeSubset
	:param theFontAspect:
	:type theFontAspect: Font_FontAspect
	:rtype: opencascade::handle<Font_SystemFont>") FindFallbackFont;
		opencascade::handle<Font_SystemFont> FindFallbackFont (Font_UnicodeSubset theSubset,Font_FontAspect theFontAspect);

		/****************** FindFont ******************/
		%feature("compactdefaultargs") FindFont;
		%feature("autodoc", "* Tries to find font by given parameters. If the specified font is not found tries to use font names mapping. If the requested family name not found -> search for any font family with given aspect and height. If the font is still not found, returns any font available in the system. Returns NULL in case when the fonts are not found in the system. @param theFontName [in] font family to find or alias name @param theStrictLevel [in] search strict level for using aliases and fallback @param theFontAspect [in] [out] font aspect to find (considered only if family name is not found);  can be modified if specified font alias refers to another style (compatibility with obsolete aliases)
	:param theFontName:
	:type theFontName: TCollection_AsciiString
	:param theStrictLevel:
	:type theStrictLevel: Font_StrictLevel
	:param theFontAspect:
	:type theFontAspect: Font_FontAspect
	:rtype: opencascade::handle<Font_SystemFont>") FindFont;
		opencascade::handle<Font_SystemFont> FindFont (const TCollection_AsciiString & theFontName,Font_StrictLevel theStrictLevel,Font_FontAspect & theFontAspect);

		/****************** FindFont ******************/
		%feature("compactdefaultargs") FindFont;
		%feature("autodoc", "* Tries to find font by given parameters.
	:param theFontName:
	:type theFontName: TCollection_AsciiString
	:param theFontAspect:
	:type theFontAspect: Font_FontAspect
	:rtype: opencascade::handle<Font_SystemFont>") FindFont;
		opencascade::handle<Font_SystemFont> FindFont (const TCollection_AsciiString & theFontName,Font_FontAspect & theFontAspect);

		/****************** FontAspectToString ******************/
		%feature("compactdefaultargs") FontAspectToString;
		%feature("autodoc", "* Return font aspect as string.
	:param theAspect:
	:type theAspect: Font_FontAspect
	:rtype: char *") FontAspectToString;
		static const char * FontAspectToString (Font_FontAspect theAspect);

		/****************** GetAvailableFonts ******************/
		%feature("compactdefaultargs") GetAvailableFonts;
		%feature("autodoc", "* Return the list of available fonts.
	:rtype: Font_NListOfSystemFont") GetAvailableFonts;
		Font_NListOfSystemFont GetAvailableFonts ();

		/****************** GetAvailableFontsNames ******************/
		%feature("compactdefaultargs") GetAvailableFontsNames;
		%feature("autodoc", "* Returns sequence of available fonts names
	:param theFontsNames:
	:type theFontsNames: TColStd_SequenceOfHAsciiString
	:rtype: None") GetAvailableFontsNames;
		void GetAvailableFontsNames (TColStd_SequenceOfHAsciiString & theFontsNames);

		/****************** GetFont ******************/
		%feature("compactdefaultargs") GetFont;
		%feature("autodoc", "* Returns font that match given parameters. If theFontName is empty string returned font can have any FontName. If theFontAspect is Font_FA_Undefined returned font can have any FontAspect. If theFontSize is '-1' returned font can have any FontSize.
	:param theFontName:
	:type theFontName: TCollection_HAsciiString
	:param theFontAspect:
	:type theFontAspect: Font_FontAspect
	:param theFontSize:
	:type theFontSize: int
	:rtype: opencascade::handle<Font_SystemFont>") GetFont;
		opencascade::handle<Font_SystemFont> GetFont (const opencascade::handle<TCollection_HAsciiString> & theFontName,const Font_FontAspect theFontAspect,const Standard_Integer theFontSize);

		/****************** GetFont ******************/
		%feature("compactdefaultargs") GetFont;
		%feature("autodoc", "* Returns font that match given name or NULL if such font family is NOT registered. Note that unlike FindFont(), this method ignores font aliases and does not look for fall-back.
	:param theFontName:
	:type theFontName: TCollection_AsciiString
	:rtype: opencascade::handle<Font_SystemFont>") GetFont;
		opencascade::handle<Font_SystemFont> GetFont (const TCollection_AsciiString & theFontName);

		/****************** GetInstance ******************/
		%feature("compactdefaultargs") GetInstance;
		%feature("autodoc", "* Return global instance of font manager.
	:rtype: opencascade::handle<Font_FontMgr>") GetInstance;
		static opencascade::handle<Font_FontMgr> GetInstance ();

		/****************** RegisterFont ******************/
		%feature("compactdefaultargs") RegisterFont;
		%feature("autodoc", "* Register new font. If there is existing entity with the same name and properties but different path then font will be overridden or ignored depending on theToOverride flag.
	:param theFont:
	:type theFont: Font_SystemFont
	:param theToOverride:
	:type theToOverride: bool
	:rtype: bool") RegisterFont;
		Standard_Boolean RegisterFont (const opencascade::handle<Font_SystemFont> & theFont,const Standard_Boolean theToOverride);

		/****************** SetTraceAliases ******************/
		%feature("compactdefaultargs") SetTraceAliases;
		%feature("autodoc", "* Set flag for tracing font alias usage; useful to trace which fonts are actually used. Can be disabled to avoid redundant messages with Message_Trace level.
	:param theToTrace:
	:type theToTrace: bool
	:rtype: None") SetTraceAliases;
		void SetTraceAliases (Standard_Boolean theToTrace);

		/****************** ToTraceAliases ******************/
		%feature("compactdefaultargs") ToTraceAliases;
		%feature("autodoc", "* Return flag for tracing font aliases usage via Message_Trace messages; True by default.
	:rtype: bool") ToTraceAliases;
		Standard_Boolean ToTraceAliases ();

		/****************** ToUseUnicodeSubsetFallback ******************/
		%feature("compactdefaultargs") ToUseUnicodeSubsetFallback;
		%feature("autodoc", "* Return flag to use fallback fonts in case if used font does not include symbols from specific Unicode subset; True by default.
	:rtype: bool") ToUseUnicodeSubsetFallback;
		static Standard_Boolean & ToUseUnicodeSubsetFallback ();

};


%make_alias(Font_FontMgr)

%extend Font_FontMgr {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/******************
* class Font_Rect *
******************/
%nodefaultctor Font_Rect;
class Font_Rect {
	public:
		float Left;
		float Right;
		float Top;
		float Bottom;
		/****************** BottomLeft ******************/
		%feature("compactdefaultargs") BottomLeft;
		%feature("autodoc", "* Bottom-left corner as vec2.
	:param theVec:
	:type theVec: NCollection_Vec2<float>
	:rtype: NCollection_Vec2<float>") BottomLeft;
		NCollection_Vec2<float> & BottomLeft (NCollection_Vec2<float> & theVec);

		/****************** BottomRight ******************/
		%feature("compactdefaultargs") BottomRight;
		%feature("autodoc", "* Bottom-right corner as vec2.
	:param theVec:
	:type theVec: NCollection_Vec2<float>
	:rtype: NCollection_Vec2<float>") BottomRight;
		NCollection_Vec2<float> & BottomRight (NCollection_Vec2<float> & theVec);

		/****************** Height ******************/
		%feature("compactdefaultargs") Height;
		%feature("autodoc", "* Rectangle height.
	:rtype: float") Height;
		float Height ();

		/****************** TopLeft ******************/
		%feature("compactdefaultargs") TopLeft;
		%feature("autodoc", "* //!< bottom position Top-left corner as vec2.
	:rtype: NCollection_Vec2<float>") TopLeft;
		NCollection_Vec2<float> TopLeft ();

		/****************** TopLeft ******************/
		%feature("compactdefaultargs") TopLeft;
		%feature("autodoc", "* Top-left corner as vec2.
	:param theVec:
	:type theVec: NCollection_Vec2<float>
	:rtype: NCollection_Vec2<float>") TopLeft;
		NCollection_Vec2<float> & TopLeft (NCollection_Vec2<float> & theVec);

		/****************** TopRight ******************/
		%feature("compactdefaultargs") TopRight;
		%feature("autodoc", "* Top-right corner as vec2.
	:param theVec:
	:type theVec: NCollection_Vec2<float>
	:rtype: NCollection_Vec2<float>") TopRight;
		NCollection_Vec2<float> & TopRight (NCollection_Vec2<float> & theVec);

		/****************** Width ******************/
		%feature("compactdefaultargs") Width;
		%feature("autodoc", "* Rectangle width.
	:rtype: float") Width;
		float Width ();

};


%extend Font_Rect {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/************************
* class Font_SystemFont *
************************/
%nodefaultctor Font_SystemFont;
class Font_SystemFont : public Standard_Transient {
	public:
		/****************** FontKey ******************/
		%feature("compactdefaultargs") FontKey;
		%feature("autodoc", "* Returns font family name (lower-cased).
	:rtype: TCollection_AsciiString") FontKey;
		const TCollection_AsciiString & FontKey ();

		/****************** FontName ******************/
		%feature("compactdefaultargs") FontName;
		%feature("autodoc", "* Returns font family name.
	:rtype: TCollection_AsciiString") FontName;
		const TCollection_AsciiString & FontName ();

		/****************** FontPath ******************/
		%feature("compactdefaultargs") FontPath;
		%feature("autodoc", "* Returns font file path.
	:param theAspect:
	:type theAspect: Font_FontAspect
	:rtype: TCollection_AsciiString") FontPath;
		const TCollection_AsciiString & FontPath (Font_FontAspect theAspect);

		/****************** FontPathAny ******************/
		%feature("compactdefaultargs") FontPathAny;
		%feature("autodoc", "* Returns any defined font file path.
	:param theAspect:
	:type theAspect: Font_FontAspect
	:param theToSynthesizeItalic:
	:type theToSynthesizeItalic: bool
	:rtype: TCollection_AsciiString") FontPathAny;
		const TCollection_AsciiString & FontPathAny (Font_FontAspect theAspect,Standard_Boolean &OutValue);

		/****************** Font_SystemFont ******************/
		%feature("compactdefaultargs") Font_SystemFont;
		%feature("autodoc", "* Creates a new font object.
	:param theFontName:
	:type theFontName: TCollection_AsciiString
	:rtype: None") Font_SystemFont;
		 Font_SystemFont (const TCollection_AsciiString & theFontName);

		/****************** HasFontAspect ******************/
		%feature("compactdefaultargs") HasFontAspect;
		%feature("autodoc", "* Returns True if dedicated file for specified font aspect has been defined.
	:param theAspect:
	:type theAspect: Font_FontAspect
	:rtype: bool") HasFontAspect;
		bool HasFontAspect (Font_FontAspect theAspect);

		/****************** HashCode ******************/
		%feature("compactdefaultargs") HashCode;
		%feature("autodoc", "* Computes a hash code for the system font, in the range [1, theUpperBound]. Based on Font Family, so that the whole family with different aspects can be found within the same bucket of some map @param theSystemFont the system font which hash code is to be computed @param theUpperBound the upper bound of the range a computing hash code must be within returns a computed hash code, in the range [1, theUpperBound]
	:param theSystemFont:
	:type theSystemFont: Font_SystemFont
	:param theUpperBound:
	:type theUpperBound: int
	:rtype: int") HashCode;
		static Standard_Integer HashCode (const opencascade::handle<Font_SystemFont> & theSystemFont,const Standard_Integer theUpperBound);

		/****************** IsEqual ******************/
		%feature("compactdefaultargs") IsEqual;
		%feature("autodoc", "* Return true if the FontName, FontAspect and FontSize are the same.
	:param theOtherFont:
	:type theOtherFont: Font_SystemFont
	:rtype: bool") IsEqual;
		Standard_Boolean IsEqual (const opencascade::handle<Font_SystemFont> & theOtherFont);

		/****************** IsEqual ******************/
		%feature("compactdefaultargs") IsEqual;
		%feature("autodoc", "* Matching two instances, for Map interface.
	:param theFont1:
	:type theFont1: Font_SystemFont
	:param theFont2:
	:type theFont2: Font_SystemFont
	:rtype: bool") IsEqual;
		static bool IsEqual (const opencascade::handle<Font_SystemFont> & theFont1,const opencascade::handle<Font_SystemFont> & theFont2);

		/****************** IsSingleStrokeFont ******************/
		%feature("compactdefaultargs") IsSingleStrokeFont;
		%feature("autodoc", "* Return True if this is single-stroke (one-line) font, False by default. Such fonts define single-line glyphs instead of closed contours, so that they are rendered incorrectly by normal software.
	:rtype: bool") IsSingleStrokeFont;
		Standard_Boolean IsSingleStrokeFont ();

		/****************** SetFontPath ******************/
		%feature("compactdefaultargs") SetFontPath;
		%feature("autodoc", "* Sets font file path for specific aspect.
	:param theAspect:
	:type theAspect: Font_FontAspect
	:param thePath:
	:type thePath: TCollection_AsciiString
	:rtype: None") SetFontPath;
		void SetFontPath (Font_FontAspect theAspect,const TCollection_AsciiString & thePath);

		/****************** SetSingleStrokeFont ******************/
		%feature("compactdefaultargs") SetSingleStrokeFont;
		%feature("autodoc", "* Set if this font should be rendered as single-stroke (one-line).
	:param theIsSingleLine:
	:type theIsSingleLine: bool
	:rtype: None") SetSingleStrokeFont;
		void SetSingleStrokeFont (Standard_Boolean theIsSingleLine);

		/****************** ToString ******************/
		%feature("compactdefaultargs") ToString;
		%feature("autodoc", "* Format font description.
	:rtype: TCollection_AsciiString") ToString;
		TCollection_AsciiString ToString ();

};


%make_alias(Font_SystemFont)

%extend Font_SystemFont {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/***************************
* class Font_TextFormatter *
***************************/
%nodefaultctor Font_TextFormatter;
class Font_TextFormatter {
	public:
		/****************** Append ******************/
		%feature("compactdefaultargs") Append;
		%feature("autodoc", "* Render specified text to inner buffer.
	:param theString:
	:type theString: NCollection_String
	:param theFont:
	:type theFont: Font_FTFont
	:rtype: None") Append;
		void Append (const NCollection_String & theString,Font_FTFont & theFont);

		/****************** BndBox ******************/
		%feature("compactdefaultargs") BndBox;
		%feature("autodoc", "* @param bounding box.
	:param theBndBox:
	:type theBndBox: Font_Rect
	:rtype: inline void") BndBox;
		inline void BndBox (Font_Rect & theBndBox);

		/****************** Font_TextFormatter ******************/
		%feature("compactdefaultargs") Font_TextFormatter;
		%feature("autodoc", "* Default constructor.
	:rtype: None") Font_TextFormatter;
		 Font_TextFormatter ();

		/****************** Format ******************/
		%feature("compactdefaultargs") Format;
		%feature("autodoc", "* Perform formatting on the buffered text. Should not be called more than once after initialization!
	:rtype: None") Format;
		void Format ();

		/****************** Reset ******************/
		%feature("compactdefaultargs") Reset;
		%feature("autodoc", "* Reset current progress.
	:rtype: None") Reset;
		void Reset ();

		/****************** ResultHeight ******************/
		%feature("compactdefaultargs") ResultHeight;
		%feature("autodoc", "* returns height of formatted text.
	:rtype: inline Standard_ShortReal") ResultHeight;
		inline Standard_ShortReal ResultHeight ();

		/****************** ResultWidth ******************/
		%feature("compactdefaultargs") ResultWidth;
		%feature("autodoc", "* returns width of formatted text.
	:rtype: inline Standard_ShortReal") ResultWidth;
		inline Standard_ShortReal ResultWidth ();

		/****************** String ******************/
		%feature("compactdefaultargs") String;
		%feature("autodoc", "* Returns current rendering string.
	:rtype: inline  NCollection_String") String;
		inline const NCollection_String & String ();

		/****************** TabSize ******************/
		%feature("compactdefaultargs") TabSize;
		%feature("autodoc", "* Returns tab size.
	:rtype: inline int") TabSize;
		inline Standard_Integer TabSize ();

		/****************** TopLeft ******************/
		%feature("compactdefaultargs") TopLeft;
		%feature("autodoc", "* Returns specific glyph rectangle.
	:param theIndex:
	:type theIndex: int
	:rtype: inline  NCollection_Vec2<Standard_ShortReal>") TopLeft;
		inline const NCollection_Vec2<Standard_ShortReal> & TopLeft (const Standard_Integer theIndex);

};


%extend Font_TextFormatter {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**********************
* class Font_BRepFont *
**********************/
%nodefaultctor Font_BRepFont;
class Font_BRepFont : protected Font_FTFont {
	public:
		/****************** AdvanceX ******************/
		%feature("compactdefaultargs") AdvanceX;
		%feature("autodoc", "* Compute advance to the next character with kerning applied when applicable. Assuming text rendered horizontally.
	:param theUCharNext:
	:type theUCharNext: Standard_Utf32Char
	:rtype: float") AdvanceX;
		Standard_Real AdvanceX (const Standard_Utf32Char theUCharNext);

		/****************** AdvanceX ******************/
		%feature("compactdefaultargs") AdvanceX;
		%feature("autodoc", "* Compute advance to the next character with kerning applied when applicable. Assuming text rendered horizontally.
	:param theUChar:
	:type theUChar: Standard_Utf32Char
	:param theUCharNext:
	:type theUCharNext: Standard_Utf32Char
	:rtype: float") AdvanceX;
		Standard_Real AdvanceX (const Standard_Utf32Char theUChar,const Standard_Utf32Char theUCharNext);

		/****************** AdvanceY ******************/
		%feature("compactdefaultargs") AdvanceY;
		%feature("autodoc", "* Compute advance to the next character with kerning applied when applicable. Assuming text rendered vertically.
	:param theUCharNext:
	:type theUCharNext: Standard_Utf32Char
	:rtype: float") AdvanceY;
		Standard_Real AdvanceY (const Standard_Utf32Char theUCharNext);

		/****************** AdvanceY ******************/
		%feature("compactdefaultargs") AdvanceY;
		%feature("autodoc", "* Compute advance to the next character with kerning applied when applicable. Assuming text rendered vertically.
	:param theUChar:
	:type theUChar: Standard_Utf32Char
	:param theUCharNext:
	:type theUCharNext: Standard_Utf32Char
	:rtype: float") AdvanceY;
		Standard_Real AdvanceY (const Standard_Utf32Char theUChar,const Standard_Utf32Char theUCharNext);

		/****************** Ascender ******************/
		%feature("compactdefaultargs") Ascender;
		%feature("autodoc", "* returns vertical distance from the horizontal baseline to the highest character coordinate.
	:rtype: float") Ascender;
		Standard_Real Ascender ();

		/****************** Descender ******************/
		%feature("compactdefaultargs") Descender;
		%feature("autodoc", "* returns vertical distance from the horizontal baseline to the lowest character coordinate.
	:rtype: float") Descender;
		Standard_Real Descender ();

		/****************** FindAndInit ******************/
		%feature("compactdefaultargs") FindAndInit;
		%feature("autodoc", "* Find (using Font_FontMgr) and initialize the font from the given name. Please take into account that size is specified NOT in typography points (pt.). If you need to specify size in points, value should be converted. Formula for pt. -> m conversion: aSizeMeters = 0.0254 * theSizePt / 72.0 @param theFontName the font name @param theFontAspect the font style @param theSize the face size in model units @param theStrictLevel search strict level for using aliases and fallback returns true on success
	:param theFontName:
	:type theFontName: TCollection_AsciiString
	:param theFontAspect:
	:type theFontAspect: Font_FontAspect
	:param theSize:
	:type theSize: float
	:param theStrictLevel: default value is Font_StrictLevel_Any
	:type theStrictLevel: Font_StrictLevel
	:rtype: bool") FindAndInit;
		bool FindAndInit (const TCollection_AsciiString & theFontName,const Font_FontAspect theFontAspect,const Standard_Real theSize,const Font_StrictLevel theStrictLevel = Font_StrictLevel_Any);

		/****************** Font_BRepFont ******************/
		%feature("compactdefaultargs") Font_BRepFont;
		%feature("autodoc", "* Empty constructor
	:rtype: None") Font_BRepFont;
		 Font_BRepFont ();

		/****************** Font_BRepFont ******************/
		%feature("compactdefaultargs") Font_BRepFont;
		%feature("autodoc", "* Constructor with initialization. @param theFontPath FULL path to the font @param theSize the face size in model units
	:param theFontPath:
	:type theFontPath: NCollection_String
	:param theSize:
	:type theSize: float
	:rtype: None") Font_BRepFont;
		 Font_BRepFont (const NCollection_String & theFontPath,const Standard_Real theSize);

		/****************** Font_BRepFont ******************/
		%feature("compactdefaultargs") Font_BRepFont;
		%feature("autodoc", "* Constructor with initialization. @param theFontName the font name @param theFontAspect the font style @param theSize the face size in model units @param theStrictLevel search strict level for using aliases and fallback
	:param theFontName:
	:type theFontName: NCollection_String
	:param theFontAspect:
	:type theFontAspect: Font_FontAspect
	:param theSize:
	:type theSize: float
	:param theStrictLevel: default value is Font_StrictLevel_Any
	:type theStrictLevel: Font_StrictLevel
	:rtype: None") Font_BRepFont;
		 Font_BRepFont (const NCollection_String & theFontName,const Font_FontAspect theFontAspect,const Standard_Real theSize,const Font_StrictLevel theStrictLevel = Font_StrictLevel_Any);

		/****************** Init ******************/
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "* Initialize the font. @param theFontPath FULL path to the font @param theSize the face size in model units returns true on success
	:param theFontPath:
	:type theFontPath: NCollection_String
	:param theSize:
	:type theSize: float
	:rtype: bool") Init;
		bool Init (const NCollection_String & theFontPath,const Standard_Real theSize);

		/****************** Init ******************/
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "* Find (using Font_FontMgr) and initialize the font from the given name. Alias for FindAndInit() for backward compatibility.
	:param theFontName:
	:type theFontName: NCollection_String
	:param theFontAspect:
	:type theFontAspect: Font_FontAspect
	:param theSize:
	:type theSize: float
	:rtype: bool") Init;
		bool Init (const NCollection_String & theFontName,const Font_FontAspect theFontAspect,const Standard_Real theSize);

		/****************** LineSpacing ******************/
		%feature("compactdefaultargs") LineSpacing;
		%feature("autodoc", "* returns default line spacing (the baseline-to-baseline distance).
	:rtype: float") LineSpacing;
		Standard_Real LineSpacing ();

		/****************** Mutex ******************/
		%feature("compactdefaultargs") Mutex;
		%feature("autodoc", "* Returns mutex.
	:rtype: Standard_Mutex") Mutex;
		Standard_Mutex & Mutex ();

		/****************** PointSize ******************/
		%feature("compactdefaultargs") PointSize;
		%feature("autodoc", "* Configured point size
	:rtype: float") PointSize;
		Standard_Real PointSize ();

		/****************** Release ******************/
		%feature("compactdefaultargs") Release;
		%feature("autodoc", "* Release currently loaded font.
	:rtype: void") Release;
		virtual void Release ();

		/****************** RenderGlyph ******************/
		%feature("compactdefaultargs") RenderGlyph;
		%feature("autodoc", "* Render single glyph as TopoDS_Shape. @param theChar glyph identifier returns rendered glyph within cache, might be NULL shape
	:param theChar:
	:type theChar: Standard_Utf32Char
	:rtype: TopoDS_Shape") RenderGlyph;
		TopoDS_Shape RenderGlyph (const Standard_Utf32Char & theChar);

		/****************** Scale ******************/
		%feature("compactdefaultargs") Scale;
		%feature("autodoc", "* Returns scaling factor for current font size.
	:rtype: float") Scale;
		Standard_Real Scale ();

		/****************** SetCompositeCurveMode ******************/
		%feature("compactdefaultargs") SetCompositeCurveMode;
		%feature("autodoc", "* Setup glyph geometry construction mode. By default algorithm creates independent TopoDS_Edge for each original curve in the glyph (line segment or Bezie curve). Algorithm might optionally create composite BSpline curve for each contour which reduces memory footprint but limits curve class to C0. Notice that altering this flag clears currently accumulated cache!
	:param theToConcatenate:
	:type theToConcatenate: bool
	:rtype: None") SetCompositeCurveMode;
		void SetCompositeCurveMode (const Standard_Boolean theToConcatenate);

		/****************** SetWidthScaling ******************/
		%feature("compactdefaultargs") SetWidthScaling;
		%feature("autodoc", "* Setup glyph scaling along X-axis. By default glyphs are not scaled (scaling factor = 1.0)
	:param theScaleFactor:
	:type theScaleFactor: float
	:rtype: None") SetWidthScaling;
		void SetWidthScaling (const float theScaleFactor);

};



%extend Font_BRepFont {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/* harray1 classes */
/* harray2 classes */
/* hsequence classes */
