Delivery-date: Mon, 15 Jun 2026 10:12:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ2Qq-0064B1-25
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 10:12:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ2Qq-00036N-0N
	for lore@pengutronix.de; Mon, 15 Jun 2026 10:12:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jXrpET5qnC5jPEzWOJwe2zdw/f9j7tAmiZ29egcYO5o=; b=3AZBOkv0U/75TZDTXKORrYtgkl
	sqaoR1UUeqTlU/zeeqlupeWUal+AVcNm0V9cCy4m734q5zb71f7yoLMwhZr7+iGYzJ/hxk3aBp/f/
	Y19+ZSUbHXvZsV9HPBApEWfa5stg0NxPzbsBNHghKLuXbk99YNsWar0ObAHg31bCtCBysYxiUmt5+
	2UEVe4Qvb2JdDGFAM82jy8Rxq5dkHivAPdv2m3/W2dFFIk8pxAFGphoOy/w6cGU/Lnyt3jfpW5UDs
	TpcXJfWnV4kRxF+jm7mcUogHV5E4IOQHUJFOb1fZMt0ssg0iHRFna3pD0fIa37XKmPE8Tx+YMOfAy
	oxwkN4Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ2Pl-0000000DqIn-2YZD;
	Mon, 15 Jun 2026 08:11:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ2Pi-0000000DqIU-3z1k
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 08:11:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ2Ph-0002pO-71; Mon, 15 Jun 2026 10:11:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ2Ph-002pRO-0X;
	Mon, 15 Jun 2026 10:11:21 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ2Ph-0000000DHRI-0KwW;
	Mon, 15 Jun 2026 10:11:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260610153904.2862220-1-a.fatoum@barebox.org>
References: <20260610153904.2862220-1-a.fatoum@barebox.org>
Message-Id: <178151108107.3164439.15144025724401338849.b4-ty@pengutronix.de>
Date: Mon, 15 Jun 2026 10:11:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_011122_994045_45B7B0A9 
X-CRM114-Status: UNSURE (   7.76  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] ARM: deprecate use of ARCH=arm for arm64 builds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 10 Jun 2026 17:37:25 +0200, Ahmad Fatoum wrote:
> Linux has separate arch/arm and arch/arm64, where each is built by
> ARCH=arm and ARCH=arm64, respectively.
> 
> barebox has arch/arm for both, which leads to issues from time to time:
> 
>   - Ported kernel code may assume SRCARCH to differ between arm32
>     and arm64[1].
> 
> [...]

Applied, thanks!

[1/3] ARM: deprecate use of ARCH=arm for arm64 builds
      https://git.pengutronix.de/cgit/barebox/commit/?id=eacdb0c02567 (link may not be stable)
[2/3] Makefile: clang: fix triplet computation for ARM
      https://git.pengutronix.de/cgit/barebox/commit/?id=bbc6ca801f3c (link may not be stable)
[3/3] ARM64: suppress -mabi=lp64 when built with clang
      https://git.pengutronix.de/cgit/barebox/commit/?id=6cb61d165af1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



