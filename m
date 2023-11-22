Delivery-date: Wed, 22 Nov 2023 10:50:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5jsN-004BCp-2b
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 10:50:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5jsN-00047G-Qs
	for lore@pengutronix.de; Wed, 22 Nov 2023 10:50:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JKhH0cscUqfVkIuwBEFDgzu/ZCCsUGsInBmueyV/DYc=; b=4RplC4ggV+axq2t30uvjsdXh8c
	It3+FUQrQIlg9BOGK88wu/TPZ+6B6UXVPtu7uKb02cNhbBVUogqnGipCgFdD9WiAqIPWRleOwD1zN
	m92AfncHigNyk5DW0gamd4DDNdI5IWlqhaNVJhkDHZVcSSMG/tG3SdtSucum+4W+s/qxp0RF/LfXV
	wCPJb2m4XfYPNJd84+m8V3KwAQA6WZ/FinDuNpre/uC025jGMYQuaWQkbmfffNcOJrtI1hGaWXB75
	RBHnVWBj7UE1/nO0i9fKxoAB569fHWSyKrorl8HkwAkW7KB3jqNaZF85ln8NnQhWbnW9TFGuWc09Z
	7/O2Up4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5jr0-001LIl-1g;
	Wed, 22 Nov 2023 09:49:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5jqD-001KQZ-0b
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 09:48:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1r5jq9-0003KP-PG; Wed, 22 Nov 2023 10:48:13 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1r5jq9-00AmUX-DA; Wed, 22 Nov 2023 10:48:13 +0100
Received: from rhi by pty.whiteo.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1r5jq9-00HFSt-4J; Wed, 22 Nov 2023 10:48:13 +0100
Date: Wed, 22 Nov 2023 10:48:13 +0100
From: Roland Hieber <rhi@pengutronix.de>
To: Ulrich =?utf-8?Q?=C3=96lmann?= <u.oelmann@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231122094813.qlw2avhut44datru@pengutronix.de>
References: <20231121162009.160644-1-rhi@pengutronix.de>
 <6rzfz65pe4.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6rzfz65pe4.fsf@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_014817_244476_C0C14464 
X-CRM114-Status: GOOD (  19.98  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] Documentation: dt-bindings: leds: document 'default-on'
 trigger
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Nov 22, 2023 at 06:24:21AM +0100, Ulrich Ölmann wrote:
> Hi Roland,
> 
> On Tue, Nov 21 2023 at 17:20 +0100, Roland Hieber <rhi@pengutronix.de> wrote:
> > The default-on trigger has been supported in barebox since commit
> > 767c6b4a814a2a000f3b (2014-02-28, Sascha Hauer: "led: Add default-on
> > trigger").
> >
> > Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> > ---
> >  Documentation/devicetree/bindings/leds/common.rst | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/leds/common.rst b/Documentation/devicetree/bindings/leds/common.rst
> > index 09b4e401bc2c..ad94ceb506b1 100644
> > --- a/Documentation/devicetree/bindings/leds/common.rst
> > +++ b/Documentation/devicetree/bindings/leds/common.rst
> > @@ -9,6 +9,7 @@ Common leds properties
> >      * ``net`` - LED indicates network activity (tx and rx)
> >      * ``net-rx`` - LED indicates network activity (rx only)
> >      * ``net-tx`` - LED indicates network activity (tx only)
> > +    * ``default-on`` – LED is switched on by default
> 
> the lines before utilize the character '-' while in your new line a '–'
> is used. I think this should be consistent in one or the other
> direction.

Huh yes… these two characters you wrote look the same on my terminal,
but they are indeed different when I paste them somewhere else!

 - Roland

-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |


