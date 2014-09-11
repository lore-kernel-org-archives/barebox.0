Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XRxSw-0001mW-Oy
 for barebox@lists.infradead.org; Thu, 11 Sep 2014 06:02:47 +0000
Date: Thu, 11 Sep 2014 08:02:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140911060223.GD4992@pengutronix.de>
References: <1410334946-12922-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1410334946-12922-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/9] MIPS: xburst: add JZ4780 SoC and MIPS Creator CI20
 board support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 10, 2014 at 11:42:17AM +0400, Antony Pavlov wrote:
> The MIPS Creator CI20 board is a high performance, fully featured
> Linux and Android development platform.
> 
> The Creator CI20 is supplied free of charge to certain approved projects
> under Imagination's ecosystem.
> 
> Please see http://store.imgtec.com/product/mips-creator-ci20/ for details.
> 
> Barebox CI20-related changes are available on github:
>   https://github.com/frantony/barebox/tree/next.ci20.20140910
> 
> 
> Antony Pavlov (9):
>   common.h: use special IOMEM() for MIPS
>   MIPS: dts: use physical addresses (as Linux does)
>   MIPS: xburst: add JZ4780 SoC support
>   MIPS: add (another) Ingenic vendor ID
>   MIPS: xburst: debug_ll: rework common code, add JZ4780 support
>   MIPS: dts: add jz4780.dtsi
>   MIPS: add MIPS Creator CI20 board support
>   MIPS: add img-ci20_defconfig
>   Documentation: add MIPS Creator CI20 board mini-howto

Applied all, thanks

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
