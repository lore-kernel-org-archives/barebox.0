Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgOdp-0004PX-7Y
 for barebox@lists.infradead.org; Wed, 03 Jun 2020 08:20:54 +0000
Date: Wed, 3 Jun 2020 10:20:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200603082050.GW11869@pengutronix.de>
References: <20200529125122.8561-1-m.grzeschik@pengutronix.de>
 <81baec3b23d148e9085bb73b28c52dd1f9ba818f.camel@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <81baec3b23d148e9085bb73b28c52dd1f9ba818f.camel@lynxeye.de>
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
Subject: Re: [PATCH] ARM: MXS: duckbill: set duart to serial0
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Fri, May 29, 2020 at 03:56:53PM +0200, Lucas Stach wrote:
> Am Freitag, den 29.05.2020, 14:51 +0200 schrieb Michael Grzeschik:
> > In the imx28.dtsi the serial0 is set to auart0 which is not the one
> > used on the duckbill. We set duart to serial0 so the console will be
> > properly set.
> 
> If the aliases are the same in the Barebox and Linux DTs there should
> be no need to override the alias numbering in the individual board DTs.
> 
> Is the Linux driver ignoring the alias, or what is the issue being
> fixed here?

There are two different UARTs on the i.MX23/28, the duart ends up as
ttyAMAx in the kernel, the auart as ttyAPPx. Both drivers honor the
alias in the device tree. The upstream dtsi has:

                serial0 = &auart0;
                serial1 = &auart1;
                serial2 = &auart2;
                serial3 = &auart3;
                serial4 = &auart4;

With this we can't assign an alias to the duart anymore, serial0 is
already used. We could add a serial5 alias, but then we would get
ttyAMA5 instead of the desired ttyAMA0.

barebox tries to get an alias for the duart to set the proper console=
string for it. Now Michael changes the serial0 alias from &auart0 to
&duart. With this barebox can assign the correct console= string. Would
Linux be started with this device tree, &auart0 would still end up with
ttyAPP0 because it's the first free one.

This looks awful, but works for now. We are open for better suggestions
;)

Regards,
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
