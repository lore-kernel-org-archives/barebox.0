Delivery-date: Fri, 24 Mar 2023 09:40:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfcyL-00D2Hl-IS
	for lore@lore.pengutronix.de; Fri, 24 Mar 2023 09:40:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfcyL-0003ip-GV
	for lore@pengutronix.de; Fri, 24 Mar 2023 09:40:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tlggh/CJyFfBWC5jS8EpIMNmd0lWQX271BZvHPMViKQ=; b=xyy9F24JvIzeLeIjWMEuzvW/dD
	ggLoMWXKGF4FKx4YxFHP4U0SD2v4tH7WRX+keDXRLJ1SLo1tne/JhQAa1Pf+7XflQv/wgUanj78yG
	SSpDxDx+IWldwRIAN8suEerS5plY7w4cQ+AEeH+JCX7SSDTM7o4/XJzkrsq+0jrN5lySI2XXRJiTz
	liXwWuipeHZ4Y2S8hnlmq75CEDKFfWEaQgrBxii3UnEfd/rZFweUYgMRjhEF5omG561v7fBckt0p3
	lOoMHOTiWZvrCp1hJKbAAGWIGD8UfCtAoNDw64kjlE+N43Gnp5EyW/HyazogyaH+gjD8IRdKYn7ZB
	nqVUpssQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfcxE-003tV5-0P;
	Fri, 24 Mar 2023 08:39:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfcxA-003tTo-21
	for barebox@lists.infradead.org;
	Fri, 24 Mar 2023 08:39:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pfcx9-0003Wc-7A; Fri, 24 Mar 2023 09:39:15 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pfcx8-0004PV-Vx; Fri, 24 Mar 2023 09:39:14 +0100
Date: Fri, 24 Mar 2023 09:39:14 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230324083914.ligltmbzwlhhn3nj@pengutronix.de>
References: <20230323173016.4089191-1-m.felsch@pengutronix.de>
 <20230324083050.GA19113@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230324083050.GA19113@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_013916_661937_150F8AC3 
X-CRM114-Status: GOOD (  20.11  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: dwc3: gadget: lower informal user notifaction
 dequeue operation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-03-24, Sascha Hauer wrote:
> On Thu, Mar 23, 2023 at 06:30:16PM +0100, Marco Felsch wrote:
> > I encounted the below error message on the i.MX8MP if a fastboot gadget
> > was up and running and barebox does a reset() or boots the kernel:
> > 
> >   ERROR: dwc3 38100000.usb@38100000.of: request 00000000bfd91568 was not queued to ep1out
> > 
> > Printing an error message during usb_ep_dequeue() is more confusing than
> > helpful since the usb_ep_dequeue() could be called during unbind() like
> > it is done for fastboot. Lower the dev_err() message to dev_dbg() to
> > keep the message for developers.
> 
> I saw this message as well, but I deliberately kept it in. Motivated by
> this patch I had a look after it. The correct solution is to not dequeue
> requests in fastboot_unbind(). fastboot_disable() will already be called
> which calls usb_ep_disable() which will dequeue all outstanding
> requests.

Linux mainline did mention usb_ep_disbale() as well, I wasn't aware of
this function. This seems to be the correct fix, ableit linux maintainer
also says that this error is not critical and we shouldn't use dev_err()
for non critical messages.

> See the patch I just sent.

Thanks :)

Regards,
  Marco


> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


