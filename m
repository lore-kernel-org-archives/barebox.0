Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RCAGf-0007nD-MU
	for barebox@lists.infradead.org; Fri, 07 Oct 2011 13:15:18 +0000
Date: Fri, 7 Oct 2011 15:15:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111007131508.GD31404@pengutronix.de>
References: <4E8D6133.8080604@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4E8D6133.8080604@free-electrons.com>
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
Subject: Re: [RFC/PATCH 0/2]  Backlight support
To: Gregory CLEMENT <gregory.clement@free-electrons.com>
Cc: barebox <barebox@lists.infradead.org>

Hi Gregory,

On Thu, Oct 06, 2011 at 10:05:07AM +0200, Gregory CLEMENT wrote:
> This patch set is a RFC about a backlight framework. The purpose of
> this framework is mainly to allow to add easily a support for a
> backlight with the possibility of setting brightness directly from the
> barebox shell using the brightness parameter.
> 
> An implementation is provided for i.MX23 by using the PWM. It was
> tested on a custom i.MX23 base board.

Two things that bother me in this series.

First thing is that I wonder if it would be better to not
register a seperate device for backlight. How about a call
like this:

fb_register_backlight(const char *fb,
	void (*set_brightness)(int brightness, void *priv));

The core would only need a function to find the struct device_d
by the corresponding "fbx" string. This way we could add the
brightness variable to the framebuffer and not a seperate device,
so fb0.brightness=50.

The second thing is that the pwm you use for the mxs backlight
is a generic pwm which not necessarily drives a backlight. We
should have a generic pwm api for this. Otherwise we end up
with different drivers for the same pwm.

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
