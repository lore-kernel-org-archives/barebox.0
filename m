Delivery-date: Thu, 08 Jan 2026 16:50:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsHk-002fRo-12
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 16:50:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsHj-00078r-Ph
	for lore@pengutronix.de; Thu, 08 Jan 2026 16:50:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z5wf3i6JFyILEcZ7llmO9HIbxcYRwcv29he5dqpyOg4=; b=k8h2nbL6sCBt/5CwlOHaSfbKbH
	Oir8B5OW7cgD/CSFwym/37GojUGHMWwZaTh9sflt4PAXiPu3VCfgvgrXBjQmD2yamtE0V77OMPpHw
	TwA6aNHB1qE+hluzi+0dxEp+h4KlpD2q/VibROrDRcH7LX01ByI4ygxpoXqrOFLD6K6yG2mc71LUX
	Js9k9BVAu7PYNNbiPQ8k0Hrc+tscMH2ruAUfKTaUGJTXnb3aaezLt8Xsc95a1h/QUOf54K4TZYKds
	WVhaDvyA2mL9BQYRy+36wGalUcJyvzPzshEVrLXu/FnOizTInYg0HaU10vv4V7HIQof1kcjVZdr0S
	TAYfw2ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsH3-0000000HaJz-3cdV;
	Thu, 08 Jan 2026 15:50:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsGz-0000000HaHH-1tP5
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 15:50:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0006hK-S9; Thu, 08 Jan 2026 16:50:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-009hV8-1Y;
	Thu, 08 Jan 2026 16:50:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0000000AN2q-1IKA;
	Thu, 08 Jan 2026 16:50:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 08 Jan 2026 16:49:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-pbl-load-elf-v3-1-e28c931fc179@pengutronix.de>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
In-Reply-To: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767887401; l=1059;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=mGsenRSUXYpeeUHxJXUESewchXvYq1DhnDLI2GnV3XQ=;
 b=gEh7aGb7xfsjMpgwyUioLvcL6te8JPFbpc9Ut/aj82PY5Cv3jGyboVkShx2i6Modvkva5oq7w
 faGfLS2TmvbAcOGTF1N0CdS/FTym58UavS+1Ht8VKSRAiHBTncjK8au
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_075005_498437_69127982 
X-CRM114-Status: UNSURE (   9.04  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 01/23] Makefile.compiler: add objcopy-option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Similar to other *-option macros this one is for testing if objcopy
flags are supported.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile.compiler | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/scripts/Makefile.compiler b/scripts/Makefile.compiler
index 1d34239b3bbaf49dede33f67d69ebeb511b5dc28..f2fdddd07bbef9ea90da219602086b5be591a75d 100644
--- a/scripts/Makefile.compiler
+++ b/scripts/Makefile.compiler
@@ -69,6 +69,11 @@ cc-ifversion = $(shell [ $(call cc-version, $(CC)) $(1) $(2) ] && echo $(3))
 ld-option = $(call try-run,\
 	$(CC) -x c /dev/null -c -o "$$TMPO" ; $(LD) $(1) "$$TMPO" -o "$$TMP",$(1),$(2))
 
+# objcopy-option
+# Usage: KBUILD_LDFLAGS += $(call objcopy-option,--strip-section-headers,--strip-all)
+objcopy-option = $(call try-run,\
+        $(CC) -x c /dev/null -c -o "$$TMPO"; $(OBJCOPY) $(1) "$$TMPO" "$$TMP",$(1),$(2))
+
 # Prefix -I with $(srctree) if it is not an absolute path.
 # skip if -I has no parameter
 addtree = $(if $(patsubst -I%,%,$(1)), \

-- 
2.47.3



