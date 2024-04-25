Delivery-date: Thu, 25 Apr 2024 18:57:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s02Pz-00H3P4-2B
	for lore@lore.pengutronix.de;
	Thu, 25 Apr 2024 18:57:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s02Pz-0004r2-44
	for lore@pengutronix.de; Thu, 25 Apr 2024 18:57:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q04ho1pJqF7timH4p3OXJKKBCTgemD9tBtFRp2SZGqE=; b=A/pVz03MLJd+swkz78W4TzZczG
	0Vp5h2xrFBwG3R3NKHe+91nRKKQoI4buV5qe1pd8Dg6qKXETuy0DT/x5ZQuE1f2O/C7pL80Ebga52
	aIZL23ZR7yahaoB74fBHAJDTr28tHcY90GaiNQ+w+FdjZRyGi0Dpc0jYhPGBiG5d+jsHkIeJQJzB+
	7ivOAsDmd5+S9XY0yJMiNMYoUXErvtixbNtNNdII9ZOqeqVuOkYVa5l/GfxFuv0GBx9Ith92lOBoA
	QwZscXvrqb1x822pitivf7IvaAt3cAN9YMlTT3t++f7bqNfKTUXOG9i30BOfJz6e6etmO8E8fb3mo
	XBDacn7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s02PM-00000009TXf-0k3Z;
	Thu, 25 Apr 2024 16:57:16 +0000
Received: from mailrelay4-1.pub.mailoutpod2-cph3.one.com ([2a02:2350:5:403::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s02PD-00000009TNP-112u
	for barebox@lists.infradead.org;
	Thu, 25 Apr 2024 16:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa1;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=q04ho1pJqF7timH4p3OXJKKBCTgemD9tBtFRp2SZGqE=;
	b=GCEWogLS/7MbGni7V/qjN4yNda/m3e2oNbKAqCQeVPuVTxNQLpjSjoSYOKSve93diGDbUG3O35VJ5
	 gYRVkyLgK2wwG5+feu5nLwJhTdYn7WYUCeXoJcYo4kuHsj9vuIl1qI1+QWj0eSJbtkkL576tx/S8MT
	 +C0q9DnpBcOORdYslO7JEmj7fjB53QVrvNoCSJQPP3HMtvNWWyz7177D3QFPDuN2fvf4H9IELsh7z6
	 6mdDka+RLriUelK/OjeV3ZzjkklrFv86Xo0x2Z71eZvbuu8nwKfd2zWqbNeOGrFZ5MqUNQU3PypykQ
	 Ubi/FklqC/Qrtm3HntqWCIKxdsUnm6w==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed1;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=q04ho1pJqF7timH4p3OXJKKBCTgemD9tBtFRp2SZGqE=;
	b=0dVuLDtPs/Y+rD05h+XUB3XmeD+H1cnhp5xaY1VR8/woVH+3Cy6JfJfPeLYoCXzEQ8eFgancLaTqP
	 AcJdG5aDw==
X-HalOne-ID: cdf531de-0324-11ef-8b0d-7b52406f6656
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay4.pub.mailoutpod2-cph3.one.com (Halon) with ESMTPSA
	id cdf531de-0324-11ef-8b0d-7b52406f6656;
	Thu, 25 Apr 2024 16:56:49 +0000 (UTC)
Date: Thu, 25 Apr 2024 18:56:48 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>,
	Jan Weitzel <j.weitzel@phytec.de>,
	Vicente Bergas <vicencb@gmail.com>, Bo Shen <voice.shen@atmel.com>,
	Matthias Kaehlcke <matthias@kaehlcke.net>,
	Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20240425165648.GA999552@ravnborg.org>
References: <20240425115439.2269239-1-s.hauer@pengutronix.de>
 <20240425115439.2269239-11-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240425115439.2269239-11-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_095708_841475_E8780F0D 
X-CRM114-Status: GOOD (  12.34  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 10/15] ARM: remove non PBL Atmel boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha

On Thu, Apr 25, 2024 at 01:54:34PM +0200, Sascha Hauer wrote:
> Some Atmel AT91 boards still do not have PBL support which becomes
> mandatory soon. Remove these boards.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/Makefile                      |   3 -
>  arch/arm/boards/sama5d3xek/Makefile           |   6 -
>  .../defaultenv-sama5d3xek/bin/init_board      |  15 -
>  .../sama5d3xek/defaultenv-sama5d3xek/config   |  44 --
>  arch/arm/boards/sama5d3xek/hw_version.c       | 236 ---------
>  arch/arm/boards/sama5d3xek/hw_version.h       |  40 --
>  arch/arm/boards/sama5d3xek/init.c             | 475 ------------------
>  arch/arm/boards/sama5d3xek/lowlevel.c         |  23 -
>  arch/arm/boards/sama5d4_xplained/Makefile     |   4 -
I have patches that DT enable this board, and an attempt to
add PBL support (which did not succeed).

I did not touch the patches since last summer, so some rebasing is
required.
I will try to find time to give it a spin within the next days and
post the result.

	Sam


