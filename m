Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBwzg-0003y5-3H
 for barebox@lists.infradead.org; Tue, 16 Feb 2021 09:50:09 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 592CC1A5094
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2021 09:50:06 +0000 (UTC)
Date: Tue, 16 Feb 2021 10:49:56 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20210216094956.GA12211@tellis.lin.mbt.kalray.eu>
References: <20210208163458.29143-2-jmaselbas@kalray.eu>
 <20210215141843.27629-1-jmaselbas@kalray.eu>
 <2e8c050e-b72d-5f29-c905-8c8e1bf5e303@grinn-global.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2e8c050e-b72d-5f29-c905-8c8e1bf5e303@grinn-global.com>
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
To: Bartosz Bilas <b.bilas@grinn-global.com>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

Hi Bartek,

On Tue, Feb 16, 2021 at 10:19:00AM +0100, Bartosz Bilas wrote:
> > @@ -209,7 +210,7 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
> >   	dfu->dnreq = usb_ep_alloc_request(c->cdev->gadget->ep0);
> >   	if (!dfu->dnreq) {
> > -		printf("usb_ep_alloc_request failed\n");
> > +		pr_err("dfu: usb_ep_alloc_request failed\n");
> 
> you have missed this one ^^^^^
> 
Thank you for catching this :]

Best


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
