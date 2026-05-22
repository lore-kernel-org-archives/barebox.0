Delivery-date: Fri, 22 May 2026 12:35:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQNEQ-002ZVx-1u
	for lore@lore.pengutronix.de;
	Fri, 22 May 2026 12:35:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQNEQ-0006rQ-2P
	for lore@pengutronix.de; Fri, 22 May 2026 12:35:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pFH7v5Z5tFhefQhc+0JOm5IP8SksgO5Ip7FgOVPceoY=; b=gFNhTTI3UHXgueAQduk7tEVfTy
	zl7HMld4zySV4H2uQ5PwVkLmdNnp7zErAaXSo4eNIR0emfjnebFgbuHM6IOIdm/pBVvrBfBRs5bmM
	nGaQDWnupB2WV4jDW3FKaGUDNPTqeWN50R4ZhfGrtMcJKYsc8ic8bmU1GM3UUCdCLeZBW+KZyfdXw
	mqQG+PvYaz4HPaZenapUNF3iRiIFbuKgEvAT/y8n8hqYcohbZh8FAAZhJhSkFP61iF6UCSLgBAi2v
	I1IaM9kFnsjS16++GQT4AaQe9UR7aE35XcGDzxM/E4kkwA6QCyGxBCWvjo9Ywu/cndt8kpPiGg/vC
	Xc8NBdCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQND9-0000000AWh5-3U9S;
	Fri, 22 May 2026 10:34:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQND6-0000000AWgD-26A3
	for barebox@lists.infradead.org;
	Fri, 22 May 2026 10:34:34 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1wQND3-0006bR-7p; Fri, 22 May 2026 12:34:29 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Fri, 22 May 2026 12:34:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260522-input-include-bitmap-v1-1-fd23572c2d22@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIADMxEGoC/yXMywqDMBCF4VeRWTdghirqq0gXMRl1pI0hlyKI7
 27UzYFvcf4dAnmmAF2xg6c/B15thnwVoGdlJxJssgFLrMsKUbB1KebV32RIDBx/ygnTvBtdS0W
 tRMhX52nk7c72n8chDQvpeLXgOE6hDlmUeAAAAA==
X-Change-ID: 20260522-input-include-bitmap-d848c61ae912
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=809; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=K9b7CrRc4o/m7bIRcnLwgABWGon3udB1VJc1z221awY=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsgSMDRRYwlOZmucWrup+pTQlKv3clR9M7pyE+5tOHdca
 hdD9D//jlIWBjEuBlkxRZZYNTkFIWP/62aVdrEwc1iZQIYwcHEKwEReKjH8U99lsPbvzEeXHtkc
 kPzX9vDWpvVNCq/+9nprmu6+uqp7XQgjQ8dxyckHPnIcd3+3UYPrsypHtenDtDcNizuXXE27c8o
 2kx8A
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_033432_545290_DA396B39 
X-CRM114-Status: UNSURE (   6.58  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] input: Add missing include for DECLARE_BITMAP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The DECLARE_BITMAP macro is used in input/input.h. Add the missing
include on linux/bitmap.h where it is defined.

Fixes: 224a08df5d9e ("input: Add input core")
Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 include/input/input.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/input/input.h b/include/input/input.h
index 3e03eb9a65..3aab21fa1f 100644
--- a/include/input/input.h
+++ b/include/input/input.h
@@ -3,6 +3,7 @@
 #ifndef __INPUT_H
 #define __INPUT_H
 
+#include <linux/bitmap.h>
 #include <linux/types.h>
 #include <linux/list.h>
 #include <dt-bindings/input/linux-event-codes.h>

---
base-commit: f5956c772dc00837bad36fc66df8a53aae86558d
change-id: 20260522-input-include-bitmap-d848c61ae912

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



