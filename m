Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RsVQu-0002Rq-4r
 for barebox@lists.infradead.org; Wed, 01 Feb 2012 08:20:50 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1328002599-7539-1-git-send-email-s.hauer@pengutronix.de>
Date: Wed, 01 Feb 2012 09:20:36 +0100
In-Reply-To: <1328002599-7539-1-git-send-email-s.hauer@pengutronix.de> (Sascha
 Hauer's message of "Tue, 31 Jan 2012 10:36:39 +0100")
Message-ID: <87wr873qy3.fsf@free.fr>
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
Subject: Re: [PATCH] Add pwm core support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> This patch adds framework support for PWM (pulse width modulation)
> devices.
> A new pwm can be registered from a hardware driver using
> pwmchip_add(). It can then be requested from a client driver using
> pwm_request(). A string is used as a unique identifier for the
> pwms. It should usually be initialized by the hardware drivers
> using dev_name(dev). The client API is the same as currently
> in the Linux Kernel.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>
> This patch is currently compile tested only due to the lack of
> client drivers.
You can add my :
Tested-by: Robert Jarzmik <robert.jarzmik@free.fr>

And I'll post the pxa pwm driver which I developped on top on that framework
today, with which I'm pretty sure your core works, because my screen backlight
ignites :)

Cheers.

--
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
