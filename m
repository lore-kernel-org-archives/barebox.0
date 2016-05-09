Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1azetM-0007Fp-JO
 for barebox@lists.infradead.org; Mon, 09 May 2016 06:42:09 +0000
Date: Mon, 9 May 2016 08:41:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160509064145.GR19714@pengutronix.de>
References: <1462368357-7525-1-git-send-email-s.christ@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1462368357-7525-1-git-send-email-s.christ@phytec.de>
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
Subject: Re: [PATCH v2] mci: imx-esdhc: implement reset quirks for i.MX6
 DualLite/Solo
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, May 04, 2016 at 03:25:57PM +0200, Stefan Christ wrote:
> First of all the reset values of MMC interfaces are differently between
> Quad and DualLite/Solo SoM.
> 
>                 Register VEND_SPEC2(0xC8)
>     Quad:       0x0
>     DualLite:   0x00000006
>     default:    0x00000006    (from i.MX6 Reference Manual)
> 
> Furthermore the ROM Code of Quad and DualLite uses the MMC interfaces
> differently when it loads the bootloader from that device:
> 
>                 Register DLL_CTRL(0x60)  Bit 25 FBCLK_SEL (0x48)
>     Quad:       0x0                      0
>     DualLite:   0x01000021               1
> 
> Since the linux kernel and barebox driver doesn't reset all registers,
> the MMC interface is in an inconsistent state, which leads to boot
> failures for some eMMC devices on the i.MX6 DualLite SoM. The errors
> look like:
> 
>     mmcblk3: error -110 sending stop command, original cmd response 0x900, card status 0x400900
>     mmcblk3: error -84 transferring data, sector 24578, nr 2, cmd response 0x900, card status 0x0
>     mmcblk3: retrying using single block read
>     mmcblk3: error -84 transferring data, sector 24578, nr 2, cmd response 0x900, card status 0x0
>     blk_update_request: I/O error, dev mmcblk3, sector 24578
> 
> It's sufficient to reset register DLL_CTRL and bit FBCLK_SEL. Register
> VEND_SPEC2 has no effect.
> 
> Signed-off-by: Stefan Christ <s.christ@phytec.de>

Nice fix. Applied, thanks

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
