Delivery-date: Mon, 25 Nov 2024 16:09:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFaiE-000FIe-2f
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:09:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFaiE-0006ZF-Oi
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:09:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2WiTfx/hCMXBNFgvmNVt48z9Gy/eKfx9hpGbm7lDSe8=; b=CWZ/rUrjddJWJoaY3boKWM4dy/
	ZlU7+ll8hrkw1UIc2fJAHez1x5QCko1W1JQ8CggeD7UQQLDY7y8f1FfXOQZ/fS+dx/yM9YUpaV2gy
	2QTxvxJiHeQ3SccTq+5l78luX6dOrJZksNXnJWD+DqKtOjIMBfLCcf0PLFu99uzt2xHCRyWCsf0Fv
	fyTt3dbg9a+tMt/2a2TWkMFLClaE+jAFmHnOZO0DRe4HSFA9jThQmq6vQVgut0T0wQRTbR1fVQzN+
	Rtxuw49aGeQMZa8RlsotkNuEiSIDwwPgTX/AsPJgFcqHExEbk4K8u0NV1gJ+Rjmqp0S6Hjg2v34kA
	6mztxStg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFahg-00000008OiM-26g9;
	Mon, 25 Nov 2024 15:08:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFahd-00000008OhF-2eWE
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:08:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFahb-0006QJ-Ce; Mon, 25 Nov 2024 16:08:39 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFaha-00069b-1O;
	Mon, 25 Nov 2024 16:08:39 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFaha-000Rmh-1Y;
	Mon, 25 Nov 2024 16:08:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:08:38 +0100
Message-Id: <20241125150838.96931-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_070841_667713_3D70B59D 
X-CRM114-Status: GOOD (  10.02  )
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
Subject: [PATCH] kbuild: don't allow GCC data store races
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a port of kernel commit 69102311a57d1f ("./Makefile: tell gcc
optimizer to never introduce new data races"), which does what it says
on the tin: prevent gcc from replacing conditional loads with a
non-conditional one as this could lead to issues around memory remapping
functions.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .clangd  | 2 +-
 Makefile | 8 ++++++++
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/.clangd b/.clangd
index 58e83cd2871a..4057270b2a83 100644
--- a/.clangd
+++ b/.clangd
@@ -1,2 +1,2 @@
 CompileFlags:
-  Remove: -mabi=lp64
+  Remove: [ -mabi=lp64, -fno-allow-store-data-races]
diff --git a/Makefile b/Makefile
index 46707fb44f68..991e11bd0dee 100644
--- a/Makefile
+++ b/Makefile
@@ -670,6 +670,14 @@ KBUILD_CFLAGS += $(call cc-disable-warning, trampolines)
 
 KBUILD_CFLAGS += $(call cc-option, -fno-delete-null-pointer-checks,)
 
+# Tell gcc to never replace conditional load with a non-conditional one
+ifdef CONFIG_CC_IS_GCC
+# gcc-10 renamed --param=allow-store-data-races=0 to
+# -fno-allow-store-data-races.
+KBUILD_CFLAGS	+= $(call cc-option,--param=allow-store-data-races=0)
+KBUILD_CFLAGS	+= $(call cc-option,-fno-allow-store-data-races)
+endif
+
 # disable invalid "can't wrap" optimizations for signed / pointers
 KBUILD_CFLAGS	+= $(call cc-option,-fno-strict-overflow)
 
-- 
2.39.5



