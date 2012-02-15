Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RxcwE-0000GL-BJ
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 11:22:23 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <877gzw445i.fsf@free.fr>
 <1329224294-31475-1-git-send-email-robert.jarzmik@free.fr>
 <20120215083202.GX3852@pengutronix.de>
Date: Wed, 15 Feb 2012 12:22:08 +0100
In-Reply-To: <20120215083202.GX3852@pengutronix.de> (Sascha Hauer's message of
 "Wed, 15 Feb 2012 09:32:02 +0100")
Message-ID: <87obt02vfj.fsf@free.fr>
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
>
> Nice to make the pwms accessible from the command line, but shouldn't
> this be in the core? From what I see all we have to do is to add
> duty_ns and period_ns to struct pwm_chip.
>

Ah yes, I didn't think about it :)
I will send V3, with duty_ns, period_ns and enable transfered to pwm core.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
