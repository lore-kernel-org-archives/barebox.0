Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjOd1-0005Mm-8X
 for barebox@lists.infradead.org; Tue, 15 Jan 2019 13:19:40 +0000
Date: Tue, 15 Jan 2019 14:19:37 +0100
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190115131937.knddobplvqzlfboj@pengutronix.de>
References: <cover.cea99e013da63859278229c6e1566362a1800ff4.1547530950.git-series.r.czerwinski@pengutronix.de>
 <20190115110111.mkedj7f2gmvsp4va@pengutronix.de>
 <1547556692.4278.1.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1547556692.4278.1.camel@pengutronix.de>
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
Subject: Re: [PATCH v6 0/9] Raspberry Pi miniuart support
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jan 15, 2019 at 01:51:32PM +0100, Rouven Czerwinski wrote:
> Looks like RPI W is wired the same way as RPI3.
> I think for the RPI Zero W you'll need two additional lines:
> 
> #define BCM2835_MINIUART_BASE 0x20215040
> 
> and
> clkdev_add_physbase(clk, BCM2835_MINIUART_BASE, NULL);
> in rpi_console_clock_init.
> 
> These should enable the clkdev for the uart and should barebox allow to
> probe the miniuart on RPI Zero W.

Thanks, I'll try that!

> Don't forget to remove the uart_2ndstage=1, this line also switches
> PL011 and the miniuart.

Ahh, you're right, I hadn't thought about that! I tested the RPi 1 too
with that line in config.txt.

 - Roland

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
