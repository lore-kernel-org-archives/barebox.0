Delivery-date: Mon, 10 Nov 2025 09:39:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vINRA-00HJia-07
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 09:39:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vINR9-0007Qn-Gu
	for lore@pengutronix.de; Mon, 10 Nov 2025 09:39:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KdFUiDAO1WyhEdSKiAlO14ISI6zJWL3Toj/KhHKcjWo=; b=hGhbxITP+SqS/F39eauc16x5c9
	cl4AxtB/9XzzOL2oAWIabung3+/j2lobDcz/2wTvrdlhdONVhjR9Mf0PZm9Ydjmk1kurxm/GHAIa4
	5KAhcRRzhXis8PkgKlmtG7oroYClrelw4cSRJIMob8EEI/5SandbUjV4oMz7VevEnvrKGcS3945mf
	toB4oNwWpXdauxCalIJXmadvTZET70XgiL93aHkc/4FDqPO8ujbw+8RTR5jyRQf45Z2nRTxuynyH6
	TB0DqgBYZILW/ssi1g8EBSq6UrkrvSkmzLAwhEfivSbYNf8Eg9YvfkbrCwWRW00Eh+G1bSZdYv8YH
	kcy2cNuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vINQf-000000050BL-3uaf;
	Mon, 10 Nov 2025 08:39:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vINQd-000000050Ab-0M3i
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 08:39:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vINQa-0007My-V4; Mon, 10 Nov 2025 09:39:08 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vINQa-007zWb-05;
	Mon, 10 Nov 2025 09:39:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vINQa-00000004AMM-1iyU;
	Mon, 10 Nov 2025 09:39:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20251107210033.2229781-1-a.fatoum@barebox.org>
References: <20251107210033.2229781-1-a.fatoum@barebox.org>
Message-Id: <176276394796.993099.1132295391896216852.b4-ty@pengutronix.de>
Date: Mon, 10 Nov 2025 09:39:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_003911_131151_4DE01195 
X-CRM114-Status: UNSURE (   9.30  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] video: stm: make multi-image compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 07 Nov 2025 22:00:29 +0100, Ahmad Fatoum wrote:
> Unlike newer platforms, it's not possible to mix i.MX23 and i.MX28 SoC
> support in the same build. The stmfb driver is used on newer SoCs
> however like the i.MX6SX and i.MX8MQ/M/N, so remove the #ifdeffery in
> the driver.
> 
> While at it, we also drop unused macros as well as the unused dotclk_delay.
> 
> [...]

Applied, thanks!

[1/3] video: stm: make multi-image compatible
      https://git.pengutronix.de/cgit/barebox/commit/?id=c99b937f3a31 (link may not be stable)
[2/3] video: stm: allocate uncached framebuffer memory as write-combine
      https://git.pengutronix.de/cgit/barebox/commit/?id=cb4ab1e6ffc3 (link may not be stable)
[3/3] video: stm: add explicit support for i.MX6SX
      https://git.pengutronix.de/cgit/barebox/commit/?id=2ddbc8d9d15c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



