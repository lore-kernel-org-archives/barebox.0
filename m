Delivery-date: Sat, 24 Aug 2024 22:02:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shwyK-00D0mN-18
	for lore@lore.pengutronix.de;
	Sat, 24 Aug 2024 22:02:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shwyJ-0005PM-Om
	for lore@pengutronix.de; Sat, 24 Aug 2024 22:02:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tzDFQq9oZlousLkC6r1C0H7zsgiGLolEsnGveWH0D54=; b=Guw70y5lMKMSfLVO50MFn+Lpcn
	bAoFF6WX5ZVR2UV0WiwO39syJ99a2qVXxjO0evKDn8vwVmmyI3mVS/lSW5GaMTxuqUynjYy8+vCp3
	ovZABBBtVepr4cPhz0X+YWoe7w+QcMhpI3+CaIcRe8OwM5VCDk/Q/uaoEdpUDFV/2tEKN37esQLWK
	A8I0PsAJ9PEimBzMrUe5acDZM8sMIpJ4YeRQijTrwnAfsaMvOgWk7oE5DF2fZLXpeh0iygwoIUiaJ
	QGvkA6q1jP4IQhWoKxjcw3nJzzpLtCvyDiAjHWGqKGK9heDZV8bJhLPNAK01u4DFMbN8UzVuJYlba
	ydMiQ2dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shwxb-00000002qA1-3JCI;
	Sat, 24 Aug 2024 20:02:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shwxW-00000002q9Q-491Q
	for barebox@lists.infradead.org;
	Sat, 24 Aug 2024 20:02:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shwxT-00055W-7B; Sat, 24 Aug 2024 22:01:59 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shwxS-002mrF-QK; Sat, 24 Aug 2024 22:01:58 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shwxS-0093pz-2K;
	Sat, 24 Aug 2024 22:01:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 24 Aug 2024 22:01:57 +0200
Message-Id: <20240824200157.2159691-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240824_130203_050362_6CF8557F 
X-CRM114-Status: UNSURE (   8.27  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] lib: math: rename file providing arith() to arith.c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have math/ in the same directory, so having a math.c file is
a bit confusing. Rename the file to a more descriptive arith.c.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/Makefile            | 2 +-
 lib/{math.c => arith.c} | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename lib/{math.c => arith.c} (100%)

diff --git a/lib/Makefile b/lib/Makefile
index b3d024035c12..19d3a235dda5 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -28,7 +28,7 @@ obj-y			+= stringlist.o
 obj-y			+= cmdlinepart.o
 obj-y			+= recursive_action.o
 obj-y			+= make_directory.o
-obj-y			+= math.o
+obj-y			+= arith.o
 obj-$(CONFIG_IDR)	+= idr.o
 obj-y			+= math/
 obj-y			+= uuid.o
diff --git a/lib/math.c b/lib/arith.c
similarity index 100%
rename from lib/math.c
rename to lib/arith.c
-- 
2.39.2



