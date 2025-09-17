Delivery-date: Wed, 17 Sep 2025 16:19:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyszz-0046QP-2K
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 16:19:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyszy-0003mm-EE
	for lore@pengutronix.de; Wed, 17 Sep 2025 16:19:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4M8frmOEIfdzWJU+7JHO3vgdlkfk1GREfk3sKWESt98=; b=ldjliVBajTodtdUaT+OVyoc9KP
	DQx2xBoW/klJynrzwYZrIrNQ3NtNVJmxgtwtc4Idcrkt/grr5AKSIF2Az/UDO4JQoI5yTGmAhYic7
	h6//ZPuSikJN8DzwMPCMubHBDcfg3R00IOvz+DxSFrwyeh1SBJvR2B/Fq8JpII8Ut8dskvIWgbTrZ
	JJdKJmDmHaNKo2apEKF7J8YrEnvwtoNB1a4u/QOrjLUXYY9pbP+HUCit8tiZ59sxlJPbzJ4z9U1SI
	tzsZYLRp1uHYLTAtSrKikSfT0uNZaRFwR0nEFXWl9rwMkIPeYyM4VfmGuJsOeA1cKI85pMCfaJo+6
	2wUlNc6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszP-0000000C8Ko-0NGH;
	Wed, 17 Sep 2025 14:18:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszH-0000000C87f-2dmh
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 14:18:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszG-000330-4l; Wed, 17 Sep 2025 16:18:22 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszF-001mGv-35;
	Wed, 17 Sep 2025 16:18:21 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-0000000CZtI-31Xa;
	Wed, 17 Sep 2025 15:53:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Sep 2025 15:53:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-security-policies-v2-10-f30769a3ff51@pengutronix.de>
References: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
In-Reply-To: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758117208; l=1811;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=U5hmkyAPl1DQ9Bc2hocc4xmcG2CTWMEsHL8MU2SOnIY=;
 b=UbvLFVfi63A87roF4PIJH6iExp87ly8f5dNbwK3tnwwfKlv/rBS2ymacHHOcvH/OyppqzzAmQ
 BtUOZmFvm37DJ15DAklfjqfL1LR1jpzK8VxOKoxdbnfzulCPFRxAmlD
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_071823_675495_4902CDBF 
X-CRM114-Status: GOOD (  13.55  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 10/24] commands: go: add security config option
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
index 6cfd8c8677a655c1b238dadc22aa6d40b161596d..1c5b9d70d09f8df47edc48f6ac295501f66df97e 100644
--- a/Sconfig
+++ b/Sconfig
@@ -5,3 +5,4 @@ mainmenu "Barebox Security Configuration"
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
2.47.3



