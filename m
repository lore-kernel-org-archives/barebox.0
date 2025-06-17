Delivery-date: Tue, 17 Jun 2025 11:02:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRSDI-008DRj-1Y
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 11:02:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRSDE-0001Uj-2D
	for lore@pengutronix.de; Tue, 17 Jun 2025 11:02:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u6A2X2oVy8PTKSv8IySy6twAsnjEjIpoopYpK0JPLO4=; b=UI1G2kgZEBxtwZt8hC7lW85nKF
	XXxxah0X2FeeksYOF7KEg3SzBD84F5y92RwKrvx4wwgJcXk3Zi0U38UhJwTFmtUovSgUQHxTeLW4H
	+J8/ZsI0MchxP50+wqvYJt23FbZPL0961kFo8Ii0AFSncmd8PC13o/+lT22sZSscUMaTq+Q1RM4zA
	56WfO2i+J5DbvNGhWtQsyYAS8xpo3G1TeFWbAzmXMRM9xmOV2a0Ln8JbpfMA6vFG/TcvxPulWrzZT
	UmmB2maPUbF5CEWuwl6WSGQjCK3226N/0rabVFNUFwVu+HXtXBoJhUUmFhpMFJtpeAqOsslIEeqrj
	tEjocZrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRSCU-00000006gBA-1n9T;
	Tue, 17 Jun 2025 09:01:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRSCP-00000006g7C-2U9X
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 09:01:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRSCO-0008To-GS; Tue, 17 Jun 2025 11:01:44 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRSCO-003wfV-0z;
	Tue, 17 Jun 2025 11:01:44 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRSCO-00Cb9A-0d;
	Tue, 17 Jun 2025 11:01:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 17 Jun 2025 11:01:42 +0200
Message-Id: <20250617090142.3000882-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250617090142.3000882-1-s.hauer@pengutronix.de>
References: <20250617090142.3000882-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_020145_650115_B839129F 
X-CRM114-Status: UNSURE (   9.11  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] HACK: drop COPY_NAME_IDENTIFIER string length check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Clock names are only allowed to be 16 characters long. Drop the
assertion to check the string length because am62l has several clocks
with longer names.

Change-Id: I1356983e8314d9e9db11bcb7478cab633fa5802a
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/scmi-msg/common.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/scmi-msg/common.h b/drivers/scmi-msg/common.h
index 6b186d07d..65f0471fb 100644
--- a/drivers/scmi-msg/common.h
+++ b/drivers/scmi-msg/common.h
@@ -28,7 +28,6 @@
  */
 #define COPY_NAME_IDENTIFIER(_dst_array, _name)				\
 	do {								\
-		assert(strlen(_name) < sizeof(_dst_array));		\
 		strlcpy((_dst_array), (_name), sizeof(_dst_array));	\
 	} while (0)
 
-- 
2.39.5



