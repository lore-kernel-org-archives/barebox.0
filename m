Delivery-date: Thu, 05 Jun 2025 13:39:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8w3-003zoR-2U
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:39:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8w1-0002Rg-3m
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:39:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SQAlpQcezNdLmyvjz4Fbg8E4WapV1SzGLf+OQ499ydI=; b=rcM+YkAvkxWVupYsGvFlCDXfnG
	rt4NDRJ/YDF/Gz56wDLdefK5255QPo0w2QyeT0kbW2j4Ai89TuMJaMmyyTf+P2tGA7Y3ja+azmES2
	TvfNCXMvaRxzxoY3b/4VJeaY5yAXkmV3KzLQpeVSPG6CoqtvjQ6+PZbZYuNs4+fVYXS0vdhhjcZmw
	lUqHEuqQ4G+uGu6tsOeCPglKLOITpMHJQ0mIsvzhHDZGT+wBC1rPugyCcjLttintOZypUwKBOIulg
	REF+/ejFHvyKWbKTBDMly9ELoc0oax3JcDhm7QMKXny2/6PmUK4RFzYTBqNYh8Ak43ScRf4F3TQiM
	z1E8ZBdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8vX-0000000FOTc-2yqZ;
	Thu, 05 Jun 2025 11:38:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8vT-0000000FOOU-1Gee
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:38:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8vS-0001iP-3u; Thu, 05 Jun 2025 13:38:26 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8vR-001x0b-2z;
	Thu, 05 Jun 2025 13:38:25 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-008mT4-2s;
	Thu, 05 Jun 2025 13:35:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:35:20 +0200
Message-Id: <20250605113530.2076990-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
References: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_043827_345271_7F7C6E69 
X-CRM114-Status: UNSURE (   8.15  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/21] sandbox: populate UNAME_M variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We will need the UNAME_M information to pick the correct static library
when linking against libfuzzer.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/subarch.include | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/scripts/subarch.include b/scripts/subarch.include
index caf3c641b52a..9137ddcd92fa 100644
--- a/scripts/subarch.include
+++ b/scripts/subarch.include
@@ -4,8 +4,10 @@
 # then ARCH is assigned, getting whatever value it gets normally, and
 # SUBARCH is subsequently ignored.
 
-SUBARCH := $(shell uname -m | sed -e s/i.86/x86/ -e s/x86_64/x86/ \
-				  -e s/arm.*/arm/ -e s/sa110/arm/ \
-				  -e s/aarch64.*/arm/ \
-				  -e s/ppc.*/powerpc/ -e s/mips.*/mips/ \
-				  -e s/riscv.*/riscv/)
+UNAME_M := $(shell uname -m 2>/dev/null)
+SUBARCH := $(shell echo $(UNAME_M) | \
+		sed -e s/i.86/x86/ -e s/x86_64/x86/ \
+		    -e s/arm.*/arm/ -e s/sa110/arm/ \
+		    -e s/aarch64.*/arm/ \
+		    -e s/ppc.*/powerpc/ -e s/mips.*/mips/ \
+		    -e s/riscv.*/riscv/)
-- 
2.39.5



