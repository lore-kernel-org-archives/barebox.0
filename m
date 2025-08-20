Delivery-date: Wed, 20 Aug 2025 16:32:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojrc-002eHz-2q
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 16:32:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojrb-0006Wq-Iv
	for lore@pengutronix.de; Wed, 20 Aug 2025 16:32:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q5cpQI9K0T+G4Q2gVN/2H2IwEeBoehdQK+FL7DuN9g8=; b=h8ZsRpya1KzSTB79m5HIdYlXFy
	4EK00ozwoc5x65PDGfw6UUeW60rkYu4i30IbFSkBoEdVF7lzCnrIMLSSxAKn7v0H56CBzNpdoSZLB
	O4jASFWaAX5B3lko/clplHKyDkLmXincbGsDCRfoM1K8+su81s5X03MTKcHM8zbmoSSCpQCggDjCJ
	gxyAAr/NcaoDTHfH17IERrVNiRhV33QGIDl7Z+d903YelftdrRGWQ2YVxQJbHM/jSgKeZfK9S4LSC
	ZBUvHFqfU9hdNUPIvAx1TKij96zebB73/rpTCHBXnU9oJLT022ZmxD+RnUMflvpGebSMrzUV7D7Nr
	3Fz3DWPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uojr0-0000000E4Vu-30n1;
	Wed, 20 Aug 2025 14:31:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoixR-0000000Dojl-1fJw
	for barebox@bombadil.infradead.org;
	Wed, 20 Aug 2025 13:34:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=q5cpQI9K0T+G4Q2gVN/2H2IwEeBoehdQK+FL7DuN9g8=; b=GqiDdrpqtcISrYyj74ad1SnhuR
	761lBCefpxhvP7NNLNfL9CewsfY25/WeOXcS/kjBtEDqGz7UFYlrIdouFR982Hcc+vn2seDJsXCBw
	Rw9uXBErNSbklm93kQ092WW6+ihRJH+Xu/5B3yOPU9x1gNmg3UJpDa6ENYmfJVhheS2N758bnTfwc
	bmSjU8XcpMxrpghCdBaJ+FhK8FQ/C4Y+CMsaKSS94FBscTbsUKsFT1EFYABmDR4AB4RevMD3ymU0C
	O7Gsvr0lxBtbP9fHXP16lRqI+HpSHxdvQQ5opBOq5Lvj+I/ENcloGt5nroWBcA1l0s90TP+tepjIC
	FqkMf0oA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoixK-00000000KkL-41G6
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 13:34:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoixI-0003Gz-Hi; Wed, 20 Aug 2025 15:34:20 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoixI-001Fsc-15;
	Wed, 20 Aug 2025 15:34:20 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-004jSI-1f;
	Wed, 20 Aug 2025 15:17:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 Aug 2025 15:17:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-security-policies-v1-10-76fde70fdbd8@pengutronix.de>
References: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
In-Reply-To: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755695870; l=1819;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=7ey82WagODk3rT86/QtLrr/5QpJTzMSHycZ40CsKYs4=;
 b=CSCYGh+JZSwMaGI4u0jrDFw1TWkynJsmd2wD/aV1IDq9xSM7m1r+WmVwseJPwEfE1btVow8R2
 SkwVHArFqm0BvKSbQEBO49XybUPgtHIG3oNgnA/S4tYVmxNh7RV3/I0
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_143423_269221_D1335182 
X-CRM114-Status: GOOD (  13.46  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH 10/24] commands: go: add security config option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

The go command doesn't do any signature verification and allows
executing arbitrary code. Add a security option, so a policy can disable
this command at runtime.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Sconfig          |  1 +
 commands/Sconfig | 12 ++++++++++++
 commands/go.c    |  4 ++++
 3 files changed, 17 insertions(+)

diff --git a/Sconfig b/Sconfig
index ee6ddf53bccbdc427227b8b0e8fe9eeefb470047..93f5760ad96fdde7141c47e2680dc5f4bc142ca7 100644
--- a/Sconfig
+++ b/Sconfig
@@ -5,3 +5,4 @@ mainmenu "Barebox/$(ARCH) Security Configuration"
 source "scripts/Sconfig.include"
 
 source "security/Sconfig"
+source "commands/Sconfig"
diff --git a/commands/Sconfig b/commands/Sconfig
new file mode 100644
index 0000000000000000000000000000000000000000..7e6d937e162ce154b3993d03a9103181ea61af5d
--- /dev/null
+++ b/commands/Sconfig
@@ -0,0 +1,12 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+menu "Command Policy"
+
+config CMD_GO
+	bool "Allow go command"
+	depends on $(kconfig-enabled,CMD_GO)
+	help
+	  The go command jumps to an arbitrary address after shutting
+          down barebox and does not do any signature verification.
+
+endmenu
diff --git a/commands/go.c b/commands/go.c
index 3449a2181ad076e30ea96f016245806a59d657c4..640911d90db28c0dc60b713267dcab14627c793c 100644
--- a/commands/go.c
+++ b/commands/go.c
@@ -11,6 +11,7 @@
 #include <getopt.h>
 #include <linux/ctype.h>
 #include <errno.h>
+#include <security/config.h>
 
 #define INT_ARGS_MAX	4
 
@@ -24,6 +25,9 @@ static int do_go(int argc, char *argv[])
 	ulong	arg[INT_ARGS_MAX] = {};
 	bool	pass_argv = true;
 
+	if (!IS_ALLOWED(SCONFIG_CMD_GO))
+		return -EPERM;
+
 	while ((opt = getopt(argc, argv, "+si")) > 0) {
 		switch (opt) {
 		case 's':

-- 
2.39.5



