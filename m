Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bNOPg-0008Uk-Fu
 for barebox@lists.infradead.org; Wed, 13 Jul 2016 17:57:42 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Wed, 13 Jul 2016 17:57:10 +0000
Message-ID: <1468432716.30803.42.camel@rtred1test09.kymeta.local>
References: <1468395431.547554214@f355.i.mail.ru>
 <20160713130448.GC20657@pengutronix.de>
 <CAHQ1cqFe+TDgH1XTfk85h5Tkw0UHu_tZX9Ut7i2ghX4H0iTpWA@mail.gmail.com>
In-Reply-To: <CAHQ1cqFe+TDgH1XTfk85h5Tkw0UHu_tZX9Ut7i2ghX4H0iTpWA@mail.gmail.com>
Content-Language: en-US
Content-ID: <1E0B786352C2F149AAFFCB816B74A801@kymetacorp.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Patch "syscon: Decrease driver registration priority" breaks
 clps711x target
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, 2016-07-13 at 08:52 -0700, Andrey Smirnov wrote:
> On Wed, Jul 13, 2016 at 6:04 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Wed, Jul 13, 2016 at 10:37:11AM +0300, Alexander Shiyan wrote:
> >> Hello All.
> >>
> >> Patch "syscon: Decrease driver registration priority" breaks clps711x target.
> >> Previously, the syscon device initialized at "core_initcall", that did not cause problems.
> >> Now the device is initialized at "device_initcall" level, but clps711x uses syscon for
> >> the serial, so serial device initialized at "console_initcall" level.
> >> Any ideas?
> >
> > We could move syscon back to core_initcall level and in the syscon
> > driver use dev_get_resource() instead of request_iomem_region().
> 
> Right now the driver uses both, so if we just drop the call to
> request_iomem_region that was problematic for me on i.MX6, that should
> resolve the issue. I think this would also bring the behavior of
> syscon driver closer to what it does in Linux kernel land. The only
> negative effect of that change I think would be that on the platforms
> where syscon driver controls that region of memory, it no longer would
> be reported as such by "iomem".
> 

Syscon driver is a little strange in Linux since commit bdb0066.  The
driver no longer as an OF match and doesn't bind to syscon devices
listed in the device tree.  When something wants to use a syscon it
calls syscon_regmap_lookup_by_compatible(), which finds the OF node,
maps the registers, and puts it in a driver global list.  Anything that
maps the same syscon will get the same regmap that via the list.  But
the regmap is never associated with the syscon device!

So syscon doesn't use the driver/device model anymore.  It's more like a
global table of regmaps that are indexed using a OF node.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
