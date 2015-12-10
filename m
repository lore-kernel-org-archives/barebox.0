Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a6yPu-0001Dx-9y
 for barebox@lists.infradead.org; Thu, 10 Dec 2015 10:25:44 +0000
Date: Thu, 10 Dec 2015 11:25:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151210102520.GH11966@pengutronix.de>
References: <1449565539-29374-1-git-send-email-s.hauer@pengutronix.de>
 <CAHQ1cqEiW3czDqrRWcSZ=3KWYe-yM=wCMJrF3JzgkXnADzRMRA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqEiW3czDqrRWcSZ=3KWYe-yM=wCMJrF3JzgkXnADzRMRA@mail.gmail.com>
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
Subject: Re: [RFC] iodevice support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Dec 09, 2015 at 10:24:37PM -0800, Andrey Smirnov wrote:
> On Tue, Dec 8, 2015 at 1:05 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > The following is something like a mixture of Linux IIO and hwmon support
> > for the poor. I called it iodevice, but better names are appreciated.
> > A iodevice has multiple channels, each providing a value like for
> > example a temperature or a voltage. For each iodevice we provide device
> > parameters to access the values from the commandline. The C API for a
> > consumer consists of iochannel_get() to get a iochannel, and
> > iochannel_get_value() to actually read a value.
> > As drivers we currently have a LM75 temperature driver and a MCP342x ADC
> > driver. Also there is a PT100 driver which itself is a consumer of
> > another iodevice, a MCP342x in my case. This is more meant as an example
> > since the voltage to temperature conversion function is board specific.
> 
> 
> One feature that I would like to suggest/request in this API is
> ability to give custom names to individual channels via DT. AFAIU, as
> of right now, that the names are hard coded and assigned automatically
> by the subsystem.
> 
> The reason why I am asking is because a fair number of use-cases for
> Barebox that I see is as a board verification tool and as such it is
> often used by people who may not be as familiar (if at all) with
> Barebox, it's code and how "in_value%d_%s" relates to the actual
> parameter reading they are trying to verify.

Note the device name is already configurable in device tree using
aliases, Adding an foo_temperature = &lm75 will result in the device
being named foo_temperature, so echo $foo_temperature.in_value0_mC will
give you the temperature. Ok, that alone doesn't solve the problem. We
still can only name devices and not individual channels.

I'm just thinking about registering a single device named 'sensors' or
similar and register all parameters under that device instead of their
individual devices.

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
