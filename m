Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rv9Pk-00065B-Pq
 for barebox@lists.infradead.org; Wed, 08 Feb 2012 15:26:35 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1328002599-7539-1-git-send-email-s.hauer@pengutronix.de>
 <1328136148-23307-1-git-send-email-robert.jarzmik@free.fr>
 <20120203095205.GF1990@pengutronix.de> <87mx903p09.fsf@free.fr>
Date: Wed, 08 Feb 2012 16:26:21 +0100
In-Reply-To: <87mx903p09.fsf@free.fr> (Robert Jarzmik's message of "Fri, 03
 Feb 2012 16:39:18 +0100")
Message-ID: <87ehu54a8y.fsf@free.fr>
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
Subject: Re: [PATCH] drivers/pwm: add PXA pulse width modulator controller
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Robert Jarzmik <robert.jarzmik@free.fr> writes:

> Sascha Hauer <s.hauer@pengutronix.de> writes:
>
>> Hi Robert,
>>
>> Why not implement it as a regular driver? If we ever want to implement
>> a commandline control of the pwms via pwm0.dutyns=xx we'll need
>> a struct device.
>
> This is because in my own case, I need pwm to be registered before other devices
> are probed. The trouble (in my case) is that for drivers/video/pxa.c, I have the
> following call path :
>  - pxafb_probe()
>    -> pxafb_enable_controller()
>      -> pxafb_backlight_power()
>        -> mioa701_lcd_backlight()
>           => 	struct pwm_device *pwm0 = pwm_request("pxa_pwm0");
> 		pwm_enable(pwm0);
> 		pwm_config(pwm0, 2000 * 1024, 4000 * 1024);
>
> I'm a bit afraid that the pxafb driver will be probed first, before pwm_pxa, and
> therefore the backlight setting won't work. I haven't found a clean way to
> specify this dependency.

Sascha, ping ?

Do you have a way to specify the dependency, and do you want me to adapt the
driver ?

Cheers.

--
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
