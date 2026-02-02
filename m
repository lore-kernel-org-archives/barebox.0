Delivery-date: Mon, 02 Feb 2026 14:25:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vmtvd-0083k4-1i
	for lore@lore.pengutronix.de;
	Mon, 02 Feb 2026 14:25:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vmtvc-000802-Iz
	for lore@pengutronix.de; Mon, 02 Feb 2026 14:25:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=n9hke7kZxDv89AuSFcewERMaRMMFHZZIGoAiOw1Xv7U=; b=xEfyKRVQE+vKW979cfLP5WqKY9
	m8MwRu5eybdkD5d5eRJPpLbblIMAMR6XzbCrjSqbN0NgluTjJCp6pZlaiT1oILFO4rlxkSvSHaFXn
	PRwgs/lmA9pLBjXKrgB9RY6rAb0Iqx/7vh4i5K3wtZ1A/Di9tOLtkSjq3/D5tjd12lrCqXAgG/j39
	rC62t+Ip2m0M1M8W+ST3D4ZKAq5uekixOOXUvg08zg+CmqmdfiJArmqhk/aOQ6ZoYYxe/IkZSwZnV
	qPdiQRrR6HuSu5B8NPIBUjxJlr66wLEPgOrmvHmfZn+9BXYDEqgNLEpmvzVeasB49AWliZwAms4ZZ
	U9cQFLWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmtuv-000000050VL-11hi;
	Mon, 02 Feb 2026 13:24:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmtut-000000050UZ-0FwU
	for barebox@lists.infradead.org;
	Mon, 02 Feb 2026 13:24:36 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vmtup-0007tR-Nm; Mon, 02 Feb 2026 14:24:31 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>
Date: Mon,  2 Feb 2026 14:24:31 +0100
Message-ID: <20260202132431.185971-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_052435_095203_69A13463 
X-CRM114-Status: GOOD (  10.07  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] tee: drivers: rksecure: make ta_uuid static
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The ta_uuid should be only visible in the rksecure.c file. Otherwise,
other TEE drivers cannot use the ta_uuid name to store the UUID of the
TA they are trying to use.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/tee/optee/rksecure.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/tee/optee/rksecure.c b/drivers/tee/optee/rksecure.c
index 408547dab322..e16f5c088224 100644
--- a/drivers/tee/optee/rksecure.c
+++ b/drivers/tee/optee/rksecure.c
@@ -13,7 +13,7 @@
 #include "optee_private.h"
 #include "pta_rk_secure_boot.h"
 
-const uuid_t ta_uuid = PTA_RK_SECURE_BOOT_UUID;
+static const uuid_t ta_uuid = PTA_RK_SECURE_BOOT_UUID;
 
 static int optee_ctx_match(struct tee_ioctl_version_data *ver, const void *data)
 {
-- 
2.47.3



