Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RvV18-0003T7-Rq
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 14:30:35 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1328002599-7539-1-git-send-email-s.hauer@pengutronix.de>
 <1328136148-23307-1-git-send-email-robert.jarzmik@free.fr>
 <20120203095205.GF1990@pengutronix.de> <87mx903p09.fsf@free.fr>
 <87ehu54a8y.fsf@free.fr> <20120209081045.GU3852@pengutronix.de>
 <877gzw445i.fsf@free.fr> <20120209134431.GZ3852@pengutronix.de>
Date: Thu, 09 Feb 2012 15:30:25 +0100
In-Reply-To: <20120209134431.GZ3852@pengutronix.de> (Sascha Hauer's message of
 "Thu, 9 Feb 2012 14:44:31 +0100")
Message-ID: <8739ak3wqm.fsf@free.fr>
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

Sascha Hauer <s.hauer@pengutronix.de> writes:

> The intention was to put a struct pwm_chip into a struct pxa_pwm_chip
> and use container_of.

Ah ok, I understand now.
I will submit a V2 of my patch soon.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
