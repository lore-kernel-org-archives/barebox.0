Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YpbEz-0001F5-5L
 for barebox@lists.infradead.org; Tue, 05 May 2015 11:42:22 +0000
Date: Tue, 5 May 2015 13:41:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150505114156.GY6325@pengutronix.de>
References: <1430742565-18714-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1430742565-18714-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/5] MIPS: tplink-mr3020: initial PBL support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, May 04, 2015 at 03:29:20PM +0300, Antony Pavlov wrote:
> This patch series enables PBL for AR9331-based TP-Link MR3020 router.
> This makes it possible to implement full-grown bootloader for AR9331-based
> boards in the future.
> 
> AR9331 lowlevel initialization links:
> 
>   * https://github.com/pepe2k/u-boot_mod
>   * https://github.com/frantony/barebox/commits/20140507.ar933x.pbl.dirty
>   * https://wikidevi.com/wiki/TP-LINK_TL-MR3020#Notes_on_JTAG
>   * http://openocd.zylin.com/#/c/2519/
>   * http://geektimes.ru/post/245066/
>   * http://geektimes.ru/post/249184/
>   * http://openocd.zylin.com/#/c/2722/
> 
> Antony Pavlov (4):
>   MIPS: debug_ll_ns16550.h: drop _ns16550 suffix
>   MIPS: mach-ath79: debug_ll.h: add assembler routines
>   MIPS: tplink-mr3020: enable nmon
>   Documentation: mips: fix tplink-mr3020 instruction
> 
> Oleksij Rempel (1):
>   MIPS: tplink-mr3020: enable PBL and compression

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
