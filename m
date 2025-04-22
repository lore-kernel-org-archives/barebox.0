Delivery-date: Tue, 22 Apr 2025 10:38:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7995-003yUe-0U
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:38:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7992-0001Jm-AT
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:38:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U1MrV5FDRlltvGBOyxtFHewwjupQdExumhrLmBqkeGA=; b=FiGrMU9qK9Vm7UKLI6rT8aZClL
	VSVUflQ6adVKzbWhPTTiU9encqJPrcjPksfktktiGPxIQGkPodvXvU0zz9BEyxEvLuCsZejq295tO
	4TS6qXkWxY5B3KEoF9aCiQWnHihU6XGdg5KzRisG8nRtxpOsfEh6HNDHkdZbkzUlQGGPf6MNlopeR
	m0/jnF5knsFZHSobo8DPDShk09O6Qybjhud6gsPvGDIzNthuEvNa727q2kpTcxKiXKr0Wy2uo7RRc
	RFzfU09hHYkrTo3bSZuyyNelIG1MWwmC1p/v7Pto2r6Fz7bkk0lRh/kkpVsPkSpXM6eNby6qqY5iD
	pgtbg9tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u798a-00000006M4Z-3wbO;
	Tue, 22 Apr 2025 08:37:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78TR-00000006C4S-2U9F
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:55:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78TQ-0000VN-GY
	for barebox@lists.infradead.org; Tue, 22 Apr 2025 09:55:20 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78TQ-001VvH-11
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:55:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78TQ-000uz2-0j
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:55:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Apr 2025 09:55:19 +0200
Message-Id: <20250422075519.219029-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250422075519.219029-1-a.fatoum@pengutronix.de>
References: <20250422075519.219029-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_005521_658619_E86F6699 
X-CRM114-Status: GOOD (  11.06  )
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
Subject: [PATCH master 4/4] memory: correct return value in request_barebox_region stub
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

request_barebox_region is only meaningful in barebox proper and its PBL
stub returns an error pointer currently. The proper implementation
returns a NULL pointer on error though, so follow suit in the stub.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/memory.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/memory.h b/include/memory.h
index 8c330e65c012..09c10b773fac 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -73,7 +73,7 @@ static inline struct resource *request_barebox_region(const char *name,
 					resource_size_t size)
 {
 
-		return ERR_PTR(-ENOSYS);
+		return NULL;
 }
 #endif
 
-- 
2.39.5



