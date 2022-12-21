Delivery-date: Wed, 21 Dec 2022 12:39:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p7xRL-003iBF-IC
	for lore@lore.pengutronix.de; Wed, 21 Dec 2022 12:39:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p7xRJ-0004NX-Ht
	for lore@pengutronix.de; Wed, 21 Dec 2022 12:39:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NIlGv0Qdo7GIuTrRE4eKQNifkoG/P/+6OvGB1OYbHdc=; b=dHUaXmNWR0eYFNqbvpcnWSODZ3
	CJFn8q5TC9PWBBrOJti0ZoH4u8H33svZyE/UveJ/YtHYz+pxJHbKde6Eqv//mXjYYM+YtUrY1i8Uz
	d4PUBFZcdhF1DsyoSC87p26JPbJkeSGJs5D+TMKJnDiQ6ALWrgvbQfrG3olPXlqbLkjTyAOZdqioA
	5OkZ6spG2jOGA8qtdDV7TWV1hvDpK/T0JDLYoa+v45376iUGilly0iTjUPLKd7gxyYLwcR5BkS5NM
	ZHDNDh2hZ1/VU4IvvWrW7u0kmkrcUpNAgvP0NIsGXDubLSgdgQt4u4ao96kl0RkrUMAqGVeW4sv7g
	PuPRboQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7xPw-00EGTB-4L; Wed, 21 Dec 2022 11:37:48 +0000
Received: from mailrelay2-1.pub.mailoutpod2-cph3.one.com ([2a02:2350:5:401::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7xNo-00EFDM-64
	for barebox@lists.infradead.org; Wed, 21 Dec 2022 11:35:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=NIlGv0Qdo7GIuTrRE4eKQNifkoG/P/+6OvGB1OYbHdc=;
	b=xj/Hx7tFAsE3+uM5YZU1o46LmgSVhcUZF9rjvlUhpV1b0zgC2GrpsvDydl4nNB9BN0wyvM01+BNV1
	 06lzdI46Wg6wFdXvjIsXiF7UfEwFHNde3k6HSOEDM+81k4nA45QvtWMbIo6GilasAwS0KB+ynCSn3U
	 iAcNyctvrru+ahOLuQgK96G6zz2Zvy0LOhJbhtE+W2MGJEFjdgLCxNK4VuaIMqfcnKOdUwj8TfJ6Oo
	 CBpHNO6zq2gflj4+Dl8x+vgKqqxRNtQbF3wyIpG3uYSTmqcuprmY5jlQa+nfertge0UF6OAO2PwMcK
	 z5TBWM3FCiwcY7Rv2MReZY5EOk3b36w==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=NIlGv0Qdo7GIuTrRE4eKQNifkoG/P/+6OvGB1OYbHdc=;
	b=1ANCIBs52SFqWmsGaaTgDkH9pPEmlRisyxK30MQ71cN5p80duMu7g8MXxNLDYSHbvHHhuaKM5hBs5
	 qpKS1jaAQ==
X-HalOne-ID: 8dc19a8b-8123-11ed-bd20-93f0a866dfbb
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay2 (Halon) with ESMTPSA
	id 8dc19a8b-8123-11ed-bd20-93f0a866dfbb;
	Wed, 21 Dec 2022 11:35:24 +0000 (UTC)
Date: Wed, 21 Dec 2022 12:35:23 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y6Lve4LXnhvvlgp1@ravnborg.org>
References: <20221221102627.3059068-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221221102627.3059068-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_033537_657161_893B97EC 
X-CRM114-Status: GOOD (  11.78  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: dts: fix wrong display-timings native-mode
 binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Dec 21, 2022 at 11:26:27AM +0100, Ahmad Fatoum wrote:
> The value of the native-mode property is supposed to be a phandle to
> the entry in question, but instead the full node path was used because
> the <angle brackets> were missing. Fix this. This should not involve any
> functional change as the default mode would've been the first element,
> which is the same element the malformed native-mode was meant to point
> at anyway.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

	Sam


