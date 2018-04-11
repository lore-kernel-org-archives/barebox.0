Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6BCu-0008WM-Js
 for barebox@lists.infradead.org; Wed, 11 Apr 2018 08:34:23 +0000
Date: Wed, 11 Apr 2018 10:34:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180411083408.lri4xpnpatno6qz6@pengutronix.de>
References: <20180326130915.8726-1-andrew.smirnov@gmail.com>
 <20180326130915.8726-4-andrew.smirnov@gmail.com>
 <20180403070427.terivivcpl2abuuf@pengutronix.de>
 <CAHQ1cqHR2vmy4HRFaCLQnVgn=YCG+YOfBgBj_uzw4mn66T1nvA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqHR2vmy4HRFaCLQnVgn=YCG+YOfBgBj_uzw4mn66T1nvA@mail.gmail.com>
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
Subject: Re: [PATCH 3/3] serial: Check result of console_unregister()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Andrey,

On Mon, Apr 09, 2018 at 09:00:52AM -0700, Andrey Smirnov wrote:
> On Tue, Apr 3, 2018 at 12:04 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Mon, Mar 26, 2018 at 06:09:15AM -0700, Andrey Smirnov wrote:
> >> In order to allow 'serdev' devices to prevent parent console device
> >> removal and correspondign memory deallocation add code to all serial
> >> driver to check result of console_unregister() and bail out early if
> >> it is unsuccessful.
> >>
> >> One example of a use-case for this would be a reset handler relying on
> >> a serdev device for transport. Without this patch underlying console
> >> device would be removed and de-allocated before reset handler is even
> >> run thus leading to unpredictable behaviour and crashes.
> >
> > Can't we make this sure at driver core level?
> 
> I need to be able to prevent serial driver's "remove" function from
> ever executing to prevent any de-initialization/memory freeing from
> happening. The simplest way to solve this in driver core that comes to
> my mind is implementing simple reference counting API that children
> could use to force driver core to bail out on removing parents if they
> are still in use. Does that sound like a reasonable idea?
> 
> > So if a device decides not
> > to return -EBUSY in the remove callback then the parent devices won't be
> > removed?
> 
> Remove callback currently returns void, we could change it to return
> int and use it to implement a sort of implicit refcounting, but doing
> so would result in quite a bit of code churn since all of the current
> drivers would have to be converted to return int in their .remove
> callbacks. Would you rather I do this or explicit refcounting?

Normally it helps looking at the Linux kernel to see how a problem is
solved there. Not so this time it seems. Linux distinguishes between
"remove" and "shutdown". "shutdown" is what we want during barebox
shutdown. I found a Linux driver that is similar to your situation: It
registers a restart_handler while being a i2c device itself. There seems
to be no way to prevent a device from being shutdown, it's only that the
i2c bus drivers simply do not implement it.

Where do we go from here? I think reference counting is a bit over the
top.

At the moment I would opt for a *very* simple solution: Let's drop the
call to console_unregister() and the freeing of resources entirely as
it gives us nothing. The only console driver I can see where removing
is valid is drivers/usb/gadget/u_serial.c and you won't use this for
restarting a SoC ;)

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
