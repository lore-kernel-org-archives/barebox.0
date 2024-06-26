Delivery-date: Wed, 26 Jun 2024 12:15:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sMPh1-00CWRi-1s
	for lore@lore.pengutronix.de;
	Wed, 26 Jun 2024 12:15:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sMPh0-0006Ov-SE
	for lore@pengutronix.de; Wed, 26 Jun 2024 12:15:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JH2ugEiGAOJRtLQOgrnjWPlKtswCqvxQEeYeNyx3jsc=; b=KFx/s0b/bKEy3DzefVPto0jG8i
	XdUz7OgaF+JnMEjuKnnhAgNRuGa7BKrFJGk5bybXfal974+lxXp1rv79aivAPN1CqWlvRDEmNYp5s
	P7qwEEHODMLTjD/6CnJK3EQw1eBCKI6m8tFS2hCm93Grz8VayhWxXg70dVEEj0asa+Hs2hyXjtxKc
	7fOKQam0lC4zCwDmnDnZ5hs38w31W47A4je6z2nDWfiCSoTdScnGMSGvk92jKJodcUWIm5gSti0pG
	U3vksTj4neRMLp+x0zTgctMnG6jWXwNi6DuhfzjXU89RCW8aG3m4BhZwVDPRi9lcX0Ct0jOFgWKc1
	CmNLZyLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMPgZ-00000006HCy-0gpj;
	Wed, 26 Jun 2024 10:15:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMPgU-00000006HBP-4BJT
	for barebox@lists.infradead.org;
	Wed, 26 Jun 2024 10:15:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1sMPgT-0006HT-Pg; Wed, 26 Jun 2024 12:15:25 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1sMPgT-0056ae-DB; Wed, 26 Jun 2024 12:15:25 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1sMPgT-00G40V-15;
	Wed, 26 Jun 2024 12:15:25 +0200
Date: Wed, 26 Jun 2024 12:15:25 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240626101525.lwy4oilxe4xz4ysj@pengutronix.de>
References: <20240613125818.30499-1-m.felsch@pengutronix.de>
 <20240613125818.30499-11-m.felsch@pengutronix.de>
 <ZnAXtIKclnIk_7Tk@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZnAXtIKclnIk_7Tk@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240626_031527_059149_8C800E13 
X-CRM114-Status: GOOD (  19.21  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 10/11] FIT: save filename during fit_open
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-06-17, Sascha Hauer wrote:
> On Thu, Jun 13, 2024 at 02:58:17PM +0200, Marco Felsch wrote:
> > This is in preparation of buffering fit_open() calls to not load the
> > same fit twice if it is still open.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  common/image-fit.c  | 4 ++++
> >  include/image-fit.h | 1 +
> >  2 files changed, 5 insertions(+)
> > 
> > diff --git a/common/image-fit.c b/common/image-fit.c
> > index e93946a0615e..c5c88ebe4c1e 100644
> > --- a/common/image-fit.c
> > +++ b/common/image-fit.c
> > @@ -951,6 +951,7 @@ struct fit_handle *fit_open(const char *filename, bool verbose,
> >  	}
> >  
> >  	handle->fit = handle->fit_alloc;
> > +	handle->filename = xstrdup(filename);
> >  
> >  	ret = fit_do_open(handle);
> >  	if (ret) {
> > @@ -966,6 +967,9 @@ void fit_close(struct fit_handle *handle)
> >  	if (handle->root)
> >  		of_delete_node(handle->root);
> >  
> > +	if (handle->filename)
> > +		free(handle->filename);
> 
> free() handles NULL pointers gracefully, no need to check.

Sure, I will change this.

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


