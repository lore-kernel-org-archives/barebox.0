Delivery-date: Fri, 11 Apr 2025 09:31:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u38rN-00B9nh-0c
	for lore@lore.pengutronix.de;
	Fri, 11 Apr 2025 09:31:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u38rM-0002tA-LT
	for lore@pengutronix.de; Fri, 11 Apr 2025 09:31:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bp1FaGUU8e0YMylYvFV9v2LV67FT62TzJJRdb/Hkg68=; b=Xso8751k6P+pB8tWKu5jJV1BNJ
	pEbkd4LGVvRN5gCLzB1+HXXr9XuxeMxCij+kY2PZ2S6NeIxjwkdfx04JbFVkzCMoBBBedd3ZDBMSk
	+t+aiekWIEiV40LH8yFyXRgaCgCHa9xjD4EQtHKorDwNXpsic/VfvF9oMyTpphWzGjrQ9R+vH8zWM
	X4nM9iilc60MgEzefU6HZ4guQE0dfEdAV1T5xbkcccihV9SNh0mddHkVIvgrwxXsY24l8PIuEm0pF
	hEZ7nUHwnjyepspKKmPYiF29spaYxVxr/D3RINSfpPf1oPkt1RkxlNw0L7GsoVgDKLTb0F+ItFaPI
	NkZsnzRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u38qK-0000000Cs3J-2Zei;
	Fri, 11 Apr 2025 07:30:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u38bL-0000000Cpjy-1nry
	for barebox@lists.infradead.org;
	Fri, 11 Apr 2025 07:15:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u38bK-0007NQ-3g; Fri, 11 Apr 2025 09:14:58 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u38bJ-004OaT-2s;
	Fri, 11 Apr 2025 09:14:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u38bJ-006OdF-2e;
	Fri, 11 Apr 2025 09:14:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250410130301.116356-1-a.fatoum@pengutronix.de>
References: <20250410130301.116356-1-a.fatoum@pengutronix.de>
Message-Id: <174435569782.1524598.2886242839052266378.b4-ty@pengutronix.de>
Date: Fri, 11 Apr 2025 09:14:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_001459_470542_A09BC4B7 
X-CRM114-Status: UNSURE (   7.98  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: stm32_sdmmc2: fix benign typo in dma_map_single
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 10 Apr 2025 15:03:02 +0200, Ahmad Fatoum wrote:
> struct mci_data::src and ::dest are members of the same union and thus
> can be used interchangeably, provided that the difference in type is
> accounted for.
> 
> Nevertheless, it makes code easier to reason about and saves needless
> casts to use the correct union member. Do that for the read case.
> 
> [...]

Applied, thanks!

[1/1] mci: stm32_sdmmc2: fix benign typo in dma_map_single
      https://git.pengutronix.de/cgit/barebox/commit/?id=3c0e5d6684a6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



