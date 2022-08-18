Delivery-date: Thu, 18 Aug 2022 07:06:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXk4-002c7d-G1
	for lore@lore.pengutronix.de; Thu, 18 Aug 2022 07:06:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXk1-0006zn-4P
	for lore@pengutronix.de; Thu, 18 Aug 2022 07:06:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zG1LaWUnY7i1jnovOizTKJ5vKIa1/2SN8TAsS7bF5wY=; b=v6Mk1II6SxCwIuoNCtS+cIuJmn
	pNizGDJhqbc1FFBdQqM6J1Di/qMgzdArUYxfGxz12ptfYmBDQ8gBGGJ8InfCuQ+diFQWSeqvcVFmQ
	HncYNy78bJS7t0des4oJTIdY5Vz8v9CVGAq3gSgE+/69EKK+ib9IDnl16zZlbkKMo5mkZXPERd3Ud
	61jJP4gvzRG6Cgss+38+Yljh8FPc43pcrLhsQr4vQL5zFC5odcCNeCDgTRQRaYWaU//yQzmRJs66T
	AlzdWaWaBdckWP3wwQRL49AKHLzW02dummJbR1wTnvNlQmI5kSAOUpzwJrThKkisKWTbgv/gLC4zH
	Xok4/2Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXiP-00FLzS-9A; Thu, 18 Aug 2022 05:05:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXiA-00FLmw-AC
	for barebox@lists.infradead.org; Thu, 18 Aug 2022 05:05:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXi5-0006TM-H3; Thu, 18 Aug 2022 07:04:49 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXi4-000S1r-QA; Thu, 18 Aug 2022 07:04:48 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXi4-008hJ9-27; Thu, 18 Aug 2022 07:04:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Aug 2022 07:04:44 +0200
Message-Id: <20220818050447.2072932-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_220454_430222_864E0007 
X-CRM114-Status: UNSURE (   9.25  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/4] kbuild: make sha256sum command available generally
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We currently use the command only for generation a SHA256 sum of the
barebox proper binary. In preparation for using it in othe Makefiles
as well, move it to a central location and use the occasion to give
it a short comment.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 images/Makefile      |  7 -------
 scripts/Makefile.lib | 11 +++++++++++
 2 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/images/Makefile b/images/Makefile
index 7a8bb94fe0df..218a24ff1ddd 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -112,13 +112,6 @@ $(obj)/piggy.o: $(obj)/barebox.z FORCE
 
 $(obj)/sha_sum.o: $(obj)/barebox.sha.bin FORCE
 
-quiet_cmd_sha256bin ?= SHA-BIN $@
-      cmd_sha256bin = printf "$(shell sed 's/ .*$$//;s/../0x&\n/g;s/\n$$//' $(obj)/barebox.sum | \
-			while read -r byte; do printf '\%o' $$byte; done)" > $@
-
-quiet_cmd_sha256sum ?= SHA     $@
-      cmd_sha256sum ?= sha256sum $(obj)/barebox.z > $@
-
 $(obj)/barebox.sha.bin: $(obj)/barebox.sum FORCE
 	$(call if_changed,sha256bin)
 
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 46042dab3c8f..16308497b845 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -272,6 +272,17 @@ cmd_ld = $(LD) $(KBUILD_LDFLAGS) $(EXTRA_LDFLAGS) $(LDFLAGS_$(@F)) \
 quiet_cmd_objcopy = OBJCOPY $@
 cmd_objcopy = $(OBJCOPY) $(OBJCOPYFLAGS) $(OBJCOPYFLAGS_$(@F)) $< $@
 
+# Hashing
+# ---------------------------------------------------------------------------
+# POSIX printf (e.g. dash's) doesn't support \xHH, but octal sequences are fine
+
+quiet_cmd_sha256bin ?= SHA-BIN $@
+      cmd_sha256bin = printf "$(shell sed 's/ .*$$//;s/../0x&\n/g;s/\n$$//' $< | \
+			while read -r byte; do printf '\%o' $$byte; done)" > $@
+
+quiet_cmd_sha256sum ?= SHA     $@
+      cmd_sha256sum ?= sha256sum $< > $@
+
 # Decompressor for barebox proper binary when using PBL
 # ---------------------------------------------------------------------------
 
-- 
2.30.2



