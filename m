Delivery-date: Fri, 16 Jan 2026 09:35:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgfJH-001tpJ-0l
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 09:35:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgfJG-00081p-4c
	for lore@pengutronix.de; Fri, 16 Jan 2026 09:35:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MIBXY6znqU+OGogcP3Py4dwT7cMyCZH7mdICq0MAJsk=; b=dN49SR2RTodrXAN2Vzn+vn9l1U
	6P6Hiim0/HqWIfiz7pn2hQkxVKx/J0iCHF3EnJm9ZQqyCTPgnWvB50HWQjMzy3zKTM33llpWUHuvg
	/Sxhj4GK+YzuA8fi0tLVnt5RdlFyPyeaNXJEKO8hZ+J+QCOtuOPoXtAZPfLz3sUX5VGZC6C2EF+f/
	6gNxRfxAjfepB32lFkQxiFEz4vacOIDp/5NjFDPSrtsyQAVuqxQe+W0YHIHWsIjwaSD8CH+RW2LaD
	gHV/tSlH6QZ8vXPMaq1w7lVktiN3A+9MP26xZFq4y3KicazbRSykgO/d0Ah0F6zpjZcHzaU0z/pwh
	z72B4D1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgfIh-0000000DlmT-0i88;
	Fri, 16 Jan 2026 08:35:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgfIc-0000000Dlgz-3d1K
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 08:35:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgfIb-0007Qb-8Y; Fri, 16 Jan 2026 09:35:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgfIb-000tDq-2H;
	Fri, 16 Jan 2026 09:35:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vgewH-00000005hOg-1gzD;
	Fri, 16 Jan 2026 09:12:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Jan 2026 09:12:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-pbl-load-elf-v5-12-51d042021c5a@pengutronix.de>
References: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
In-Reply-To: <20260116-pbl-load-elf-v5-0-51d042021c5a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768551133; l=1353;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=SrqWvHaEIgi6JKVxu7Cv99LyoBQiFKou2RmYh4G5oHE=;
 b=inf44NPZXu9+Sc1Gv8/K+F1rX0VyD80pXCpQGq69woPhkcoElAGqWA31vdQtFFCJD8eLjpff1
 TYKK8mk7J6PBvqFUuSDn88y38fghgMktZQb7bM+vUA3BE2wpWMBZLbj
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_003518_915224_773D71AE 
X-CRM114-Status: UNSURE (   9.64  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH v5 12/22] PBL: allow to link ELF image into PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some architectures want to link the barebox proper ELF image into the
PBL. Allow that and provide a Kconfig option to select the ELF image.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile    | 4 ++++
 pbl/Kconfig | 9 +++++++++
 2 files changed, 13 insertions(+)

diff --git a/Makefile b/Makefile
index 2350592cde..25b548712c 100644
--- a/Makefile
+++ b/Makefile
@@ -831,7 +831,11 @@ export KBUILD_BINARY ?= barebox.bin
 # Also any assignments in arch/$(SRCARCH)/Makefile take precedence over
 # the default value.
 
+ifeq ($(CONFIG_PBL_IMAGE_ELF),y)
+export BAREBOX_PROPER ?= vmbarebox
+else
 export BAREBOX_PROPER ?= barebox.bin
+endif
 
 barebox-flash-images: $(KBUILD_IMAGE)
 	@echo $^ > $@
diff --git a/pbl/Kconfig b/pbl/Kconfig
index cab9325d16..63f29cd613 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -21,6 +21,15 @@ config PBL_IMAGE_NO_PIGGY
 	  want to use the piggy mechanism to load barebox proper.
 	  It's so far only intended for sandbox.
 
+config PBL_IMAGE_ELF
+	bool
+	depends on PBL_IMAGE
+	select ELF
+	help
+	  If yes, link ELF image into the PBL, otherwise a raw binary
+	  is linked into the PBL. This must match the loader code in the
+	  PBL.
+
 config PBL_MULTI_IMAGES
 	bool
 	select PBL_IMAGE

-- 
2.47.3



