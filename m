Delivery-date: Thu, 13 Mar 2025 12:48:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsh2r-00DYKq-2a
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 12:48:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsh2q-0005he-Li
	for lore@pengutronix.de; Thu, 13 Mar 2025 12:48:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SLjrYynlCEtqXl/6IcgbUQ3IiJAJAn6vsjcxerT4fac=; b=gMrj4kJKJAO1hThSFHGlja/ZWt
	wdk0e/GS03wOlHiNI1aael7mk5gFZxCw5vCO222a64THbwfFi77nltk4bDKiW57GNtFWU+rWbGhtY
	FT2NsB0eYrd+511bH530LFFuEsLl4RmzEiOTmbvE58XF0+rvtd1NylBa+EwX27edthH9M2qXQM5Nw
	IKJ98q8ULnZ6slovDdFFm7bBXBzud2gcOxrSLFJ3yTPoY20Tgia6RxzPGLu+v85XA8g729uGGf9oU
	AyxsBX6kseBs0GK3jqX5oL4SgsMbqfyb2N1KftJvtYEnhIEbOlufKkD4U2gjCqmQ2ZaBLtSV6nCqU
	DDENUBrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsh2M-0000000B6Jr-3zq8;
	Thu, 13 Mar 2025 11:47:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsgw2-0000000B4Ww-2MGA
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 11:41:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsgvz-0004O4-Q3; Thu, 13 Mar 2025 12:41:07 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsgvz-005WlV-1z;
	Thu, 13 Mar 2025 12:41:07 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsgvz-0050TS-1m;
	Thu, 13 Mar 2025 12:41:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250313063727.70946-1-a.fatoum@pengutronix.de>
References: <20250313063727.70946-1-a.fatoum@pengutronix.de>
Message-Id: <174186606754.1192064.15022203904023825634.b4-ty@pengutronix.de>
Date: Thu, 13 Mar 2025 12:41:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_044110_601440_3EE8C8D5 
X-CRM114-Status: UNSURE (   6.87  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] kbuild: export whether we are cross compiling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 13 Mar 2025 07:37:26 +0100, Ahmad Fatoum wrote:
> scripts/kconfig makes use of this variable to inform whether the local
> system's config should be used when no config exists.
> 
> Set it in barebox like Linux does.
> 
> 

Applied, thanks!

[1/2] kbuild: export whether we are cross compiling
      https://git.pengutronix.de/cgit/barebox/commit/?id=c42de0901bd7 (link may not be stable)
[2/2] kbuild: override host system KCONFIG_DEFCONFIG_LIST
      https://git.pengutronix.de/cgit/barebox/commit/?id=2b32c64a9f08 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



