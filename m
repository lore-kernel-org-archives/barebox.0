Delivery-date: Fri, 19 Jan 2024 17:43:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQrxd-007HWY-1e
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 17:43:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQrxe-0005Op-64
	for lore@pengutronix.de; Fri, 19 Jan 2024 17:43:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oDiqkA2cdnis5dusluYFhYuUICJV1zkHtQ+xvMWY3bU=; b=Cdrt7ECJJEBE+6VDhDPLOUH9ty
	FwSR5B6QQGT0+yGgM07O9j3eDoZFQce1hAtwm7h8UKmd1wP+fS0U+MJ6jo2Qyz2pVLyKmHoJSo7UF
	IvqabqIiyTVzvr4UfBOFb5ckDSrDsUwMC04sMzJWopO393p6NtCJyPLU+7pZcpCbVgFr3NKZYwpaM
	jnQ5KrTcjyOWToCspbQAtg2aetJ8iUGavt84dc/Tc2RlBPHISmUpvg0G0Yi8cXTQxPD7qncE6xwwm
	VaWSGFFFAnvwSqvY9Lz6jR+QZs3ZW+v2+8qinSmXTXt6Js0+mHUw8fTstM9hpSdCqmcPt4tWeVwCt
	450wanow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrwi-0069en-1v;
	Fri, 19 Jan 2024 16:42:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrwc-0069Zs-0Y
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 16:42:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrwb-0004yC-0L; Fri, 19 Jan 2024 17:42:13 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrwa-000xYX-JV; Fri, 19 Jan 2024 17:42:12 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-0054dX-1n;
	Fri, 19 Jan 2024 17:26:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Jan 2024 17:26:01 +0100
Message-Id: <20240119162610.1014870-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
References: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_084214_249992_915083A2 
X-CRM114-Status: UNSURE (   9.22  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 10/19] pmdomain: add stub definition for dev_pm_domain_detach
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Detaching a power domain frees the virtual device if any was allocated
and may power down the domain if no users remain.

We don't do reference counting for users and don't mind power domains
remaining enables as the kernel will enable unused power domains on its
own anyway. Thus implement dev_pm_domain_detach() as empty stub.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/pm_domain.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/pm_domain.h b/include/pm_domain.h
index f242a05b4934..118770023150 100644
--- a/include/pm_domain.h
+++ b/include/pm_domain.h
@@ -174,4 +174,10 @@ static inline struct device *dev_pm_domain_attach_by_name(struct device *dev,
 	return genpd_dev_pm_attach_by_name(dev, name);
 }
 
+static inline void dev_pm_domain_detach(struct device *dev, bool power_off)
+{
+	/* Just keep power domain enabled until dev_pm_domain_attach*
+	 * start doing reference counting
+	 */
+}
 #endif
-- 
2.39.2



