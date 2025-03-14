Delivery-date: Fri, 14 Mar 2025 12:04:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt2q3-00DyP0-1f
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 12:04:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt2q2-00032E-3B
	for lore@pengutronix.de; Fri, 14 Mar 2025 12:04:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wPUdQI0FKzEV0vmL+5Inr/N+/YsVHEUW7oqKrHpFo/0=; b=a5rQjutG2bbIJBXAtyHEDE0gDY
	V1z9St/GtEovwYtBJxeUdZGcivHXtb3l+vXiO9ruRfdncTvXPWnOSunHzaw2BOkZy7nF5Au8++h0i
	xnpD2+a0TrvrFtyCSsiC3P9AlmpHCcNqTDl6jhYPMUF14zsq+JDop6MqCs2U/ku4QKgkzxuNOFxxE
	tZHFgwJYTWiMRylIPlKbzoQwrNGXXTLFs0A0b2kCiTnE7Bwvu1+Fxk8PIMNO5dLIGcLzRdgH93rn2
	vCrnAfAr7jVM2oU2WDGoRvMQM9xAFDJgZwVJb8h3rVV0SsIsEfHm2tzJ6rVlAImubZNe2yEq9+HdY
	TVRI6+Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt2pd-0000000DwAt-24Zh;
	Fri, 14 Mar 2025 11:04:01 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt2TL-0000000Dsoy-225z
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 10:41:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1741948850;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wPUdQI0FKzEV0vmL+5Inr/N+/YsVHEUW7oqKrHpFo/0=;
	b=MQazDMveMee6DmU4Y/yrj3Q/6dlh96KegIN2G5Nglcm8Lhf5SeWIyb6iOfbhpepZ5QcFZH
	CAwmiM3f7NweCdoKARdln/tDg4QyKegX7Jn3r1nUn0n/MMU1+wEwaht16AQgmE7k2LPYaf
	kZ1Oq44Cr5Xm7eAib2e9C2q98XMipWyWYW+WxVpUk8mVL7AilAVxks1l7Z3v7tgKUlpWNR
	B8YI1hX0/1m7OXF4AMgtho/yyRHIXWKHpDCpEkrSwyNGYhNeMABtnwrAIKQdai+u70rbad
	/RKfmkIfUP7Yy/bab02ch2NkJ9+qp+VfET91ImS1tD4a0hX4pb/IUzPCu6U0Ng==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:4866:44ad:6a94:b4e])
	by zdiv.net (OpenSMTPD) with ESMTPSA id e968aa42 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 14 Mar 2025 11:40:50 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Fri, 14 Mar 2025 11:40:33 +0100
Message-ID: <20250314104034.13637-6-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250314104034.13637-1-jmaselbas@zdiv.net>
References: <20250314104034.13637-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_034059_805469_99C8D1E4 
X-CRM114-Status: UNSURE (   7.06  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] pmdomain: ti-k3: remove trailing whitespace
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 drivers/pmdomain/ti/ti-k3.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/pmdomain/ti/ti-k3.c b/drivers/pmdomain/ti/ti-k3.c
index f53e907386..a2667a9847 100644
--- a/drivers/pmdomain/ti/ti-k3.c
+++ b/drivers/pmdomain/ti/ti-k3.c
@@ -321,14 +321,14 @@ static int ti_k3_pm_domain_on(struct generic_pm_domain *domain)
 	struct ti_k3_pm_domain *pd = to_ti_k3_pd(domain);
 
 	return ti_lpsc_transition(pd->lpsc, MDSTAT_STATE_ENABLE);
-}       
-        
+}
+
 static int ti_k3_pm_domain_off(struct generic_pm_domain *domain)
-{       
+{
 	struct ti_k3_pm_domain *pd = to_ti_k3_pd(domain);
 
 	return ti_lpsc_transition(pd->lpsc, MDSTAT_STATE_SWRSTDISABLE);
-}       
+}
 
 static struct ti_psc am625_psc[] = {
 	[0] = { .id = 0, .base = (void *)0x04000000 },
-- 
2.48.1



