Delivery-date: Tue, 23 Apr 2024 08:25:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rz9aZ-00CXH6-32
	for lore@lore.pengutronix.de;
	Tue, 23 Apr 2024 08:25:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rz9aZ-0003xf-DN
	for lore@pengutronix.de; Tue, 23 Apr 2024 08:25:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8wRRphvn80ysrrTTZOp3leEFzMmx528Labnoo9uNG9k=; b=wnvc3Lw467Zrnu2WeyAklJl1T0
	clluYpJGz+e2wDs8MuJgeMpa76PyZ/XjB2G2ndXYF/T3BMSj44iSyHtBof0ayDn57RbHLdpz12t8L
	HbYKkcoRLYE6ukk3avQcLuCe79/SFejturYMgTqzaP7fuy/OkQ2o4EXEC1biyzOVkHQ0SS2993DD5
	mFKqqn1HWrulQ4iGi9vUj8XVAIDtIsiedN2U1iZ0xgPQ47BvU18BY/f0u9j5HATAM2E77e4dsKlR8
	5xTBnsVrWESRPhB/TaZhbadywdfraFF/OUEsJnZV2r6Lbp+YLC5eqlUGxqm0GNikIOGU5AhZ+KAs0
	JmlpdPKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rz9a7-0000000G85y-3Gq9;
	Tue, 23 Apr 2024 06:24:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rz9a4-0000000G85S-0ih9
	for barebox@lists.infradead.org;
	Tue, 23 Apr 2024 06:24:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rz9a2-0003pI-Mp; Tue, 23 Apr 2024 08:24:38 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rz9a2-00DpOT-A6; Tue, 23 Apr 2024 08:24:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rz9a2-007AUg-0n;
	Tue, 23 Apr 2024 08:24:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240423060046.1513717-1-a.fatoum@pengutronix.de>
References: <20240423060046.1513717-1-a.fatoum@pengutronix.de>
Message-Id: <171385347823.1708593.5916455083103001502.b4-ty@pengutronix.de>
Date: Tue, 23 Apr 2024 08:24:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_232440_276220_6531638B 
X-CRM114-Status: UNSURE (   6.46  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ddr: imx: hide config prompt unless COMPILE_TEST
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 23 Apr 2024 08:00:46 +0200, Ahmad Fatoum wrote:
> The DDR drivers are called into by low-level code for DRAM init.
> The Kconfig options for them are selected by the SOC symbols, e.g.
> ARCH_IMX8M and there's no point in asking for user decision: either
> it's required and already selected or it will be unused and subject
> to linker garbage collection. Therefore, hide the prompts by default.
> 
> 
> [...]

Applied, thanks!

[1/1] ddr: imx: hide config prompt unless COMPILE_TEST
      https://git.pengutronix.de/cgit/barebox/commit/?id=8028c9f2d564 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



