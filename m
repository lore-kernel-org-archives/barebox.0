Delivery-date: Mon, 01 Mar 2021 17:04:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGl2K-00050E-NF
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 17:04:44 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGl2J-00027I-UJ
	for lore@pengutronix.de; Mon, 01 Mar 2021 17:04:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PUQx7eEr3Wgmnk7wc4xwazWZ0/xVpWNw6IBI/P8vaV0=; b=XbB17ugy9h+sOe8A7vXFTozYg
	cO4zrKDxf3oGFEmZdDsboFIZJh4cuJrUGHhOthhyvAR9epniRK+YsDxuY54AxFX2lSuTy18v68eVY
	POPPFqt6z85aI12D5Cb55gJvIgTW/kFj8ZBJfOc2p+Jp1g71CGseP3Dn0q0rFjV7NWcaJIVa0PJfQ
	B86M/njMw78yIyvG4+BJzQTWQW3nOuqmAceZBrVj0pzSIleWeG5iSPuc60ypyzR+VlfftuQw7NhN7
	/c+Y0gFsyjlHvvcSFFOUrYAgd7xCfG0l+N3HijSXLS0CEkHFvd8OylOdwMEj4OZjnMP1x3ZTExKUH
	WbSbJ6wew==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGl1E-0007qt-Mf; Mon, 01 Mar 2021 16:03:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGl1B-0007q1-5a
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 16:03:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lGl19-0001ts-PH; Mon, 01 Mar 2021 17:03:31 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lGl19-00065J-G1; Mon, 01 Mar 2021 17:03:31 +0100
Date: Mon, 1 Mar 2021 17:03:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20210301160331.GI5549@pengutronix.de>
References: <20210215141843.27629-2-jmaselbas@kalray.eu>
 <20210301093040.1721-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210301093040.1721-1-jmaselbas@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 17:01:23 up 11 days, 19:25, 72 users,  load average: 0.69, 0.41, 0.26
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_110333_242094_EA6F4397 
X-CRM114-Status: GOOD (  17.40  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] fixup! usb: gadget: dfu: Wrap fs operation in
 workqueue
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 01, 2021 at 10:30:39AM +0100, Jules Maselbas wrote:
> When not in mode "safe", do_close was never called.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/usb/gadget/dfu.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

I have rewritten the commit messages while applying. fixup! is no longer
possible because the patch is already in master.

Applied, thanks

Sascha


> 
> diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
> index 82c9dc030..3234f25b3 100644
> --- a/drivers/usb/gadget/dfu.c
> +++ b/drivers/usb/gadget/dfu.c
> @@ -359,7 +359,6 @@ static void dfu_do_copy(struct dfu_work *dw)
>  	}
>  
>  	dfu->dfu_state = DFU_STATE_dfuIDLE;
> -	dfu_do_close(dw);
>  }
>  
>  static int
> @@ -557,6 +556,11 @@ static int handle_manifest(struct usb_function *f, const struct usb_ctrlrequest
>  		wq_queue_work(&dfu->wq, &dw->work);
>  	}
>  
> +	dw = xzalloc(sizeof(*dw));
> +	dw->dfu = dfu;
> +	dw->task = dfu_do_close;
> +	wq_queue_work(&dfu->wq, &dw->work);
> +
>  	return 0;
>  }
>  
> -- 
> 2.17.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

