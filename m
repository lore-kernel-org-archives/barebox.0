Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD41o-0001Dj-Tm
 for barebox@lists.infradead.org; Wed, 25 Sep 2019 09:56:10 +0000
Date: Wed, 25 Sep 2019 11:56:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190925095607.ezgsbrtf7heds2un@pengutronix.de>
References: <20190925014313.26876-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925014313.26876-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v3] net: dsa: mv88e6xxx: Wait for EEPROM done after HW
 reset
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org, Chris Healy <cphealy@gmail.com>

On Tue, Sep 24, 2019 at 06:43:13PM -0700, Andrey Smirnov wrote:
> Based on a unpublished patch from Andrew Lunn:
> 
>     When the switch is hardware reset, it reads the contents of the
>     EEPROM. This can contain instructions for programming values into
>     registers and to perform waits between such programming. Reading
>     the EEPROM can take longer than the 100ms
>     mv88e6xxx_hardware_reset() waits after deasserting the reset
>     GPIO. So poll the EEPROM done bit to ensure it is complete.
> 
>     Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> 
> orignal patch augmented to have necessary Global 1 plubming, ported to
> Barebox and slightly changed.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> ---

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
