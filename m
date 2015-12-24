Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1aC2TJ-0004gF-5s
 for barebox@lists.infradead.org; Thu, 24 Dec 2015 09:46:10 +0000
Received: by mail-lb0-x233.google.com with SMTP id sv6so51390844lbb.0
 for <barebox@lists.infradead.org>; Thu, 24 Dec 2015 01:45:46 -0800 (PST)
Date: Thu, 24 Dec 2015 12:48:37 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20151224124837.0fcc6fce@berta>
In-Reply-To: <20151223170438.GA3791@omega>
References: <20151223191058.4ffb07f4@berta> <20151223163532.GA1068@omega>
 <20151223195644.73537fb9@berta> <20151223170438.GA3791@omega>
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
Subject: Re: [RFC] device probe order
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Wed, 23 Dec 2015 18:04:43 +0100
Alexander Aring <alex.aring@gmail.com> wrote:

> On Wed, Dec 23, 2015 at 07:56:44PM +0300, Peter Mamonov wrote:
> > On Wed, 23 Dec 2015 17:35:51 +0100
> > Alexander Aring <alex.aring@gmail.com> wrote:
> > 
> > > On Wed, Dec 23, 2015 at 07:10:58PM +0300, Peter Mamonov wrote:
> > > > Dear All,
> > > > 
> > > > I've ported an UHCI driver from the u-boot to the barebox
> > > > (WIP). To interoperate with the EHCI driver, the UHCI driver
> > > > should be probed ater the EHCI driver. Both drivers are binded
> > > > via the device tree mechanism. How can i achieve the correct
> > > > probe order?
> > > > 
> > > 
> > > Normally this should done by returning "-EPROBE_DEFER" inside the
> > > probe function. There was some RFC last years for supporting
> > > EPROBE_DEFER [0] and it seems these are mainline.
> > > 
> > > However you need some bool which indicates that the EHCI driver is
> > > probed.
> > 
> > Thanks, Alex. As i understand, this is the linux-way solution.
> > 
> > Sasha, is it ok to add a global variable to indicate the EHCI
> > presence? Or should we follow the way proposed by the mentioned
> > RFCs, i.e. introduce dependencies between drivers?
> > 
> 
> mhhh, maybe a simple "get_device_by_name" works here.
> 
> If returning NULL then return -EPROBE_DEFER. Don't know if this is a
> good solution, name need to be unique then.
> 
> 
> btw:
> Just found that "of_find_device_by_node" returns -EPROBE_DEFER when
> nothing was found. This was introduced by the patch series.

I like this approach better, than introducing a global variable.
Will look further into it.

> 
> Maybe it helps to look how the current use-cases deals with
> -EPROBE_DEFER or get_device_by_name is enough.
> 
> - Alex
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
