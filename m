Delivery-date: Wed, 11 Feb 2026 23:42:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqIuO-000gD0-0o
	for lore@lore.pengutronix.de;
	Wed, 11 Feb 2026 23:42:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqIuM-0005B3-S3
	for lore@pengutronix.de; Wed, 11 Feb 2026 23:42:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eU5Ot59YGU6Ie1MEi5SptfzfWVhbAnIsIjJxbqo1hhU=; b=a8MFfEF1iwd2bceZ9ZbOZgQiHO
	h8K14Rp0tKIA4COHjqT5ngYFh33dmTOKDGtSY7rPU13zCEr5himfilAfdtVU/tdd89Hy6tCJzNyGQ
	OxaL83jox99g1qkM1oziv05bj7x2UH9SV2v0YFLCYs2kHpGW/xObemHfqKg6CKplSpTyU5M7Hslux
	1Jxw9/K0RBybxswf5HqdINELzu0RtFXnMrGEvaCrrp8M9bwLNriS8v6SFIaFbbO5wjK2EJ9Y22J6D
	00nzxya91vttPeIEI4kebMV9yMuAgRjpIn7Vsdr7rnJQM6CHTEtX2Bc5BNhVXZkO2y84MytG7RxXZ
	nA/+1KzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqItl-000000018tQ-0PKQ;
	Wed, 11 Feb 2026 22:41:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqIte-000000018nk-2uHZ
	for barebox@lists.infradead.org;
	Wed, 11 Feb 2026 22:41:26 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vqItb-0004Xa-B4; Wed, 11 Feb 2026 23:41:19 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 11 Feb 2026 23:41:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260211-v2025-09-0-topic-optee-of-handling-v3-10-dd83358ae624@pengutronix.de>
References: <20260211-v2025-09-0-topic-optee-of-handling-v3-0-dd83358ae624@pengutronix.de>
In-Reply-To: <20260211-v2025-09-0-topic-optee-of-handling-v3-0-dd83358ae624@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_144122_807533_E20BAB6E 
X-CRM114-Status: UNSURE (   8.20  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 10/14] handoff-data: Add TEE_DT_OVL entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support to pass a TEE provided FDT overlay from pbl to barebox.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/pbl/handoff-data.h | 1 +
 pbl/handoff-data.c         | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/include/pbl/handoff-data.h b/include/pbl/handoff-data.h
index bfb1985b998c8de16d06314f3ff5d3b7753eac9b..81cb0880ad4a384d633a3983ea99d82df4f47d06 100644
--- a/include/pbl/handoff-data.h
+++ b/include/pbl/handoff-data.h
@@ -14,6 +14,7 @@ struct handoff_data {
 #define HANDOFF_DATA_EXTERNAL_DT	HANDOFF_DATA_BAREBOX(2)
 #define HANDOFF_DATA_ARM_MACHINE	HANDOFF_DATA_BAREBOX(3)
 #define HANDOFF_DATA_EFI		HANDOFF_DATA_BAREBOX(4)
+#define HANDOFF_DATA_TEE_DT_OVL		HANDOFF_DATA_BAREBOX(5)
 
 #define HANDOFF_DATA_BOARD(n)		(0x951726fb + (n))
 
diff --git a/pbl/handoff-data.c b/pbl/handoff-data.c
index 42e53f986bf14408f25cdf4434a5c284f8361401..9a24b82ef64a355b38bf436c03bece05cb1b77c5 100644
--- a/pbl/handoff-data.c
+++ b/pbl/handoff-data.c
@@ -189,6 +189,8 @@ static const char *handoff_data_entry_name(struct handoff_data_entry *hde)
 		return "handoff FDT (external)";
 	case HANDOFF_DATA_ARM_MACHINE:
 		return "ARM machine number";
+	case HANDOFF_DATA_TEE_DT_OVL:
+		return "handoff TEE FDTO";
 	default:
 		sprintf(name, "handoff %08x", hde->cookie);
 		return name;

-- 
2.47.3



