Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eXQ2I-0007Xn-O5
 for barebox@lists.infradead.org; Fri, 05 Jan 2018 11:19:44 +0000
Date: Fri, 5 Jan 2018 12:19:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180105111930.m6l7oklzjevsw7ly@pengutronix.de>
References: <20180101213332.GA7937@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180101213332.GA7937@ravnborg.org>
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
Subject: Re: [RFC PATCH] pwm: add pwm-atmel from Linux kernel 4.14
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jan 01, 2018 at 10:33:32PM +0100, Sam Ravnborg wrote:
> Following patch is more or less untested.
> 
> It is posted to get feedback if this is the right way to
> implement support for pwms in at91sam9263 & friends.
> 
> In the kernel there is also a file named pwm-atmel-tcb.
> I dunno which is the better starting point.

Looks good, but I don't know the hardware and can't say what
pwm-atmel-tcb is for.

> 
> The patch will recognize pwm0 on the at91sam9263ek board
> (if status = "okay") so it has seen minimal testing.
> But I have yet to utilize any of the pwm's.
> 
> While working with this I get the impression that the core
> should know about pwm channels and device_d pointer
> should be part of the core data.

I know it's done like this in Linux. Any good reason to do this in
barebox aswell besides of "do it as in Linux"?

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
