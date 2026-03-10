Delivery-date: Tue, 10 Mar 2026 11:43:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzuYY-00A4GR-1E
	for lore@lore.pengutronix.de;
	Tue, 10 Mar 2026 11:43:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzuYY-0002Qd-OJ
	for lore@pengutronix.de; Tue, 10 Mar 2026 11:43:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kzrhDuDRGLrN52h3GwS9wILC0lGA9PswoL19C9scc1M=; b=MaLahCzfLRYmFagK2lXHPaMTRJ
	KeI+wQbK4KH9IUJSP2l2Xgga9B3GBsIxXtueEi9/y54F9Gg13ziAwbtl6fZOEs2AfYpjBJME797om
	ceBkKCxHR9+/EqpiX8Oz+lJsQ1RM9hXw/yTlZoVJXL9hz1P9SCQsWoAGE9B1/p6zi0GM23S1ORKyn
	ie1sDMf4xLelimrEg4pHK/n5f3h+YeVHPfc2UibGOfMkMlfS1fnVg7rHLGIq64iKt8WDkvsiJd0Cx
	Tw2me6CoxPK3T3lYvxIuCKiaVfEu9XNbXTCIZVR6h361RWKtGEOhaeLKAerKp+I2e5DyUDtWAk6Ch
	1D/xNMjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzuY5-00000009Dnq-30yW;
	Tue, 10 Mar 2026 10:42:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzuY2-00000009DnH-3NSA
	for barebox@lists.infradead.org;
	Tue, 10 Mar 2026 10:42:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzuY1-0002KW-5y; Tue, 10 Mar 2026 11:42:45 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzuXz-004gNm-20;
	Tue, 10 Mar 2026 11:42:44 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzuY0-00000005gAo-3iPg;
	Tue, 10 Mar 2026 11:42:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
In-Reply-To: <20260304-arm-setup-c-v2-0-d26af520ab03@pengutronix.de>
References: <20260304-arm-setup-c-v2-0-d26af520ab03@pengutronix.de>
Message-Id: <177313936487.1353553.4512161738352075896.b4-ty@pengutronix.de>
Date: Tue, 10 Mar 2026 11:42:44 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_034246_844079_FD5E9F24 
X-CRM114-Status: UNSURE (   7.09  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/2] ARM: Avoid to clear bss multiple times
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 04 Mar 2026 08:53:20 +0100, Sascha Hauer wrote:
> Currently we clear the bss everytime we call setup_c(). We can do better
> and clear it only once which makes for example alloc_pte() in the PBL
> MMU setup preserve its state and we can call mmu_early_enable() multiple
> times without harm.
> 
> 

Applied, thanks!

[1/2] ARM: setupc_32: remove relocation code from setup_c
      https://git.pengutronix.de/cgit/barebox/commit/?id=ccbeb0b5d78c (link may not be stable)
[2/2] ARM: setup_c: avoid clearing BSS twice
      https://git.pengutronix.de/cgit/barebox/commit/?id=e3a134753029 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



