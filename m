Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rxgfc-00075J-4d
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 15:21:29 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <877gzw445i.fsf@free.fr>
 <1329224294-31475-1-git-send-email-robert.jarzmik@free.fr>
 <20120215083202.GX3852@pengutronix.de>
Date: Wed, 15 Feb 2012 16:21:13 +0100
In-Reply-To: <20120215083202.GX3852@pengutronix.de> (Sascha Hauer's message of
 "Wed, 15 Feb 2012 09:32:02 +0100")
Message-ID: <87k43o2kd2.fsf@free.fr>
MIME-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH V2 1/2] drivers/pwm: add PXA pulse width modulator
 controller
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> Hi Robert,
> Nice to make the pwms accessible from the command line, but shouldn't
> this be in the core? From what I see all we have to do is to add
> duty_ns and period_ns to struct pwm_chip.

I thought it over twice.

If the set_duty_ns(), set_period_ns() and set_enable() are transfered to the
core, I'll have to link the device and pwm_chip :
 - expand pwmadd_chip() : should be expanded with the "struct device_d *dev"
parameter
 - provide a way to link *dev with *pwm_chip
   => either store device_d pointer into pwm_device structure, and go through the
   list of all PWMs at each set_X() calls
   => or use dev->priv (bad idea since the driver, ie. pxa_pwm wants to do that)

This way, calling set_X(struct device_d *dev, ...) will find pwm_chip pointer
from dev, and call the approriate pwm_config(), ...

So it's a bit more that adding duty_ns and period_ns to struct pwm_chip. Is this
what you want ?

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
