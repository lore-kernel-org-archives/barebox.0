Delivery-date: Tue, 12 Oct 2021 09:32:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maCGi-0001wJ-5d
	for lore@lore.pengutronix.de; Tue, 12 Oct 2021 09:32:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maBxs-0002JP-PB
	for lore@pengutronix.de; Tue, 12 Oct 2021 09:12:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sAiJ1lObOPZG41/qn9br20jvpJdDDy5UKzzHxBfkAZc=; b=jHu1eDPQZmPao9
	YCi2Z+O+wK2GwSPKnEJHu+yBqwHECrWvtMYzFZLN4PMA7SYfkmH+gmdP7o+8n28fMSjehZlBM93zD
	SdsK4NxintuCw20f3YgobvuPYjPI3JJkbrFjb2v9BBocfisVEr61Nhe7Ey/7mF/scGq+WNqbAVC9C
	kNy9o/97fT4keXY2sfZVyEc0za9fapGYRFHN9kbH4q9JuhpCs8Hi43aOrb0RgBL5roMyUOZIZohWr
	dT93R1/ywGmHiEZnJvaO0whZMZ0WfHeFq8AKCLkdZu8Cn3NOvv5qluYMoEEksY68Yfvn8HhhNOhpE
	wJs9aIqKtFnSzEsHbt8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maBwD-00Bk0u-DG; Tue, 12 Oct 2021 07:11:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maBw8-00Bjzu-1L
 for barebox@lists.infradead.org; Tue, 12 Oct 2021 07:10:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maBw4-0001s8-Qp; Tue, 12 Oct 2021 09:10:52 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maBw4-0007hY-1E; Tue, 12 Oct 2021 09:10:52 +0200
Date: Tue, 12 Oct 2021 09:10:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20211012071052.GF28453@pengutronix.de>
References: <20211011080346.37197-1-s.hauer@pengutronix.de>
 <20211011080346.37197-7-s.hauer@pengutronix.de>
 <CAMHeXxP4vbdaN84B3Vz5xFT=ioHy92CPn1BJT6Y6JpFg3Uj+Kw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxP4vbdaN84B3Vz5xFT=ioHy92CPn1BJT6Y6JpFg3Uj+Kw@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:59:56 up 236 days, 10:23, 124 users,  load average: 0.15, 0.24,
 0.31
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_001056_099611_B9F3543E 
X-CRM114-Status: GOOD (  19.23  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/9] usb: dwc3: Clarify error message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 11, 2021 at 10:43:55AM -0700, Trent Piepho wrote:
> On Mon, Oct 11, 2021 at 1:04 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >         case DWC3_GHWPARAMS0_MODE_GADGET:
> >                 if (IS_ENABLED(CONFIG_USB_DWC3_HOST)) {
> >                         dev_err(dev,
> > -                               "Controller does not support host mode.\n");
> > +                               "This barebox does not support DWC3 host mode.\n");
> 
> Aren't these messages backward?  The hardware is set to device mode,
> CONFIG_USB_DWC3_HOST means, "Support only host mode," so it should
> fail because Barebox does not support device mode.

Let's drop this patch. I misread the message as "We want to do device
mode, but only host mode is compiled in", but really it says "Controller
can only do device mode, but we have only host mode complied in". I
wasn't aware that there are DWC3 cores with only host or only device
mode supported.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

