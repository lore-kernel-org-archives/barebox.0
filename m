Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCinT-0003of-Ub
 for barebox@lists.infradead.org; Mon, 31 Aug 2020 12:20:30 +0000
Message-ID: <3ba3448bda8b4832870af5f5305f85a65080de88.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Mon, 31 Aug 2020 14:20:21 +0200
In-Reply-To: <20200518070848.GP11869@pengutronix.de>
References: <20200513114636.811-1-l.stach@pengutronix.de>
 <20200518070848.GP11869@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: jlu@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mci: core: add device parameter for eMMC boot ack
To: Sascha Hauer <s.hauer@pengutronix.de>, Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 2020-05-18 at 09:08 +0200, Sascha Hauer wrote:
> There's only one correct setting for each board or SoC. Instead of
> letting the user choose between right and wrong, can't we add a hook
> to be called from the board/SoC code? A device tree property might be
> an option as well, something like barebox,enable-boot-ack.
> 
> There are also bits to change the bus width after power up which
> might need adjustments which would mean another parameter with the
> current approach.

If I remember the i.MX6 eMMC boot process correctly, there is no single
correct configuration, even for a fixed HW layout. The eFUSE and eMMC
EXT-CDS configuration just needs to match.

Instead of trying to handle all the corner cases correctly (which is
hard to test without permanently fusing HW), I'd prefer to just make it
straight-forward to set and inspect these values (via a command or
device parameters). Then these would be set once during board
manufacturing/bring-up.

After bring-up, the value in DT would be redundant configuration and
could lead to confusion if it conflicts with the FUSEs.

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
