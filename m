Delivery-date: Fri, 17 May 2024 15:27:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7xci-001lOi-0v
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 15:27:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7xcg-0003ZI-Fq
	for lore@pengutronix.de; Fri, 17 May 2024 15:27:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vl1zA3cRGh12qF6K8QF2RI2asreISi7/ac8rCKn4zsU=; b=PAvbxdK5gOd+k9WNUa8SvIrj3F
	S3AK2GNlSALsCfo6kNk6oa64A3dVTUeg0RcXdCGdTAoFmmVi7riQRF1cMDuvzcgs/mPD7+J+Eb29q
	xW3UFFnJxqwhAs6LZYt5oIk65gpRIHI14g7TVq/FU1Oz+w1ZgO18rVISPWp/xh9jgLmtihjHG88Nt
	GrH2/sIpb3YAP47bnx6M42u6jI9/Bw7pNY6HTKmq7Jxx+Wc1vzuaCoEQ4Hy19sZQzDP61aKQ+2Io0
	r84X+smv4KNwSasZ4vSwWYEnEf+zL8RWjpDiEhdeInYf+CQeD6bNHjRZoGDQjjLla2Lgs7HKh7FiC
	CBHd3N1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7xc4-00000007woB-3CIF;
	Fri, 17 May 2024 13:27:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7xbx-00000007wjd-3lNI
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 13:27:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7xbt-00033D-QX; Fri, 17 May 2024 15:26:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7xbt-001sCX-D7; Fri, 17 May 2024 15:26:57 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7xbt-00DEM4-12;
	Fri, 17 May 2024 15:26:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Hemer <S.Hemer@phytec.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 15:26:56 +0200
Message-Id: <20240517132656.3151273-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240517132656.3151273-1-a.fatoum@pengutronix.de>
References: <20240517132656.3151273-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_062702_089402_1DBF49A6 
X-CRM114-Status: GOOD (  15.22  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/8] sandbox: add headless_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Build with no console whatsoever is not a common configuration for
development, but is used in some verified boot scenarios. Some
configurations go even further and disable the shell altogether.
Add headless.config and noshell.config fragments that describes these
configurations and sandbox targets that makes use of them.

This will be automatically found by CI and built to ensure that we
don't inadvertently break CONFIG_CONSOLE_NONE and CONFIG_SHELL_NONE
without noticing.

Platforms with CONFIG_CONSOLE_NONE are also likely to disable the
DEFAULT_ENVIRONMENT, so this is added to headless_defconfig as well.

More options can be added to the configs as needed to increase CI's
build coverage.

Cc: Steffen Hemer <S.Hemer@phytec.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/Makefile                 | 8 ++++++++
 common/boards/configs/headless.config | 3 +++
 common/boards/configs/noshell.config  | 2 ++
 3 files changed, 13 insertions(+)
 create mode 100644 common/boards/configs/headless.config
 create mode 100644 common/boards/configs/noshell.config

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index c2906c0b1c0c..d5327d44e097 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -2,6 +2,14 @@
 
 KBUILD_DEFCONFIG := sandbox_defconfig
 
+generated_configs += headless_defconfig noshell_defconfig lockdown_defconfig
+headless_defconfig:
+	$(call merge_into_defconfig,sandbox_defconfig,headless)
+noshell_defconfig:
+	$(call merge_into_defconfig,sandbox_defconfig,noshell)
+lockdown_defconfig:
+	$(call merge_into_defconfig,sandbox_defconfig,headless noshell)
+
 KBUILD_CPPFLAGS += -D__SANDBOX__ -fno-strict-aliasing -fvisibility=hidden
 
 
diff --git a/common/boards/configs/headless.config b/common/boards/configs/headless.config
new file mode 100644
index 000000000000..f1eb1e6fa717
--- /dev/null
+++ b/common/boards/configs/headless.config
@@ -0,0 +1,3 @@
+CONFIG_CONSOLE_NONE=y
+# CONFIG_ENV_HANDLING is not set
+CONFIG_DEFAULT_ENVIRONMENT=y
diff --git a/common/boards/configs/noshell.config b/common/boards/configs/noshell.config
new file mode 100644
index 000000000000..4696a1b3f971
--- /dev/null
+++ b/common/boards/configs/noshell.config
@@ -0,0 +1,2 @@
+CONFIG_SHELL_NONE=y
+# CONFIG_DISABLE_INPUT is not set
-- 
2.39.2



