Delivery-date: Tue, 21 Oct 2025 13:03:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBA8z-00ADzs-0W
	for lore@lore.pengutronix.de;
	Tue, 21 Oct 2025 13:03:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBA8y-00013f-LH
	for lore@pengutronix.de; Tue, 21 Oct 2025 13:03:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SGfhoSIyAFEbj98KdZc2UFyNDUWEzb1mqXPJJKHLE/A=; b=PN+MZ6m97xrqpRKg3WBUmprkvu
	yykAzDvvmgxXB+8rTYYTNZ7kbm6to7aiUhlb4yaWjLgk+6AjSTu8r3hODiv9lnf+ZI53EgNt3hmuJ
	ZZPi38ASDW88L6Nq19zqQPeQZloBzucPbD5v0P1y7cNkzpqfdcelU+7ttvlIvOBDZ+Xj8JwNF6+zK
	lNtPlcbjNBU/Au3/0Do+km6y8Kkl9OpfW43qM/ZGWKkZO3/XpDuiy8jPdilYU6CgpM6v4d4AdDcc5
	0/JkJuA0cjkmjLgIWvVite/ztauc42c4MXiHA0KRuIJx/KzLMVeESrTq8VxnJABtAVv1YzpvF4+Qu
	h1jZ/xfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBA8b-0000000Gi7D-459G;
	Tue, 21 Oct 2025 11:02:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBA8Z-0000000Gi6R-1dJW
	for barebox@lists.infradead.org;
	Tue, 21 Oct 2025 11:02:44 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vBA8Y-0000gE-0M; Tue, 21 Oct 2025 13:02:42 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>
Date: Tue, 21 Oct 2025 12:59:40 +0200
Message-ID: <20251021110149.1151936-3-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251021110149.1151936-1-f.pflug@pengutronix.de>
References: <20250527114241.325357-1-f.pflug@pengutronix.de>
 <20251021110149.1151936-1-f.pflug@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_040243_424376_501814C6 
X-CRM114-Status: UNSURE (   8.50  )
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
Subject: [PATCH v2 1/2] common: deep-probe: include of for of_device_id
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The struct of_device_id is used by deep-probe in its own struct
deep_probe_entry, but never included. It does work, because all files
needing deep-probe currently also include of.h, but that should not be
mandatory.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 include/deep-probe.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/deep-probe.h b/include/deep-probe.h
index 9ba9d09ec3..d1413f979e 100644
--- a/include/deep-probe.h
+++ b/include/deep-probe.h
@@ -5,6 +5,7 @@
 #include <linux/stringify.h>
 #include <linux/compiler_types.h>
 #include <linux/types.h>
+#include <of.h>
 
 struct deep_probe_entry {
 	const struct of_device_id *device_id;
-- 
2.47.3



