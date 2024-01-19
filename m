Delivery-date: Fri, 19 Jan 2024 09:08:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQjvE-006iPT-2E
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 09:08:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQjvF-000307-Az
	for lore@pengutronix.de; Fri, 19 Jan 2024 09:08:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7uMIfBcM2nwa3qE8zuqrSKDhMJI3IwBAuHscqHCqkwY=; b=Z6IZ9/5baaUbss
	QwkCj8WCGJhgqdO+GGJFYFoLETL/aTib8p6OhpFcOhZbvGDATOvIS22Y9yQ2rZSF1IUsGJ+dCPbZy
	esPK8HXJiRq595T+/jYtboczk9oNSB4kmLHyTIS1WyHNWWLmG0aHSabxH5CTasCAkwx5uoGE1uS7e
	d32PyuqiHb4e/Th7urRZ+1TdZAhsP0W6CRBy4q9uoXNdxc6keawlHdjYaL6daYujzYIFKtCDXdKYx
	O503J9922t7trew4NVFF+XLOfUNMT9LVFE3Jv0sOltk6clWraJIYj8gacwQpKwMJA29NMTS0wocxV
	IAQZJHxrVj2oLPvDyHQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQjuJ-004mzm-1V;
	Fri, 19 Jan 2024 08:07:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQjuG-004mzH-0O
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 08:07:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQjuE-0002vG-Sm; Fri, 19 Jan 2024 09:07:14 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQjuE-000ry9-GP; Fri, 19 Jan 2024 09:07:14 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQjuE-00A06k-1D;
	Fri, 19 Jan 2024 09:07:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 19 Jan 2024 09:07:06 +0100
Message-Id: <20240119080706.2381579-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_000716_175785_3B6EE607 
X-CRM114-Status: GOOD (  13.94  )
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
Cc: Marco Felsch <m.felsch@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] firmware: fix missing firmware handling for external firmware
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

Currently we depend on the external firmware file since we need it for
the sha256sum. But this dependency break the 'optional missing firmware'
feature.

Fix this by dropping the firmware file prerequisite and instead evaluate
the FWNAME_EXISTS variable. If the firmware file does not exist a dummy
file is created and the build continues till the linking process (like
we do for the other firmware).

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Link: https://lore.barebox.org/20240110145908.3965855-1-m.felsch@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 firmware/Makefile    | 4 ++--
 images/Makefile      | 2 +-
 scripts/Makefile.lib | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/firmware/Makefile b/firmware/Makefile
index 2323b46f96..5bc6649a45 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -92,8 +92,8 @@ $(obj)/%.extgen.S: $(obj)/%.sha.bin FORCE
 $(obj)/%.sha.bin: $(obj)/%.sum FORCE
 	$(call if_changed,sha256bin)
 
-$(obj)/%.sum: $(obj)/% FORCE
-	$(call if_changed,sha256sum)
+$(obj)/%.sum: FORCE
+	$(if $(wildcard $(fwdir)/$*), $(call if_changed,sha256sum,$(fwdir)/$*), @touch $@)
 
 clean-files += *.sha.bin *.sum
 
diff --git a/images/Makefile b/images/Makefile
index 7b4e019531..c0105609ee 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -132,7 +132,7 @@ $(obj)/barebox.sha.bin: $(obj)/barebox.sum FORCE
 	$(call if_changed,sha256bin)
 
 $(obj)/barebox.sum: $(obj)/barebox.z FORCE
-	$(call if_changed,sha256sum)
+	$(call if_changed,sha256sum,$<)
 
 
 # barebox.z - compressed barebox binary
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 0b236babb2..f205e08afc 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -301,7 +301,7 @@ quiet_cmd_sha256bin ?= SHA-BIN $@
 			while read -r byte; do printf '\%o' $$byte; done)" > $@
 
 quiet_cmd_sha256sum ?= SHA     $@
-      cmd_sha256sum ?= sha256sum $< > $@
+      cmd_sha256sum ?= sha256sum $2 > $@
 
 # Decompressor for barebox proper binary when using PBL
 # ---------------------------------------------------------------------------
-- 
2.39.2



