Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x231.google.com ([2a00:1450:4010:c07::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aBmfy-0006t5-2Y
 for barebox@lists.infradead.org; Wed, 23 Dec 2015 16:54:10 +0000
Received: by mail-lf0-x231.google.com with SMTP id l133so149658936lfd.2
 for <barebox@lists.infradead.org>; Wed, 23 Dec 2015 08:53:49 -0800 (PST)
Date: Wed, 23 Dec 2015 19:56:44 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20151223195644.73537fb9@berta>
In-Reply-To: <20151223163532.GA1068@omega>
References: <20151223191058.4ffb07f4@berta>
	<20151223163532.GA1068@omega>
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
To: Alexander Aring <alex.aring@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On Wed, 23 Dec 2015 17:35:51 +0100
Alexander Aring <alex.aring@gmail.com> wrote:

> On Wed, Dec 23, 2015 at 07:10:58PM +0300, Peter Mamonov wrote:
> > Dear All,
> > 
> > I've ported an UHCI driver from the u-boot to the barebox (WIP). To
> > interoperate with the EHCI driver, the UHCI driver should be probed
> > ater the EHCI driver. Both drivers are binded via the device tree
> > mechanism. How can i achieve the correct probe order?
> > 
> 
> Normally this should done by returning "-EPROBE_DEFER" inside the
> probe function. There was some RFC last years for supporting
> EPROBE_DEFER [0] and it seems these are mainline.
> 
> However you need some bool which indicates that the EHCI driver is
> probed.

Thanks, Alex. As i understand, this is the linux-way solution.

Sasha, is it ok to add a global variable to indicate the EHCI presence?
Or should we follow the way proposed by the mentioned RFCs, i.e.
introduce dependencies between drivers?

> 
> int uhci_probe(foobar) {
> 
> if (!indicate_ehci_is_probed(foobar)
> 	return -EPROBE_DEFER;
> }
> 
> - Alex
> 
> [0]
> http://barebox.infradead.narkive.com/ZWIXXU0R/patch-v2-0-6-introduce-deferred-probing


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
