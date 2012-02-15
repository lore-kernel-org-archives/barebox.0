Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RxaHY-0004gq-KU
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 08:32:10 +0000
Date: Wed, 15 Feb 2012 09:32:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120215083202.GX3852@pengutronix.de>
References: <877gzw445i.fsf@free.fr>
 <1329224294-31475-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1329224294-31475-1-git-send-email-robert.jarzmik@free.fr>
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
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

Hi Robert,

On Tue, Feb 14, 2012 at 01:58:13PM +0100, Robert Jarzmik wrote:
> Add PXA embedded pulse width modulator support. The PWM can
> generate signals from 49.6kHz to 1.625MHz.
> The driver is for pxa2xx family. The pxa3xx was not handled yet.
> 
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
> ---
>  arch/arm/mach-pxa/Makefile                |    1 +
>  arch/arm/mach-pxa/devices.c               |    5 +
>  arch/arm/mach-pxa/include/mach/clock.h    |    1 +
>  arch/arm/mach-pxa/include/mach/devices.h  |    2 +-
>  arch/arm/mach-pxa/include/mach/regs-pwm.h |   20 +++
>  arch/arm/mach-pxa/speed-pxa27x.c          |    5 +
>  drivers/pwm/Kconfig                       |    6 +
>  drivers/pwm/Makefile                      |    1 +
>  drivers/pwm/pxa_pwm.c                     |  219 +++++++++++++++++++++++++++++
>  9 files changed, 259 insertions(+), 1 deletions(-)
>  create mode 100644 arch/arm/mach-pxa/include/mach/regs-pwm.h
>  create mode 100644 drivers/pwm/pxa_pwm.c
> 
> +
> +static int __init pxa_pwm_register_vars(struct device_d *dev,
> +					struct pxa_pwm_chip *pxa_pwm)
> +{
> +	int ret;
> +
> +	ret = dev_add_param(dev, "duty_ns", set_duty_ns, NULL, 0);
> +	if (!ret)
> +		ret = dev_add_param(dev, "period_ns", set_period_ns, NULL, 0);
> +	if (!ret)
> +		ret = dev_add_param(dev, "enable", set_enable, NULL, 0);
> +	if (!ret)
> +		ret = dev_set_param(dev, "enable", 0);
> +	return ret;
> +}

Nice to make the pwms accessible from the command line, but shouldn't
this be in the core? From what I see all we have to do is to add
duty_ns and period_ns to struct pwm_chip.

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
