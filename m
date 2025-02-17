Delivery-date: Mon, 17 Feb 2025 11:55:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjymT-003Rzw-0g
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 11:55:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjymS-0000Iw-26
	for lore@pengutronix.de; Mon, 17 Feb 2025 11:55:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GhZRC2VOJ630CSlkcBxwNd1YwQewpaWiQNNdIdiVAYc=; b=oeA+cwnn5d4LiYz8pB1vgJGKvf
	wX/+lYR2+xeF1+weu31JTFh9xdKiVFJHny7LsYGUc/OFCRlnLO8T+jAICId89Bbf6HCxrCGuV9lyQ
	U6uVu2HqOcJEueM3MCiUi7BByunwVxEU3FJYGdenvKMjNj01dWFHsFf4buoly/Aity2bBZiJpnuwj
	2rw8gaMKoPrQqOMK9kL2JC+kglznImFtAlA/4m+Lrp6lHFoIpP4wl8pVcEMQ6eoee09ik+R0RmRJ4
	iKtj56vAj/wezsNohiZjGPxl0otIujiFaX+Px4NV9Fk15kOrkMjifLd8hoiS3DsjEE/BgEISXqQbt
	A0deplig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjym2-00000004D6s-0WOj;
	Mon, 17 Feb 2025 10:54:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjydj-000000049p6-2GBw
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 10:46:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjydg-0006b0-W9; Mon, 17 Feb 2025 11:46:13 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjydg-001OO2-2U;
	Mon, 17 Feb 2025 11:46:12 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjydg-007huG-2B;
	Mon, 17 Feb 2025 11:46:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Feb 2025 11:46:09 +0100
Message-Id: <20250217104611.1836442-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250217104611.1836442-1-a.fatoum@pengutronix.de>
References: <20250217104611.1836442-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_024615_578906_0EA77965 
X-CRM114-Status: GOOD (  11.27  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] Makefile: clang: fix typo in -Wno-typdef-redefinition flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The file was not used so far, so the typo wasn't noticed. A later
commit is going to change that, so prepare for it by fixing the typo.

Fixes: f41c4d7c5649 ("Makefile: add LLVM/clang support")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/Makefile.clang | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
index c0302ff82670..874110ea83ad 100644
--- a/scripts/Makefile.clang
+++ b/scripts/Makefile.clang
@@ -1,5 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
-CLANG_FLAGS	+= -Wno-typdef-redefinition
+CLANG_FLAGS	+= -Wno-typedef-redefinition
 CLANG_FLAGS	+= -Werror=unknown-warning-option
 CLANG_FLAGS	+= -Werror=ignored-optimization-argument
 CLANG_FLAGS	+= -Werror=option-ignored
-- 
2.39.5



