/*
 *  R : A Computer Language for Statistical Data Analysis
 *  File RVerRes.r
 *  Copyright (C) 2001  Stefano M. Iacus and the R core team
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 *
 *
 *
 *	Contains:	Resources used to add version info to the R project.
 *
 *	Written by: Stefano M. Iacus	
 *
 */

#include "SysTypes.r"
#include "Types.r"
#include "MacTypes.r"
#include "Menus.r"
#include "Controls.r"
#include "Dialogs.r"
#include "FileTypesAndCreators.r"
#include "Finder.r"


// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#define	R_ID					'0FFF'

#define	ftTextDocument			'TEXT'
#define	ftUnicodeTextDocument	'utxt'
#define fbRImage				'BINA'

#include "RVerDefs.h"

/* These are generate by GETVERSION 
#define kMajorVersNumber	0x01
#define kMinorVersNumber	0x40
#define kNonFinalRelease	0x01
#define kVersString			"1.4.0"
*/

#define kReleaseStage		Development

#define kRegionCode			verUS



resource 'vers' (1) {
	kMajorVersNumber,
	kMinorVersNumber,
	kReleaseStage,
	kNonFinalRelease,
	kRegionCode,
	kVersString,
	"\0xA9 1998-2002 The R Foundation,\n" kVersString ", port by Stefano M. Iacus"
};


resource 'vers' (2) {
	kMajorVersNumber,
	kMinorVersNumber,
	kReleaseStage,
	kNonFinalRelease,
	kRegionCode,
	kVersString,
	"R for MacOS " kVersString ", " kStatusString
};

#define		kDITLAboutR		137
#define		kRLogoPict		129


resource 'DITL' ( kDITLAboutR, "R about", purgeable )
{
	{
      /* The R Logo */
       { 10, 54, 77, 155 }, Picture { enabled, kRLogoPict },
	
		/*	The R copyright text */
		{ 13, 221, 92, 500 }, StaticText {enabled, 
		"R for MacOS and MacOS X\n"	/*	Version */
		"\0xA9 1998-2002 R Foundation\n"	/*	(c)  */
		"http://www.r-project.org\n"/*	HTTP URL */
		kVersString " - " kStatusString 
		 },
		 
		/* GNU License */
		{ 88, 8, 147, 475 }, StaticText {enabled, 
		"R is free software and comes with absolutely no warranty.\n"	
		"You are welcome to redistribute it under conditions which " 
		"may be found in the file named COPYING which accompanies "
		"this distribution."
		 },
		 
        /* Contributors */
		{150, 7, 188, 466 }, StaticText {enabled, 
		"R is a collaborative project with many contributors.\n"	
		"A list of contributors can be obtained by typing ?contributors within R."
		 },
	
	     /* Platfrom specific (c) */
		{199, 8, 216, 470 }, StaticText {enabled, 
		"Macintosh device by Wing K. Wan 1999, Stefano M. Iacus 2000-2002."	
		 },
		
		 /* Waste (c) */
		{222, 77, 241, 399 }, StaticText {enabled, 
		"Waste Text Engine \0xA9 1993-2000 Marco Piovanelli."	
		 },
		
		 /* Feedback */
		{249, 79, 271, 396 }, StaticText {enabled, 
		"Feedback is welcome at stefano.iacus@unimi.it"	
		 },
		
		 /* Click to close */
		{282, 112, 301, 351 }, StaticText {enabled, 
		"(click on the R logo to close window)"	
		 },
		
		
	}
};


resource 'open' ( 129, purgeable )
{
	R_ID,
	{
		//	file types R can open
		ftTextDocument,
		ftUnicodeTextDocument,
		fbRImage
	}
};


enum {
	kMenuApple		= 1,
	kMenuFile,
	kMenuEdit,
	kMenuTools,
	kMenuWindows,
	kMenuConfig,
	kMenuUser
};


resource 'MBAR' ( 128, purgeable )
{
	{
		kMenuApple,
		kMenuFile,
		kMenuEdit,
		kMenuTools,
	    kMenuWindows,
	    kMenuConfig
	}
} ;


