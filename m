Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UyejS-0006ds-El
 for barebox@lists.infradead.org; Mon, 15 Jul 2013 09:06:11 +0000
Date: Mon, 15 Jul 2013 11:05:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130715090548.GR14452@pengutronix.de>
References: <1373693500-28123-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1373693500-28123-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] commands: spi: Fix spi read procedure
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sat, Jul 13, 2013 at 09:31:40AM +0400, Alexander Shiyan wrote:
> Buffer for RX is set incorrectly.
> 
> barebox@Phytec phyCORE-i.MX27:/  spi -r 128 -v
> device config
>     bus_num       = 0
>     max_speed_hz  = 1000000
>     chip_select   = 0
>     mode          = 0x0
>     bits_per_word = 8
> 
> wrote 0 bytes
> 00000000:
> read 128 bytes
> 00000000: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
> 00000010: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
> 00000020: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
> 00000030: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
> 00000040: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
> 00000050: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
> 00000060: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
> 00000070: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
> unable to handle paging request at address 0x4dffd3d0
> pc : [<a7f05ec4>]    lr : [<a7f05ebc>]
> sp : a7fff890  ip : a7fff860  fp : a7f68820
> r10: a6ffe9bc  r9 : 00000000  r8 : 00000001
> r7 : a6ffe9ec  r6 : a6f00000  r5 : a6ffe9ec  r4 : a6ffe9e4
> r3 : a6ffe9e4  r2 : a6ffe9e5  r1 : a6ffe9e4  r0 : 4dffd3cc
> Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
> ...
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

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
