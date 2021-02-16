Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBx1S-0004LJ-LS
 for barebox@lists.infradead.org; Tue, 16 Feb 2021 09:51:59 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id A89431A50A2
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2021 09:51:57 +0000 (UTC)
Date: Tue, 16 Feb 2021 10:51:55 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20210216095155.GB12211@tellis.lin.mbt.kalray.eu>
References: <20210208163458.29143-2-jmaselbas@kalray.eu>
 <20210215141843.27629-1-jmaselbas@kalray.eu>
 <2e8c050e-b72d-5f29-c905-8c8e1bf5e303@grinn-global.com>
 <20210216092729.GW19583@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210216092729.GW19583@pengutronix.de>
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
Subject: Re: [PATCH v2 1/2] usb: gadget: dfu: Rework print messages
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, Bartosz Bilas <b.bilas@grinn-global.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Hi Sascha,

On Tue, Feb 16, 2021 at 10:27:29AM +0100, Sascha Hauer wrote:
> > > @@ -209,7 +210,7 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
> > >   	dfu->dnreq = usb_ep_alloc_request(c->cdev->gadget->ep0);
> > >   	if (!dfu->dnreq) {
> > > -		printf("usb_ep_alloc_request failed\n");
> > > +		pr_err("dfu: usb_ep_alloc_request failed\n");
> > 
> > you have missed this one ^^^^^
> 
> Fixed while applying, thanks
Thanks !


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
