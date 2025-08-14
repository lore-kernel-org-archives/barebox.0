Delivery-date: Thu, 14 Aug 2025 17:16:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umZhJ-000Y3g-1O
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 17:16:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umZhI-0001J4-7H
	for lore@pengutronix.de; Thu, 14 Aug 2025 17:16:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NwfAx0s90CPHPSHgb0qsz6X9Q9uc123XjDCND6zruSw=; b=U4nMSIxGswemKck61XH43qW5pE
	pvMyoQrIXgy8BZoIfodfMqtSLSUEp9oefjSo9autyrkcu3UeylIrMDmr//KemzJ2NrxKmzDcaLrrk
	PBWCa38r61ZDuPm2YiUVOkMSTmLblFoHdILzPV7oh7k62MSz4n32sIlv7U5NAPGF3DsPqxE1sSdMq
	AVCHDLF0lBW04N9P/D18til7621UPD+AoDPBmU0okE/9zEdIa2oCHcPkDlEQ37nho6p4rv+7WrRys
	UE7ubPo+v8WHeHBjAZLyFHHFP6LD+RPM6mMh+VysS7XOPufIoGUJez8jxEUlyU453rK0HrjhbpYEz
	UKWhoH1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umZh4-0000000HOih-3gfD;
	Thu, 14 Aug 2025 15:16:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umY7p-0000000H4PM-3c77
	for barebox@bombadil.infradead.org;
	Thu, 14 Aug 2025 13:36:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=NwfAx0s90CPHPSHgb0qsz6X9Q9uc123XjDCND6zruSw=; b=q0v3zCrN21I6nl3JRI4Y5reGSv
	FNaz646JUuYkLpV769E5kgvVLzQas4YFJvPSXLbssPXn3VBROvhfYfVuS0lGV4X9n1R2ziDX2vsZ8
	qVzW/skRt48oyeH8TTqhHFzAAl9WhaXPXLQOCmtwuNQDW5v8jMP7l66zM/+Ses3oqGtE6HWFk1K9L
	d3cyzvbZPlgp6mqpuqvKJmqkasJMVMYHiaNDhSzcL2B8TBAhdE89uxND5pi0QW1sBvZHWLez2usZv
	S4if7DFu0m5oHf81x8PlLMc1EIh4x+KjgCJZf4YPpYfFghPqGMpvSPi+jFOu02HIPHUOHG+0PT4to
	MV92lYvQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umY7m-0000000GPTp-0CcE
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 13:36:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umY7k-0002jD-2I; Thu, 14 Aug 2025 15:36:08 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umY7j-000GOG-2r;
	Thu, 14 Aug 2025 15:36:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfb-00Gwpv-1X;
	Thu, 14 Aug 2025 15:07:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 14 Aug 2025 15:06:55 +0200
Message-Id: <20250814130702.4039241-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
References: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_143610_191529_2DF2B2C9 
X-CRM114-Status: GOOD (  13.78  )
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
Subject: [PATCH RFC 10/17] commands: go: add security config option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The go command doesn't do any signature verification and allows
executing arbitrary code. Add a security option, so a policy can disable
this command at runtime.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Sconfig          |  1 +
 commands/Sconfig | 12 ++++++++++++
 commands/go.c    |  4 ++++
 3 files changed, 17 insertions(+)
 create mode 100644 commands/Sconfig

diff --git a/Sconfig b/Sconfig
index ee6ddf53bccb..93f5760ad96f 100644
--- a/Sconfig
+++ b/Sconfig
@@ -5,3 +5,4 @@ mainmenu "Barebox/$(ARCH) Security Configuration"
 source "scripts/Sconfig.include"
 
 source "security/Sconfig"
+source "commands/Sconfig"
diff --git a/commands/Sconfig b/commands/Sconfig
new file mode 100644
index 000000000000..7e6d937e162c
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
index 3449a2181ad0..640911d90db2 100644
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



