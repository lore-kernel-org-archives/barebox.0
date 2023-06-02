Delivery-date: Fri, 02 Jun 2023 09:55:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4zdh-0071Ai-41
	for lore@lore.pengutronix.de; Fri, 02 Jun 2023 09:55:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4zde-0001qZ-NA
	for lore@pengutronix.de; Fri, 02 Jun 2023 09:55:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oE/wqViEFic0g6xMAAavG6RK+jsP+gRd7wta3KF5K1Y=; b=cpbGBN3ZsNWqll6qaWZflqH9bv
	rcvvjBiLcmyfmQppIH8g5zIRvxdywwJTG7dS1fZU0mZH6mqmApgBe1Hrofgch5BTc1rhYjNwbt3r1
	u5gUXifrQrD+D6Vf45kGKNYQ6D0JI50j3QFdViqThbL8mu/jDsJTlu/mhRtZdDQgH8XBkLmnhIHq1
	YuhayEaBqZ7M428ag0dCsO4/XoaEf4Q9OZvnEgDotNlGr3EbvfyghHK9x9BqwTNHFyhGABxjWGpd5
	+rxw62bURuk55yUsBtaT3AJPE/OhCTc83LRZz2Zs8ihAbJw+ghOGENfsoRKBLeP0gfj2HhLTV6Ttm
	7ynbKC9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4zca-0064zH-2t;
	Fri, 02 Jun 2023 07:54:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4zcY-0064yp-1e
	for barebox@lists.infradead.org;
	Fri, 02 Jun 2023 07:54:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4zcW-0001OP-DI; Fri, 02 Jun 2023 09:54:48 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4zcW-0002tt-3n; Fri, 02 Jun 2023 09:54:48 +0200
Date: Fri, 2 Jun 2023 09:54:48 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20230602075448.32loutzmci4a6s7z@pengutronix.de>
References: <20230601142506.1069998-1-m.felsch@pengutronix.de>
 <20230601143209.GN18491@pengutronix.de>
 <ZHjCvPyB21Y2AWw+@tellis.lin.mbt.kalray.eu>
 <20230601171315.4ck3kdwybpaiezmh@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230601171315.4ck3kdwybpaiezmh@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230602_005450_542511_6D684073 
X-CRM114-Status: GOOD (  12.98  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] gpiolib: fix gpio-hog functionality
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Jules,

On 23-06-01, Marco Felsch wrote:
> On 23-06-01, Jules Maselbas wrote:
> > This sounds easier than a sync of barebox gpio code with linux.
> 
> You don't need to sync the complete code, let me check if I can prepare
> a patch which adds the of_xlate support and is a bit more in sync with
> the kernel. If this is not possible I go with the partly revert.

please have a look on:

- https://lore.barebox.org/barebox/20230602074921.2687669-1-m.felsch@pengutronix.de/

I've added you to the cc as well. This is what I meant by having a
of_xlate implementation which is more like the kernel.

Regards,
  Marco


