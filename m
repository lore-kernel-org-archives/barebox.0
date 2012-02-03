Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RtFoV-0001o5-Uj
 for barebox@lists.infradead.org; Fri, 03 Feb 2012 09:52:16 +0000
Date: Fri, 3 Feb 2012 10:52:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120203095205.GF1990@pengutronix.de>
References: <1328002599-7539-1-git-send-email-s.hauer@pengutronix.de>
 <1328136148-23307-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1328136148-23307-1-git-send-email-robert.jarzmik@free.fr>
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
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

Hi Robert,

On Wed, Feb 01, 2012 at 11:42:28PM +0100, Robert Jarzmik wrote:
> Add PXA embedded pulse width modulator support. The PWM can
> generate signals from 49.6kHz to 1.625MHz.
> The driver is for pxa2xx family. The pxa3xx was not handled yet.

Why not implement it as a regular driver? If we ever want to implement
a commandline control of the pwms via pwm0.dutyns=xx we'll need
a struct device.

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
