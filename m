Delivery-date: Mon, 16 May 2022 17:15:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqcRD-00FhSN-Pj
	for lore@lore.pengutronix.de; Mon, 16 May 2022 17:15:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqcRC-00068I-B8
	for lore@pengutronix.de; Mon, 16 May 2022 17:15:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3mmvdW3uXjH3fv7QerR9o1g4ybJyE7jb2ICFKCNrpqE=; b=egSTav7yvT8OB7
	MFMFMcJVEJ88hKEyCmHlWVZBXFabqyE4/Yow4TFREVDbRGwdP+56l+yWZ7GnqMKe27FSL5KUDMXLM
	oitO4qUm53uG0u3owweGgGuEOr7zEDiMuzo8GcOyJ5TImRYA5D8zyQik89Oq023W9SiMG6jCQdyUf
	zhLIdcXOSt7PQNkM/Hv6mxN8CoX5FmlNk9l2VcXnzg0f9GmdSsBj7xNvnd6Z6eij6h1P23Etyam7q
	/SJhgqiL1mWK41qFL3xU/xlUiPH8up0v1UMBKMS3SUAqlq/TqBaIC1apKHSV2Hgw82nOFb+0Nf80A
	8zrMCikauP+umJKwzTsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqcPT-008Zdw-Sb; Mon, 16 May 2022 15:13:23 +0000
Received: from mailrelay3-1.pub.mailoutpod1-cph3.one.com ([46.30.210.184])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqcPM-008ZXq-5M
 for barebox@lists.infradead.org; Mon, 16 May 2022 15:13:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ravnborg.org; s=rsa1;
 h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
 from:date:from;
 bh=Jax6veprTaTq2zPqPffA8e30KDaYO2bSYXnrug82nMc=;
 b=DmaQH76pdCuBwsCBVVoU/pzzkX9nZD82Ej8zMsoKLp0uRvdl1eLkTGRgTJCtzT/AuYpdoqV4TwZ5+
 XXeYMk4tmP6FeYHSqIgVYWM+sNOtJsQVjI4moO1c2gjmlkVcYI3JjKPMUlIDLrJshwnvB4lWTb38to
 JEc4PWhp5FGyVpcYj28HK5ZFHB7eXPiRcEJmFPMLR3mhgSBR9mhR10ZEi59m6ri8g0eDQcpuIYMPgR
 1Dk3mUbhTabrrK0opT2hlkvQppIX19dL17anZuqRRkr+tNA/v3KWOBOGx7dC96kJ9q15TR/MrGlzL6
 zRH4dLVsu0HdX7j5KrUvBRKQrCScotw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=ravnborg.org; s=ed1;
 h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
 from:date:from;
 bh=Jax6veprTaTq2zPqPffA8e30KDaYO2bSYXnrug82nMc=;
 b=lTU9lUN7ljbOOUKXRefPddwak2y0JEvLtFGcKd+dLOsMS1i6usnDK310sW5g8nn9RRGtje2/w1Cl1
 8TlBgg0Cw==
X-HalOne-Cookie: 2092a9888cf2a39320537d315672f7bc675b7656
X-HalOne-ID: b1422963-d52a-11ec-be6f-d0431ea8bb03
Received: from mailproxy4.cst.dirpod3-cph3.one.com
 (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
 by mailrelay3.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
 id b1422963-d52a-11ec-be6f-d0431ea8bb03;
 Mon, 16 May 2022 15:13:08 +0000 (UTC)
Date: Mon, 16 May 2022 17:13:06 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <YoJqAhGGJ4Qfd7Cq@ravnborg.org>
References: <20220515193807.354903-1-sam@ravnborg.org>
 <20220515193807.354903-8-sam@ravnborg.org>
 <24dc9774-0a3e-b699-e933-1bbb4e3d65e7@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <24dc9774-0a3e-b699-e933-1bbb4e3d65e7@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_081317_792970_67FC8A0C 
X-CRM114-Status: GOOD (  16.88  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 7/8] ARM: at91: Add initialize function to sdramc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Mon, May 16, 2022 at 12:47:52PM +0200, Ahmad Fatoum wrote:
> Hello Sam,
> 
> On 15.05.22 21:38, Sam Ravnborg wrote:
> > +int at91sam9_sdramc_initialize(const struct at91sam9_sdramc_config *config,
> > +			       unsigned int sdram_address)
> > +{
> > +	unsigned int i;
> > +
> > +	/* Step#1 SDRAM feature must be in the configuration register */
> > +	sdramc_wr(config, AT91_SDRAMC_CR, config->cr);
> > +
> > +	/* Step#2 For mobile SDRAM, temperature-compensated self refresh(TCSR),... */
> > +
> > +	/* Step#3 The SDRAM memory type must be set in the Memory Device Register */
> > +	sdramc_wr(config, AT91_SDRAMC_MDR, config->mdr);
> > +
> > +	/* Step#4 The minimum pause of 200 us is provided to precede any single toggle */
> > +	for (i = 0; i < 1000; i++) ;
> 
> This and similar instances below must be replaced by proper delays.
> You can use early_udelay for this as you already initialize the PIT.
> 
> Did you test SDRAM worked with this setup? I assumed this to be at least
> one of the reasons current at91bootstrap fails to work with current compilers
> for the 9263. (Newer SoCs use a different DRAM controller and thus a different
> driver that doesn't use compile-time removable delay loops).

Thanks, I already looked at these with a question mark in my head but
then forgot about them - will fix.

And no - this is not yet tested, just ported from at91bootstrap.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

