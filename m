Delivery-date: Mon, 12 Feb 2024 16:46:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZYW8-003YWJ-2c
	for lore@lore.pengutronix.de;
	Mon, 12 Feb 2024 16:46:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZYW8-0006n7-6u
	for lore@pengutronix.de; Mon, 12 Feb 2024 16:46:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SOvL/RDVwZnm2dGRwtuJQwTbV4aGRmr+CQAHYi1T43c=; b=tyZC+PIQ2PlnZZg3XbGavdbyvd
	oOzBrGkHEG8nlaOHFg487JwVAlvKWuDszKHwgnFqTyMN9wFspIbK9ZemeFs2CKlNF715VCsmMw2zb
	TlWkoAZT35gsh2KD5jLQ9b814pz5Kt8cwG8lmpxQEncvL/hYltwqzknYAyaYLW4JgmDO8X5aoHR9K
	Upl/zIreXNBFCoGnZWcKVrEfyLEaGNmGRcjuAQP/H54qCaq9x94scRxFBPanrp2zQ1Js+bV56QK+7
	20F0Y1pBKFazayduLh5a3tqHMMqzqC8rENH0W3Vtyuhz+7PC33we8WcE2V487VcY5gij04dQgzyvo
	27TSUrTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZYVi-0000000615a-2bG6;
	Mon, 12 Feb 2024 15:46:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZYVf-0000000614J-3Moq
	for barebox@lists.infradead.org;
	Mon, 12 Feb 2024 15:46:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rZYVe-0006gK-Lr; Mon, 12 Feb 2024 16:46:18 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rZYVe-000Jc7-9R; Mon, 12 Feb 2024 16:46:18 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rZYVe-009U3j-0e;
	Mon, 12 Feb 2024 16:46:18 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Joacim Zetterling <joacim.zetterling@westermo.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Feb 2024 16:46:17 +0100
Message-Id: <20240212154617.2260448-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_074619_865548_45FD9245 
X-CRM114-Status: GOOD (  14.15  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: at91: sama5d27-som1: autoping watchdog during barebox runtime
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The BootROM arms the watchdog with the maximum timeout of 16 seconds on
boot. This is ample time to boot into Linux userspace, so so far we
didn't touch the watchdog for the SAMA5D2 in barebox and expected the
user to disable the watchdog manually, e.g. via the `wd -x` command or
by storing nv.autoboot=abort into the environment.

While this works, this is admittedly bad user experience, so let's just
enable watchdog polling in barebox instead. That way, we still have
watchdog supervision, but don't reset when dropping into the barebox
shell.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/sama5d27-som1/Makefile                        | 1 +
 arch/arm/boards/sama5d27-som1/board.c                         | 4 ++++
 .../defaultenv-sama5d27-som1/nv/dev.wdog0.autoping            | 1 +
 arch/arm/configs/at91_multi_defconfig                         | 1 +
 4 files changed, 7 insertions(+)
 create mode 100644 arch/arm/boards/sama5d27-som1/defaultenv-sama5d27-som1/nv/dev.wdog0.autoping

diff --git a/arch/arm/boards/sama5d27-som1/Makefile b/arch/arm/boards/sama5d27-som1/Makefile
index 5678718188b9..96cd8f520f5a 100644
--- a/arch/arm/boards/sama5d27-som1/Makefile
+++ b/arch/arm/boards/sama5d27-som1/Makefile
@@ -2,3 +2,4 @@
 
 lwl-y += lowlevel.o
 obj-y += board.o
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT) += defaultenv-sama5d27-som1
diff --git a/arch/arm/boards/sama5d27-som1/board.c b/arch/arm/boards/sama5d27-som1/board.c
index 00c0e92a5da3..6fa903bca4f6 100644
--- a/arch/arm/boards/sama5d27-som1/board.c
+++ b/arch/arm/boards/sama5d27-som1/board.c
@@ -5,6 +5,7 @@
 #include <init.h>
 #include <asm/memory.h>
 #include <bbu.h>
+#include <envfs.h>
 #include <bootsource.h>
 #include <of.h>
 
@@ -30,6 +31,9 @@ static int ek_device_init(void)
 				     filetype_arm_barebox);
 	bbu_register_std_file_update("microSD", flags_usd, "/mnt/mmc1.0/barebox.bin",
 				     filetype_arm_barebox);
+
+	defaultenv_append_directory(defaultenv_sama5d27_som1);
+
 	return 0;
 }
 device_initcall(ek_device_init);
diff --git a/arch/arm/boards/sama5d27-som1/defaultenv-sama5d27-som1/nv/dev.wdog0.autoping b/arch/arm/boards/sama5d27-som1/defaultenv-sama5d27-som1/nv/dev.wdog0.autoping
new file mode 100644
index 000000000000..d00491fd7e5b
--- /dev/null
+++ b/arch/arm/boards/sama5d27-som1/defaultenv-sama5d27-som1/nv/dev.wdog0.autoping
@@ -0,0 +1 @@
+1
diff --git a/arch/arm/configs/at91_multi_defconfig b/arch/arm/configs/at91_multi_defconfig
index e24bb36c2890..01e4526329f4 100644
--- a/arch/arm/configs/at91_multi_defconfig
+++ b/arch/arm/configs/at91_multi_defconfig
@@ -132,6 +132,7 @@ CONFIG_KEYBOARD_QT1070=y
 CONFIG_KEYBOARD_USB=y
 CONFIG_INPUT_SPECIALKEYS=y
 CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_POLLER=y
 CONFIG_WATCHDOG_AT91SAM9=y
 CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED=y
-- 
2.39.2



