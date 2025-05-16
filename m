Delivery-date: Fri, 16 May 2025 08:38:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uFoiO-0065vq-2p
	for lore@lore.pengutronix.de;
	Fri, 16 May 2025 08:38:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uFoiO-0003hF-Ce
	for lore@pengutronix.de; Fri, 16 May 2025 08:38:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mPrGVlz90FeaRGhDdjr6ur1pbQUscVvdS+k06zDahhE=; b=prK1hwrc4AoCTrl0K/Q8jC9qPE
	LqZtQbr7djcBvHZsJXtVwMX0f0RrdL9R+z/lu3mNSdageq1Ny62QepodKVbFPYT5wztA2OpecRlRX
	C/XG+Pva1dgqqIW9qG+C8DP1SrGpVR2NgrZg84/xF5oaG0HuKZf4/c50+oODdH28RrY5dEAmxR1x8
	uiISKIxVgv/Z3lq6ruds/wvWkbbHvxx/fA5AVnBHEFkr3MVfne2kafRHGmw7Gh9P3W6rXxhC4dOxL
	8cHS0P+UWJuhdshkv6tty20/cRLFYL/d+uEalFkrxFLKMWJk+sa6OndhJC6ac6ii3B8urLSfasa6Z
	YGj2jyhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFohd-00000002al8-2QcP;
	Fri, 16 May 2025 06:37:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFoha-00000002ak1-2VRq
	for barebox@lists.infradead.org;
	Fri, 16 May 2025 06:37:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uFohZ-0003QQ-17; Fri, 16 May 2025 08:37:49 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uFohY-002zrO-0S;
	Fri, 16 May 2025 08:37:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uFohY-009yWO-1f;
	Fri, 16 May 2025 08:37:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Rouven Czerwinski <rouven.czerwinski@linaro.org>
In-Reply-To: <20250513104521.4104574-1-rouven.czerwinski@linaro.org>
References: <20250513104521.4104574-1-rouven.czerwinski@linaro.org>
Message-Id: <174737746851.2377587.6543843664629425814.b4-ty@pengutronix.de>
Date: Fri, 16 May 2025 08:37:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250515_233750_638424_A556A396 
X-CRM114-Status: UNSURE (   6.90  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] virt: select COMMON_CLK & COMMON_CLK_OF_PROVIDER
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 13 May 2025 11:45:21 +0100, Rouven Czerwinski wrote:
> Otherwise the qemu invocation provided in the documentation leads to no
> output on the serial console, presumably because the serial driver can
> not calculate the timings. This was not noticed in the multi_v8_defconfig since
> any other platform selects both.
> 
> Tested by using multi_v8_defconfig and disabling every other platform
> except virt.
> 
> [...]

Applied, thanks!

[1/1] virt: select COMMON_CLK & COMMON_CLK_OF_PROVIDER
      https://git.pengutronix.de/cgit/barebox/commit/?id=acd25a14fd97 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



