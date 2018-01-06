Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eXiux-0007qS-QG
 for barebox@lists.infradead.org; Sat, 06 Jan 2018 07:29:26 +0000
Date: Sat, 6 Jan 2018 08:29:03 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180106072903.GA9286@ravnborg.org>
References: <20180101213332.GA7937@ravnborg.org>
 <20180105111930.m6l7oklzjevsw7ly@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180105111930.m6l7oklzjevsw7ly@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha.

> > While working with this I get the impression that the core
> > should know about pwm channels and device_d pointer
> > should be part of the core data.
> 
> I know it's done like this in Linux. Any good reason to do this in
> barebox aswell besides of "do it as in Linux"?

The overall structure is something like this:

  PWM Controller       PWM Channel
  +------------+
  |            |     +------------+
  |  pwm_chip  |====>| pwm_device |+
  |            |     +------------+|
  +------------+      +------------+

And with the current core support each implementation
needs to provide their owm implementation of this.
And I can see the core has data I think belongs
on another level.

So having better core support should simplify the individual
implementations a bit - I think.

When I get pwm-atmel working I may try to give it a shot.
If things turns out positivie I will post patches.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
