Delivery-date: Wed, 26 Mar 2025 10:50:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txNP9-004NqH-36
	for lore@lore.pengutronix.de;
	Wed, 26 Mar 2025 10:50:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txNP8-0003h7-QZ
	for lore@pengutronix.de; Wed, 26 Mar 2025 10:50:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SneK3k8wGH4TCUqdHJj0lTD/Gky7onjm+QpNS510N+U=; b=iWcqS1w58HdkqsHRIsaNoTa1v0
	dUOho19M4kK0AiVQ2u1jMBHavGa8F4ttO3iOAT7WhQAdXaZknldLv4vsrBfGkM6hq8R3ffrRBjfNT
	DDgZmeYGtXI8Qk7tUFzHfOawNElQu+jeS8dS1meatzECzrINv4pfdW6eTBvtnasYU774hisk5c0lY
	QsqPUMDwiBsXPVTuMrfAZggv8L+GSP+u3bvFv63GRo6+y6B6CPKtFvdt5BLCiyWQvXCdXbkl/7kUe
	ripTbcW5jJFhRwD8AKveqNC2WnEmzGVe/9dhNo36BLnBQknwsXa84igEChip/z/73JZ1WZBZycJNU
	EgMJPXbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txNOi-000000084ss-1qvF;
	Wed, 26 Mar 2025 09:50:08 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txNOf-000000084sW-0eZy
	for barebox@lists.infradead.org;
	Wed, 26 Mar 2025 09:50:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1742982603;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=SneK3k8wGH4TCUqdHJj0lTD/Gky7onjm+QpNS510N+U=;
	b=UfQy/ijP68qVVntPDtqFDwZbdZZ8eMfKL6zUUK7LosjNyr+Y/MJOTLbzeHa0ynlGzhhlua
	AfW2FP+KSQUhhLFP14pjkJ2DtDrh36ELtZrZJG6RZV6gUTzV0gTDgu/OvvTQ2If9FhZpk6
	QDG+ct8fWXsK5mQnQoY6gmRsRjKe7gdUGVUPnixUPwH6/d6AUuvNA8Z2s/j5npDKEIgHo8
	bRlf4aqSdUuND6F2GYAY5MAz4YWXwkdCbrKDvn52AbINEVsQJs1+EmVzryr40+Yt/UmQ2/
	zaivhaumnCr6nTNfY24QJP8ZqcgEtuXTk8jAYlwNLY9zeQWOtl9zE388IaRWTQ==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:da62:e926:7042:9dc0])
	by zdiv.net (OpenSMTPD) with ESMTPSA id d52c435b (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
	for <barebox@lists.infradead.org>;
	Wed, 26 Mar 2025 10:50:03 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Date: Wed, 26 Mar 2025 10:49:43 +0100
Message-ID: <20250326094943.9586-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_025005_485415_677CEBB6 
X-CRM114-Status: UNSURE (   5.47  )
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
Subject: [PATCH v2] fixup! tee: optee: implement RPMB support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 drivers/tee/optee/rpmb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/tee/optee/rpmb.c b/drivers/tee/optee/rpmb.c
index cdc8afc1a4..813c48efd8 100644
--- a/drivers/tee/optee/rpmb.c
+++ b/drivers/tee/optee/rpmb.c
@@ -5,6 +5,7 @@
 
 #define pr_fmt(fmt)     "optee-rpmb: " fmt
 
+#include <linux/array_size.h>
 #include <mci.h>
 
 #include "optee_msg.h"
-- 
2.48.1



