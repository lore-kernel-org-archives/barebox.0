Delivery-date: Tue, 28 Jun 2022 21:25:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6Gpq-000XtJ-CM
	for lore@lore.pengutronix.de; Tue, 28 Jun 2022 21:25:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6Gps-0001q7-KN
	for lore@pengutronix.de; Tue, 28 Jun 2022 21:25:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=USSHwtMALYJzwmeVlpl80NqWcRdfYw0UrNX1vciPNcE=; b=15AFTC2vlb8kAdn8TJ9CubHkHh
	d5+qUwsF/pk51X4SUB5uUktLt0T+AQPQycTHf1hxKugABdxxeCjUDlbEVAJBbH7OhNF39XXm1jVHj
	azMgPgChSN3fjJhQL0ohdUg+tDej7ZL/9YaKxxgDQWazUiy6jV1hNdtPIxr980YSQLoibDNcUiAHA
	3Vk/sR6/AzjFeqzavn/ceJIwEV/L1v3av+pi74X9J1P3YsKY3w6WcczRAp+qiuJ9YzjRukp//9PNh
	rMFRyFcvhydhSB/Pk48JmAPg9ScmH+qeX/+/4N6fIJ/N6H+2FjMiBkV3g6ZLmezzXRBB28RmWw/ui
	dLGeIj9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Gnz-007p9K-TF; Tue, 28 Jun 2022 19:23:24 +0000
Received: from mailrelay4-1.pub.mailoutpod1-cph3.one.com ([46.30.210.185])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Gnu-007p8K-5w
	for barebox@lists.infradead.org; Tue, 28 Jun 2022 19:23:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa1;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:to:from:
	 date:from;
	bh=USSHwtMALYJzwmeVlpl80NqWcRdfYw0UrNX1vciPNcE=;
	b=rbZQlRQWuX5DfJ0VocDZBVDAo6da3MqsAafCgzQRrdeSa7AItQm4ZxoepXGa21SUs2l4JmqPUGmF3
	 uNujlOZzOR7Me6X2lmhrCaxI8+Ye4WmMi2rBcHO+kiXUAtHIQpxMgBCK5vgBLaI83zGo7lYSACVikb
	 ZsRTka9Amxh5ZyvDCPfoXypd+WAEvi6l79ME9/TDUrSqQH2PwG6MkwSxoHF1Hes7EMmoBxjVBmkaGu
	 Vw5165meuk4rbvDIrG7odaOya2zklaeBpcK9FYV4fw7fmo/WULieixK3RGNami1UJtFaHNNbOQA5Rk
	 7+lNAN0BFqWb+IZPOd4B6E3Fa8Pbeag==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed1;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:to:from:
	 date:from;
	bh=USSHwtMALYJzwmeVlpl80NqWcRdfYw0UrNX1vciPNcE=;
	b=tzcFMsUOwTcWffT8Q2xWda89w7sLlLwcbWVKRGt5Cymia66Y1O3LpBZNjDqG4WwlQ/NBiGNRpb6JB
	 lKzH84zAw==
X-HalOne-Cookie: 363bd8130de03cfaf6d1963be0fd92f74263e5b0
X-HalOne-ID: bd345977-f717-11ec-8236-d0431ea8bb10
Received: from mailproxy2.cst.dirpod3-cph3.one.com (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
	by mailrelay4.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id bd345977-f717-11ec-8236-d0431ea8bb10;
	Tue, 28 Jun 2022 19:23:07 +0000 (UTC)
Date: Tue, 28 Jun 2022 21:23:05 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <YrtVGZ0M5Yde6rNd@ravnborg.org>
References: <20220515193807.354903-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220515193807.354903-1-sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_122319_818387_1E0849B2 
X-CRM114-Status: GOOD (  16.94  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFC PATCH v1 0/8] ARM: at91: Add pbl support to skov-arm9cpu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,
On Sun, May 15, 2022 at 09:37:59PM +0200, Sam Ravnborg wrote:
> The following is the current set of patches so far to support
> PBL for the skov-arm9cpu.
...
> This is an RFC - because the code does not yet work :-(
> It fails to mount the SD Card - for reasons I am yet to discover.
> 
> Most of the code is attempted to be generic so we can use it
> for other targets.

I noticed you posted an issue on at91bootstrap about the sdram driver
today where you wrote that you are looking into at91samxxx bootstrap.

I have something that works - and I can post an updated series tomorrow.
I was planning to get my drm driver functional again and update the
binding before posting v2 - so I had a complete barebox + linux kernel
solution. But as weather is good, there is less time for hacking.

Let me know if it is of any help to post something.
Knowing your speed you may already be far ahead of what I made :-)

	Sam


