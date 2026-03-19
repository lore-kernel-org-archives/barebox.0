Delivery-date: Thu, 19 Mar 2026 15:20:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3EEl-002foj-0E
	for lore@lore.pengutronix.de;
	Thu, 19 Mar 2026 15:20:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3EEk-0005YD-Hr
	for lore@pengutronix.de; Thu, 19 Mar 2026 15:20:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LErO7iPSNryzy3Ep9ofsF3Pv57zELU4/aFR7j6ALSFk=; b=ofnpKRPYB27uuGoIPrwN4lV4+T
	lO1qIYzKn7ozkOb9lMz35ruC64yIPd/PHAJnBFt2JmxTT9PL+wvXWpaHhbVNH78jHtD7Rr5M/sTX6
	EAslemr9kcUTkYXzE12AsQJ8LBDcVVAIZxbO+ebYI/ArST9kh1WO8qg6vTvzu0UG3AsNMa27uBvQg
	XJl0AbUh94G1IUa0cojKzN3bQ7uTWl+yWB2y3pgOS6bFZLAMSeurs/HPAIzc802Kq9cTGxI0QGTYT
	KlPmQBpDsM8qQtOV5hwD5tUkZgi0N7v/TCokcM/PovMT56Dj1SjdLQMtDZe4TQSAFhitqSjIdURHI
	rLmG4cLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3EED-0000000Am35-0QsW;
	Thu, 19 Mar 2026 14:20:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3EE8-0000000Am0c-49eV
	for barebox@lists.infradead.org;
	Thu, 19 Mar 2026 14:20:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3EE4-0005Pf-Sy; Thu, 19 Mar 2026 15:19:52 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3EE4-0015gQ-0H;
	Thu, 19 Mar 2026 15:19:52 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3EE3-0000000GXgJ-40u9;
	Thu, 19 Mar 2026 15:19:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 19 Mar 2026 15:19:51 +0100
Message-ID: <20260319141951.3942710-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260316-compressed-firmware-v1-6-d9712142881e@pengutronix.de>
References: <20260316-compressed-firmware-v1-6-d9712142881e@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_071957_051711_B2BC03C7 
X-CRM114-Status: GOOD (  11.09  )
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
Subject: [PATCH] fixup! firmware: Add compressed firmware symbols for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

_fw_z_##name##_uncompressed_size is an absolute symbol, we must use its
address, not interpret as a memory location.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/firmware.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/firmware.h b/include/firmware.h
index 07651f1a93..6511d56b2e 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -127,7 +127,7 @@ int fwobj_uncompress(struct fwobj *fwobj, void *dest);
 	do {								\
 		extern char _fw_z_##name##_start[];			\
 		extern char _fw_z_##name##_end[];			\
-		extern unsigned long _fw_z_##name##_uncompressed_size;	\
+		extern char _fw_z_##name##_uncompressed_size[];		\
 		(fwobj)->data = _fw_z_##name##_start;			\
 		(fwobj)->size = _fw_z_##name##_end - _fw_z_##name##_start;\
 		(fwobj)->uncompressed_size =				\
-- 
2.47.3



