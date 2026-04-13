Delivery-date: Mon, 13 Apr 2026 10:13:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCCQI-00BeID-1J
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 10:13:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCCQH-0003Qu-Sr
	for lore@pengutronix.de; Mon, 13 Apr 2026 10:13:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T+68ZDfeee4FR+/GduIjtNjGNxrnaU9l6801OV8yhNU=; b=fsZt1LRqNzxlkxgBPKg6W1LV9r
	dkHyPPJVdcG/9JomOscMId2Knah4JTfKcwVmVIXZLD6UvC+3J11s4AflxJwIUxoGCHxCVPiaeXaIt
	2rEiZpI0qquo19V/7Vkqr+YA6xensphe3gB/0mEtTb3uP15/vanThL4ymIOuy6MefvKWU0XB8AVHk
	HfwD9OsB/5avMvCMZad9TTKplkQyv2ypn0RyF+pzGxwDhQM4Gat0jMcf84Bxk3DxqvXRJBlmrLrB3
	+/eqnO2oxf8/nOud18Moszdaa/9zSKpDHpzC/z2TUixHrPZKVO1FyQU1ek3nI56CFWJuqL9Cmz5tY
	0lMfKd8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCPx-0000000FF4n-0NQ4;
	Mon, 13 Apr 2026 08:13:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCPv-0000000FF3I-2KA1
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 08:13:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=T+68ZDfeee4FR+/GduIjtNjGNxrnaU9l6801OV8yhNU=; b=ZDzjM1eL8DxqR7RlBJNZJ/FuwS
	8bCwXTcQRGXb7/O7V9BgmsuPXIft2z7bEKjo85m053R5cEnsECJSFTqvkUr3EBYvKUh+svExFOONt
	/aTnM9jpytISAk8h0XKbKizfWpihvD+GdYPvtDhPB37ZARBnT9q4OmAlEJsZ8L/F8rF7vANbgsDl2
	J855F6IIYLDAOFtS8ERiTnhrdU3dLGJNzrzbnTrnFZmqkeC/iH6jImMWKeuBoqjqSIelrI0eWpZQN
	FBfFkHE/AtWvLpZoUDZPh2stdyUQYQER+pEVE32ozTchnDtfreNkyMeU//3WroT99/Y9FidI6u+Bq
	Ik9w6x0w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCPp-0000000GMtL-1ErS
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 08:13:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCCPo-0003KL-N3; Mon, 13 Apr 2026 10:13:04 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCCPo-0058eE-1h;
	Mon, 13 Apr 2026 10:13:04 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCCPo-0000000EiXT-1wLG;
	Mon, 13 Apr 2026 10:13:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260326090649.2824291-1-a.fatoum@pengutronix.de>
References: <20260326090649.2824291-1-a.fatoum@pengutronix.de>
Message-Id: <177606798445.3507770.8007389065350095690.b4-ty@pengutronix.de>
Date: Mon, 13 Apr 2026 10:13:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_091306_598347_4871C68A 
X-CRM114-Status: UNSURE (   5.13  )
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
Subject: Re: [PATCH] ARM: mmu: make ARM_MMU_PERMISSIONS depend on MMU
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 26 Mar 2026 10:06:48 +0100, Ahmad Fatoum wrote:
> Without a MMU, CONFIG_ARM_MMU_PERMISSIONS is a no-op, so reflect the
> dependency in the Kconfig. No functional change.
> 
> 

Applied, thanks!

[1/1] ARM: mmu: make ARM_MMU_PERMISSIONS depend on MMU
      https://git.pengutronix.de/cgit/barebox/commit/?id=3a4813c48d51 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



