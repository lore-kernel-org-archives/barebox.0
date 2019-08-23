Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13sJ-0004ZL-Mc
 for barebox@lists.infradead.org; Fri, 23 Aug 2019 07:20:45 +0000
Date: Fri, 23 Aug 2019 09:20:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190823072040.eoaoz24weqdskqs4@pengutronix.de>
References: <20190822055114.931-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822055114.931-1-ahmad@a3f.at>
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
Subject: Re: [PATCH 00/11] treewide: fix some ARCH=arm clang warnings
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, afa@pengutronix.de

On Thu, Aug 22, 2019 at 07:51:03AM +0200, Ahmad Fatoum wrote:
> I had tried to build imx_v7_defconfig with clang and ran into some
> warnings. This series fixes them. Building for arm32 is still not
> possible though, because clang explicitly doesn't support mixing C and
> inline assembly in naked functions. (In GCC it is undefined behavior,
> but happens to usually work for us).
> 
> Ahmad Fatoum (11):
>   linux/kbuild.h: sync with upstream
>   ratp: fix use of %hu for printing int
>   complete: remove unused variable
>   i2c-mux-pca954x: remove use of uninitialized variable
>   net: phy: mv88e6xxx: remove duplicate member in struct initializer
>   smc911x: fix inverted poll-for-ready
>   nvme: use 64 bit types for timeouts even on 32 bit systems
>   usb: gadget: fsl_udc: remove always-true null pointer checks
>   commands: mmc_extcsd: describe missing bit
>   gui: png_lode: fix freeing of uninitialized pointer
>   fs: fat: fix use of wrong enumeration type

Applied, thanks

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
