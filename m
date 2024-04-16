Delivery-date: Tue, 16 Apr 2024 12:27:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwg2G-003DPb-24
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 12:27:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwg2G-0006XE-3p
	for lore@pengutronix.de; Tue, 16 Apr 2024 12:27:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HL3xJXGCuLZ7e8RmxMqYks9gTRimBzFpCOj6d25YCJU=; b=ai24RgGJ4bqbiodSuKxNKVp4GT
	FW5zHM6s8+jBpgc8/wuZj68+BjtsH39MjVPWwm7u81WFxk35TDT5iCbiiuo6bhKoPDsu1n3Urfqyp
	KexIi5tT9NifmPMIu/Y03S7ag1CQatDwLqUazBs1x9TzLlTJyimCZOCUPjqpLq/c0u2uoswzWemh3
	tt7K/TSnjtL8KViFXu8SXzqHXbIPQftIBPv6AsXZ84rHtDJQMm90T6iRL+qtSv4XmE+xlI1+Zg8W9
	8dfonR4fmjg/MmzBadG/FvM+X/1wbhvE21Go5gvQkSRqp/SdDBNzQrFkWA2+6r+JzzDsnPvu5BfaU
	1y29OLAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwg1o-0000000Bm4I-24Bq;
	Tue, 16 Apr 2024 10:27:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwg1k-0000000Bm3W-1n1S
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 10:27:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwg1j-0005c8-4L; Tue, 16 Apr 2024 12:26:59 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwg1i-00CajI-ON; Tue, 16 Apr 2024 12:26:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwg1i-00Aa1s-2F;
	Tue, 16 Apr 2024 12:26:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240415053130.368278-1-a.fatoum@pengutronix.de>
References: <20240415053130.368278-1-a.fatoum@pengutronix.de>
Message-Id: <171326321869.2521703.1084622392792527241.b4-ty@pengutronix.de>
Date: Tue, 16 Apr 2024 12:26:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_032700_502704_3C09E3F1 
X-CRM114-Status: UNSURE (   8.13  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] soc: rockchip: io-domain: handle missing supply
 correctly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 15 Apr 2024 07:31:30 +0200, Ahmad Fatoum wrote:
> The original Linux code calls regulator_get_optional and handles its
> -ENODEV return code, which morphed into regulator_get when ported to
> barebox. The error handling stayed as-is leading to causing supplies to
> trigger errors instead of being silently ignored.
> 
> As we use NULL to describe the dummy regulator in barebox, we can add a
> trivial regulator_get_optional implementation and use it to fix the
> I/O domain driver.
> 
> [...]

Applied, thanks!

[1/1] soc: rockchip: io-domain: handle missing supply correctly
      https://git.pengutronix.de/cgit/barebox/commit/?id=284a876cee1f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



