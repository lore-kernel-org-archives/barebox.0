Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x243.google.com ([2607:f8b0:4001:c06::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b0WeT-0000qA-97
 for barebox@lists.infradead.org; Wed, 11 May 2016 16:06:22 +0000
Received: by mail-io0-x243.google.com with SMTP id i75so6123970ioa.2
 for <barebox@lists.infradead.org>; Wed, 11 May 2016 09:05:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1462368052-7344-1-git-send-email-s.christ@phytec.de>
References: <1462368052-7344-1-git-send-email-s.christ@phytec.de>
Date: Wed, 11 May 2016 13:05:58 -0300
Message-ID: <CAOMZO5Dsr4vn8LJwuD-NR11p0vDvADva7ySMBjpwF5jSmST7Rw@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
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
Subject: Re: [PATCH] mci: imx-esdhc: implement reset quirks for i.MX6
 DualLite/Solo
To: Stefan Christ <s.christ@phytec.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Stefan,

On Wed, May 4, 2016 at 10:20 AM, Stefan Christ <s.christ@phytec.de> wrote:
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

Do you plan to fix this in the kernel driver as well?

Thanks

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
