Delivery-date: Mon, 14 Apr 2025 08:23:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DEJ-000WmT-1a
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:23:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DEI-00071t-SG
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:23:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SJsKfSkDBltfQzW+Q6FKLTZ6L0xoZP+9S10/1hHVlbk=; b=fzt4iAKTeMNfnFAcYOXF+Udrtr
	dPIvbmZ99ZlwtRHS6Q7p21/Jsf556Oj0edcDKYdHrszHQIQ3PVzkaHKq0Py5l4skx2l6oOCzepWQI
	imddzr4HlZ97C24uvIz7MoGmB1Ixwl6OdymvI/aFRc0qIGPdtK+bMLjcQqyElrWtB2EPw45Kp8uzE
	J/vBe7xdhzoegQQNzopsnfuUVOVN7S5tWSKtBmB0QEs4b4LfgColwTgKnnj/3s6GIsCVAk5Gt9URX
	TvYAo7fzkBUw+5fcgM6bIt5dtojbeVTGbJLcRJn40wkZ1toJt3zMz6uZkfBbZNWGK1U6vimgysjDS
	0SmQibyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DDl-00000000mjy-2ncn;
	Mon, 14 Apr 2025 06:23:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DDf-00000000miI-4C3B
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:23:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DDe-0006lI-Lm; Mon, 14 Apr 2025 08:22:58 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DDe-000CgD-1Y;
	Mon, 14 Apr 2025 08:22:58 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DDe-00BPvJ-1E;
	Mon, 14 Apr 2025 08:22:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 08:22:57 +0200
Message-Id: <20250414062257.2721241-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_232300_034529_A70915AF 
X-CRM114-Status: GOOD (  11.42  )
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
Subject: [PATCH] common: clarify global.of.kernel.add_machine_compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While the name hints at the compatible being added has something to do
with the kernel, the magicvar help text doesn't.

Point that out and make the functionality dependent on CONFIG_OFTREE.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/misc.c          | 7 +++++--
 include/barebox-info.h | 5 +++++
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/common/misc.c b/common/misc.c
index 0c883b76c1c2..375fbbb199c7 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -148,7 +148,6 @@ BAREBOX_MAGICVAR(global.model, "Product name of this hardware");
 
 static char *hostname;
 static char *serial_number;
-static char *of_machine_compatible;
 
 /* Note that HOST_NAME_MAX is 64 on Linux */
 #define BAREBOX_HOST_NAME_MAX	64
@@ -260,6 +259,9 @@ const char *barebox_get_serial_number(void)
 
 BAREBOX_MAGICVAR(global.serial_number, "Board serial number");
 
+#ifdef CONFIG_OFTREE
+static char *of_machine_compatible;
+
 void barebox_set_of_machine_compatible(const char *__compatible)
 {
 	free(of_machine_compatible);
@@ -282,7 +284,8 @@ static int of_kernel_init(void)
 }
 device_initcall(of_kernel_init);
 
-BAREBOX_MAGICVAR(global.of.kernel.add_machine_compatible, "Additional machine/board compatible");
+BAREBOX_MAGICVAR(global.of.kernel.add_machine_compatible, "Extra machine/board compatible to prepend to kernel DT compatible");
+#endif
 
 static void __noreturn do_panic(bool stacktrace, const char *fmt, va_list ap)
 {
diff --git a/include/barebox-info.h b/include/barebox-info.h
index 446cd0dbaf93..ab46c69e9eb5 100644
--- a/include/barebox-info.h
+++ b/include/barebox-info.h
@@ -25,7 +25,12 @@ bool barebox_hostname_is_valid(const char *s);
 const char *barebox_get_serial_number(void);
 void barebox_set_serial_number(const char *);
 
+#ifdef CONFIG_OFTREE
 void barebox_set_of_machine_compatible(const char *);
 const char *barebox_get_of_machine_compatible(void);
+#else
+static inline void barebox_set_of_machine_compatible(const char *) {return NULL; }
+static inline const char *barebox_get_of_machine_compatible(void) { return NULL; }
+#endif
 
 #endif
-- 
2.39.5



