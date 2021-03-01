Delivery-date: Mon, 01 Mar 2021 17:07:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGl4z-00050i-Tb
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 17:07:29 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGl4z-0002TA-36
	for lore@pengutronix.de; Mon, 01 Mar 2021 17:07:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8ip190Y/2M4YmtXRR3A6NJTIEidTA1CHY6W1Tcdvtg4=; b=0byvQF0FvRHuoOW3BIzsWrZa2
	dG6On5WW09UOKzXswQ3GSm6CBNSmQRKbrjKtoOH8vL4QphiihqMIGh1nDKg3VlxDzwR/bzaAHanDg
	Otj49BEKhF2ZrE5oyZy1BWiABS4gxsF/PTOkPIOh/u183zzvbB1ykpC4AqcUfTfz2jpa36c7lox/e
	CdoFnPDrXI1nkUUMumjNxqOn9RRzCC7+iq8l0Ff/MhX6lqWcqgv0ynjkz7QtcrGqE3ydX9+zHGSKZ
	PoIvNFHF15q9zcV//zWhoY9L8rIVGg7kvikMr3ZQnXzL6Qe4fRZ62A7NNzSAHnrhnYohzQrHJfIZd
	zPRw6VeQg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGl42-0008F6-25; Mon, 01 Mar 2021 16:06:30 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGl3y-0008E3-Mi
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 16:06:27 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 7892E1A5466
 for <barebox@lists.infradead.org>; Mon,  1 Mar 2021 16:06:25 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KLQRYDRS;
 Mon, 01 Mar 2021 16:06:25 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 4863F1A5463;
 Mon,  1 Mar 2021 16:06:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 18A9C27E0680;
 Mon,  1 Mar 2021 17:06:25 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id adbl35O9HcCB; Mon,  1 Mar 2021 17:06:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 877B327E069F;
 Mon,  1 Mar 2021 17:06:24 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 877B327E069F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1614614784;
 bh=lUI5YGscK8+Nd1wG3KP/RwnQvtdRdguyHuNUkJXdi+A=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=qtRxUi5VNG0qzHlcNd73nGU092DV8WNJ6JE1Uf133GNB+qSUswXxbVhA0qCMWVkCt
 wM4xy/Vg0CaRBcjdyUP8fnFxaDVXzSQOhQZUEWruMaWIGXvhNbZK7Tog6AqOpXCTcy
 lLu+e7R8b5hc3zpKV5k+9b8WZf1WtDaFxdekLcWI=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id DL1vey1s_ZVf; Mon,  1 Mar 2021 17:06:24 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 742C127E0680;
 Mon,  1 Mar 2021 17:06:24 +0100 (CET)
Date: Mon, 1 Mar 2021 17:06:23 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20210301160623.GB9273@tellis.lin.mbt.kalray.eu>
References: <20210215141843.27629-2-jmaselbas@kalray.eu>
 <20210301093040.1721-1-jmaselbas@kalray.eu>
 <20210301160331.GI5549@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210301160331.GI5549@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_110626_954686_0452A7B9 
X-CRM114-Status: GOOD (  18.25  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] fixup! usb: gadget: dfu: Wrap fs operation in
 workqueue
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 01, 2021 at 05:03:31PM +0100, Sascha Hauer wrote:
> On Mon, Mar 01, 2021 at 10:30:39AM +0100, Jules Maselbas wrote:
> > When not in mode "safe", do_close was never called.
> > 
> > Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> > ---
> >  drivers/usb/gadget/dfu.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> I have rewritten the commit messages while applying. fixup! is no longer
> possible because the patch is already in master.
Ok thanks, I wasn't sure to send this as fixup or not.
I'll take a look at master next time.

> Applied, thanks
> 
> Sascha
> 
> 
> > 
> > diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
> > index 82c9dc030..3234f25b3 100644
> > --- a/drivers/usb/gadget/dfu.c
> > +++ b/drivers/usb/gadget/dfu.c
> > @@ -359,7 +359,6 @@ static void dfu_do_copy(struct dfu_work *dw)
> >  	}
> >  
> >  	dfu->dfu_state = DFU_STATE_dfuIDLE;
> > -	dfu_do_close(dw);
> >  }
> >  
> >  static int
> > @@ -557,6 +556,11 @@ static int handle_manifest(struct usb_function *f, const struct usb_ctrlrequest
> >  		wq_queue_work(&dfu->wq, &dw->work);
> >  	}
> >  
> > +	dw = xzalloc(sizeof(*dw));
> > +	dw->dfu = dfu;
> > +	dw->task = dfu_do_close;
> > +	wq_queue_work(&dfu->wq, &dw->work);
> > +
> >  	return 0;
> >  }
> >  
> > -- 
> > 2.17.1
> > 
> > 
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

