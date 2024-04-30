Delivery-date: Tue, 30 Apr 2024 15:16:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1nLS-00ARQv-2L
	for lore@lore.pengutronix.de;
	Tue, 30 Apr 2024 15:16:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1nLP-0005wC-3I
	for lore@pengutronix.de; Tue, 30 Apr 2024 15:16:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=r4cHo4KFWttKs2E13qkw4/Mq3y7msTTePHgci5vg8Xo=; b=bP8X/GLAM1RWPRTirk6ZlwxS7c
	mYx2bZMAG3OtguxCXLfZRHknE4uAob5pgMsolk8OVQSRc6KTw4/j5mx8uO4FTKBmFe1VlhBzhe+H4
	hQV0x6hdh3GbjzkANmgH7ChYYp4U1J3Uc3SZVmR4c4ftSzueUnJbn+2qPTUKL5Lo4RhQ5E2HYde1K
	L4VoCu6vSF3KxkvonLWd3BFKqB2ArdxIvXkG20UqQZUCHdTQ80tHVpGFOtggU10jpV3nBR0FlmhGO
	pBIs8fcWKbWH/3DXxsHOTwByv8c0Fu7rsiBlnsHl81WFUXzdOOKnlmTdWFdnGx2Mp42j5rlHByBSK
	D7n7sRxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1nKo-00000006TfV-2VfQ;
	Tue, 30 Apr 2024 13:15:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1nKi-00000006TbR-318R
	for barebox@lists.infradead.org;
	Tue, 30 Apr 2024 13:15:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s1nKf-0005lk-BO; Tue, 30 Apr 2024 15:15:41 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s1nKe-00FAll-V6; Tue, 30 Apr 2024 15:15:40 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s1nKe-00F5qS-2q;
	Tue, 30 Apr 2024 15:15:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 30 Apr 2024 15:15:40 +0200
Message-Id: <20240430131540.3597376-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_061544_866637_4FCB2196 
X-CRM114-Status: GOOD (  12.81  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] kbuild: make implicit int to pointer conversion warning an error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We are guilty of using ints as pointers in readl/writel, but the old
definition of these uses a cast to silence the warning.

Everywhere else there's no reason to allow this, so make this a hard
error always to weed out any instances we may still have.

Disallowing this has the added benefit of making it easier to change API
in barebox: We do not guarantee out-of-tree board code API stability,
but we want changes in API to result in build errors, not in warnings
that may be eaten up by a build system sitting in-between Kbuild and the
user.

While at it, we fix the whitespace for the surrounding lines.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 8e262c17fd50..517b54bd9e6d 100644
--- a/Makefile
+++ b/Makefile
@@ -451,8 +451,9 @@ KBUILD_CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) -fno-builti
 
 KBUILD_CFLAGS   := -Wall -Wundef -Werror=strict-prototypes -Wno-trigraphs \
 		   -fno-strict-aliasing -fno-common -fshort-wchar \
-                   -Werror=implicit-function-declaration -Werror=implicit-int \
-                   -Os -pipe -Wmissing-prototypes -std=gnu11
+		   -Werror=implicit-function-declaration -Werror=implicit-int \
+		   -Werror=int-conversion \
+		   -Os -pipe -Wmissing-prototypes -std=gnu11
 KBUILD_AFLAGS          := -D__ASSEMBLY__
 KBUILD_AFLAGS_KERNEL :=
 KBUILD_CFLAGS_KERNEL :=
-- 
2.39.2



