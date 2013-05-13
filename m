Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ubnza-0007LK-Ru
 for barebox@lists.infradead.org; Mon, 13 May 2013 08:20:23 +0000
Date: Mon, 13 May 2013 10:20:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130513082001.GK32299@pengutronix.de>
References: <1368358553-22936-1-git-send-email-thomas.petazzoni@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1368358553-22936-1-git-send-email-thomas.petazzoni@free-electrons.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] arm: ensure the build doesn't fail when kwbimage lacks
 the binary blob
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org

On Sun, May 12, 2013 at 01:35:53PM +0200, Thomas Petazzoni wrote:
> mach-mvebu images for Armada 370 and Armada XP SoC require a DDR3
> training code which should be extracted from existing bootable images
> for the relevant board. When such binary blob has not been extracted,
> the build of the .kwb and .kwbuart images will fail. This is annoying
> as it makes the build of all Armada 370/XP defconfig fail, which can
> be a problem for automated builds.
> 
> This proposal makes the failure of kwbimage not a fatal failure for
> the build process, and shows a warning. The user therefore sees:
> 
> ====================================================================
>   KWB     barebox.kwb
> Didn't find the file 'plathome-openblocks-ax3-binary.0' in '/home/thomas/projets/barebox' which is mandatory to generate the image
> This file generally contains the DDR3 training code, and should be extracted from an existing bootable
> image for your board. See 'kwbimage -x' to extract it from an existing image.
> Could not create image
> WARNING: Couldn't create KWB image due to previous errors.
>   KWBUART barebox.kwbuart
> Didn't find the file 'plathome-openblocks-ax3-binary.0' in '/home/thomas/projets/barebox' which is mandatory to generate the image
> This file generally contains the DDR3 training code, and should be extracted from an existing bootable
> image for your board. See 'kwbimage -x' to extract it from an existing image.
> Could not create image
> WARNING Couldn't create KWB image due to previous errors.
> ====================================================================
> 
> The only drawback is that barebox-flash-image, which normally points
> to barebox.kwb, becomes a state symbolic link.
> 
> Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

Folded this into the original commit and fixed the typo along the way.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
