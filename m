Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aG0wM-0005Nz-4M
 for barebox@lists.infradead.org; Mon, 04 Jan 2016 08:56:35 +0000
Date: Mon, 4 Jan 2016 09:56:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160104085611.GC13058@pengutronix.de>
References: <20151223191058.4ffb07f4@berta> <20151223163532.GA1068@omega>
 <20151223195644.73537fb9@berta> <20151223170438.GA3791@omega>
 <20151224124837.0fcc6fce@berta> <20151224164225.25665d7f@berta>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151224164225.25665d7f@berta>
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
Subject: Re: [RFC] device probe order
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Thu, Dec 24, 2015 at 04:42:25PM +0300, Peter Mamonov wrote:
> On Thu, 24 Dec 2015 12:48:37 +0300
> Peter Mamonov <pmamonov@gmail.com> wrote:
> 
> > On Wed, 23 Dec 2015 18:04:43 +0100
> > Alexander Aring <alex.aring@gmail.com> wrote:
> > 
> > > On Wed, Dec 23, 2015 at 07:56:44PM +0300, Peter Mamonov wrote:
> > > > On Wed, 23 Dec 2015 17:35:51 +0100
> > > > Alexander Aring <alex.aring@gmail.com> wrote:
> > > > 
> > > > > On Wed, Dec 23, 2015 at 07:10:58PM +0300, Peter Mamonov wrote:
> > > > > > Dear All,
> > > > > > 
> > > > > > I've ported an UHCI driver from the u-boot to the barebox
> > > > > > (WIP). To interoperate with the EHCI driver, the UHCI driver
> > > > > > should be probed ater the EHCI driver. Both drivers are binded
> > > > > > via the device tree mechanism. How can i achieve the correct
> > > > > > probe order?
> > > > > > 
> > > > > 
> > > > > Normally this should done by returning "-EPROBE_DEFER" inside
> > > > > the probe function. There was some RFC last years for supporting
> > > > > EPROBE_DEFER [0] and it seems these are mainline.
> > > > > 
> > > > > However you need some bool which indicates that the EHCI driver
> > > > > is probed.
> > > > 
> > > > Thanks, Alex. As i understand, this is the linux-way solution.
> > > > 
> > > > Sasha, is it ok to add a global variable to indicate the EHCI
> > > > presence? Or should we follow the way proposed by the mentioned
> > > > RFCs, i.e. introduce dependencies between drivers?
> > > > 
> > > 
> > > mhhh, maybe a simple "get_device_by_name" works here.
> > > 
> > > If returning NULL then return -EPROBE_DEFER. Don't know if this is a
> > > good solution, name need to be unique then.
> > > 
> > > 
> > > btw:
> > > Just found that "of_find_device_by_node" returns -EPROBE_DEFER when
> > > nothing was found. This was introduced by the patch series.
> > 
> > I like this approach better, than introducing a global variable.
> > Will look further into it.
> 
> Unfortunately of_find_device_by_node() returns a valid pointer to
> the device before the device probe function is called. I guess
> get_device_by_name() behaves in the same way.

This looks buggy. There should be a way to tell if a device has been
probed or not before working with the device returned by
of_find_device_by_node() or get_device_by_name(). The easiest way is
probably to check for dev->driver. This is not enough though to tell if
the device probe has failed, not yet executed, or deferred. Maybe we
could store the probe status of a device in struct device_d itself.

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
