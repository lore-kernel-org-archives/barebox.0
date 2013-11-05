Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdbB2-0000z3-2Y
 for barebox@lists.infradead.org; Tue, 05 Nov 2013 07:35:52 +0000
Date: Tue, 5 Nov 2013 08:35:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131105073529.GY24559@pengutronix.de>
References: <1383128571-8250-5-git-send-email-renaud.barbier@ge.com>
 <20131030113452.GG26639@ns203013.ovh.net>
 <20131031074833.GI24559@pengutronix.de> <5272B934.7080508@ge.com>
 <20131101115852.GL24559@pengutronix.de> <5273A50B.1010700@ge.com>
 <5273A65E.6090300@ge.com> <5273C2CE.3010602@ge.com>
 <20131101202859.GM24559@pengutronix.de> <5277E225.6030501@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5277E225.6030501@ge.com>
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
Subject: Re: [PATCH 4/5] ppc: DA923RC: add board support
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Mon, Nov 04, 2013 at 06:06:29PM +0000, Renaud Barbier wrote:
> On 01/11/2013 20:28, Sascha Hauer wrote:
> 
> >>
> >> I found a way to do it. This implies to:
> >> - register the i2c-imx driver at the postcore initcall level.
> >> - register the board i2c bus at the postcore initcall level
> >>   and perform the rest of the board initialization.
> >>
> >>
> >> The i2c-imx driver is shared between architectures. If you do not
> >> foresee any side-effects on the ARM architecture and this is acceptable
> >> to you, I would like to submit a patch including this solution.
> > 
> > Could you set the model to a superset of both possible boards initially,
> > something like DA923RC/GBX460? Then set the correct board type in a
> > late_initcall. The only thing affected is the printing of the board type
> > in the banner, right?
> 
> Indeed, in this particular example, the only thing affected is the
> printing of the board name.
> However, reading the I2C early is not just for the board name.
> We have other variants of the board coming that may require minor
> adjustment (for instance DDR timing tuning) or early configuration.

I assume the timing has to be adjusted before the DDR can be used,
right? If so, then you have no other choice but to use some early i2c
stuff. Make sure though that it is only used as little as possible.

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
