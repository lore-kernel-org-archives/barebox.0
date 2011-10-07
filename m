Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RCHKa-0007rH-TI
	for barebox@lists.infradead.org; Fri, 07 Oct 2011 20:47:46 +0000
Message-ID: <4E8F6566.7020508@free-electrons.com>
Date: Fri, 07 Oct 2011 22:47:34 +0200
From: Gregory CLEMENT <gregory.clement@free-electrons.com>
MIME-Version: 1.0
References: <4E8D6133.8080604@free-electrons.com>
	<20111007131508.GD31404@pengutronix.de>
In-Reply-To: <20111007131508.GD31404@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On 10/07/2011 03:15 PM, Sascha Hauer wrote:
> Hi Gregory,
> 
Hi Sasha,

thanks to have taken some time to have a look on my series.

> On Thu, Oct 06, 2011 at 10:05:07AM +0200, Gregory CLEMENT wrote:
>> This patch set is a RFC about a backlight framework. The purpose of
>> this framework is mainly to allow to add easily a support for a
>> backlight with the possibility of setting brightness directly from the
>> barebox shell using the brightness parameter.
>>
>> An implementation is provided for i.MX23 by using the PWM. It was
>> tested on a custom i.MX23 base board.
> 
> Two things that bother me in this series.
> 
> First thing is that I wonder if it would be better to not
> register a seperate device for backlight. How about a call
> like this:
> 
> fb_register_backlight(const char *fb,
> 	void (*set_brightness)(int brightness, void *priv));
> 
> The core would only need a function to find the struct device_d
> by the corresponding "fbx" string. This way we could add the
> brightness variable to the framebuffer and not a seperate device,
> so fb0.brightness=50.
> 

I wasn't entirely convinced by having a driver with a single
function. I came to this by several iterations and it didn't lead me
in the best direction. That's why I called this series a RFC. I will
take in account your idea and propose a new version.

> The second thing is that the pwm you use for the mxs backlight
> is a generic pwm which not necessarily drives a backlight. We
> should have a generic pwm api for this. Otherwise we end up
> with different drivers for the same pwm.

As I didn't see any pwm framework or API I wasn't sure it was planned
or needed to have it in barebox. But I volunteer to work on it. So how
do you see it: as an API or as complete driver ?

Gregory

-- 
Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
