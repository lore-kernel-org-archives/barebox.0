Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ju7oa-00063U-G8
 for barebox@lists.infradead.org; Sat, 11 Jul 2020 05:12:45 +0000
Date: Sat, 11 Jul 2020 07:12:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200711051242.GQ15485@pengutronix.de>
References: <20200707160124.3188793-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200707160124.3188793-1-enrico.scholz@sigma-chemnitz.de>
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
Subject: Re: [PATCH] net:fec: fixed unaligned access and stack corruption
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org

On Tue, Jul 07, 2020 at 06:01:24PM +0200, Enrico Scholz wrote:
> on 64 bit architectures, the 'enum fec_type' might not be aligned and
> large enough to hold a pointer.  When running barebox without MMU,
> this will crash like
> 
> | i.MX8MM unique ID: dab4b7491a2c4209
> | DABT (current EL) exception (ESR 0x96000061) at 0x00000000fffefeb4
> | elr: 00000000ffe14c28 lr : 00000000ffe196e0
> | x0 : 0000000000000002 x1 : 00000000fffefeb4
> | x2 : 00000000ffe91370 x3 : 00000000bfe1b6e8
> | x4 : 0000000000000000 x5 : 0000000011000000
> | ...
> | Call trace:
> | [<ffe14c28>] (dev_get_drvdata+0xc/0x30) from [<ffe1446c>] (device_probe+0x54/0xd0)
> | [<ffe1446c>] (device_probe+0x54/0xd0) from [<ffe14530>] (match+0x48/0x58)
> | [<ffe14530>] (match+0x48/0x58) from [<ffe14a64>] (register_driver+0xc0/0xd0)
> | [<ffe14a64>] (register_driver+0xc0/0xd0) from [<ffe01738>] (start_barebox+0x64/0x90)
> 
> Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> ---
>  drivers/net/fec_imx.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Until Ahmads suggestion is in place I applied this as a stop gap
solution.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
