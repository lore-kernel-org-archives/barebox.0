Delivery-date: Thu, 27 Mar 2025 15:59:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txohp-004uZ9-1k
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 15:59:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txoho-0000kq-U6
	for lore@pengutronix.de; Thu, 27 Mar 2025 15:59:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kRYLC21S4JgMag9Pc7Ni4TwtLPZQw7VpzDChXhLIwmc=; b=TC+6DurpcahYtbLVK+IGZjlbjJ
	o1BnGJ26mB2bleciT+E004TtUUJNQf5xwONh87cdUsWgDZPrjPLiHZoM1W4InqsxNwRGY2mrmwZ8z
	YYeSmfrmYXwgM4uHHOmutAof3lXJms6TfEdZ+q2sJtroq0vXgPPlsDZ3Nv8S+uLWnc8Wtfgvab+AK
	wL+TP10t5kwcsAG4uQ2PqfqF618m/yJGc3AvtsLdHx2LsBhE+SgEVh725LqWTnOGfBE1LetM1PA5S
	dez7ETVoMFDnJBKxjaOx3AMI1QavFSurzcE2BDhR2IcmGxNHpTBgW+yOYTsJQG96MvjJdXXVhGOUX
	A6p6xjAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txohK-0000000BHjQ-01OT;
	Thu, 27 Mar 2025 14:59:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txoWK-0000000BFop-1wAP
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 14:47:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txoWJ-0006Jd-35; Thu, 27 Mar 2025 15:47:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txoWI-001wht-2s;
	Thu, 27 Mar 2025 15:47:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txoWI-007jNu-2Z;
	Thu, 27 Mar 2025 15:47:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 27 Mar 2025 15:47:39 +0100
Message-Id: <20250327144742.1841423-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250327144742.1841423-1-a.fatoum@pengutronix.de>
References: <20250327144742.1841423-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_074748_507352_76F5AA89 
X-CRM114-Status: GOOD (  11.84  )
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
Subject: [PATCH 1/4] sandbox: env: switch from CONFIG_DEFAULT_ENVIRONMENT_PATH to bbenv-y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

By moving it out of the config, the sandbox default environment is always
there, even when building allyesconfig.

This introduces no functional change for sandbox_defconfig, but
is useful as we start running tests against allyesconfig and want
the same environment (autoboot abortion by default) in any case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/board/Makefile                                 | 1 +
 arch/sandbox/board/board.c                                  | 3 +++
 arch/sandbox/board/{env => defaultenv-sandbox}/network/eth0 | 0
 arch/sandbox/board/{env => defaultenv-sandbox}/nv/autoboot  | 0
 arch/sandbox/configs/sandbox_defconfig                      | 2 +-
 5 files changed, 5 insertions(+), 1 deletion(-)
 rename arch/sandbox/board/{env => defaultenv-sandbox}/network/eth0 (100%)
 rename arch/sandbox/board/{env => defaultenv-sandbox}/nv/autoboot (100%)

diff --git a/arch/sandbox/board/Makefile b/arch/sandbox/board/Makefile
index 029bfe7ff163..2b6346f6098d 100644
--- a/arch/sandbox/board/Makefile
+++ b/arch/sandbox/board/Makefile
@@ -12,6 +12,7 @@ obj-y += dev-random.o
 obj-y += watchdog.o
 obj-$(CONFIG_CMD_SANDBOX_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_LED) += led.o
+bbenv-y += defaultenv-sandbox
 
 extra-y += barebox.lds
 
diff --git a/arch/sandbox/board/board.c b/arch/sandbox/board/board.c
index c8d1c99897f5..58a7b8c96f62 100644
--- a/arch/sandbox/board/board.c
+++ b/arch/sandbox/board/board.c
@@ -15,6 +15,7 @@
  */
 
 #include <common.h>
+#include <envfs.h>
 #include <driver.h>
 #include <malloc.h>
 #include <mach/linux.h>
@@ -59,6 +60,8 @@ static int devices_init(struct device *dev)
 
 	platform_device_register(&devrandom_device);
 
+	defaultenv_append_directory(defaultenv_sandbox);
+
 	return 0;
 }
 
diff --git a/arch/sandbox/board/env/network/eth0 b/arch/sandbox/board/defaultenv-sandbox/network/eth0
similarity index 100%
rename from arch/sandbox/board/env/network/eth0
rename to arch/sandbox/board/defaultenv-sandbox/network/eth0
diff --git a/arch/sandbox/board/env/nv/autoboot b/arch/sandbox/board/defaultenv-sandbox/nv/autoboot
similarity index 100%
rename from arch/sandbox/board/env/nv/autoboot
rename to arch/sandbox/board/defaultenv-sandbox/nv/autoboot
diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index 251af8d0ef31..4cc9d9982c1a 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -9,7 +9,7 @@ CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_COMPRESSION_GZIP=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/sandbox/board/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH=""
 CONFIG_STATE=y
 CONFIG_STATE_CRYPTO=y
 CONFIG_RESET_SOURCE=y
-- 
2.39.5



