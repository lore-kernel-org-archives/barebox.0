Delivery-date: Mon, 25 Nov 2024 16:36:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb84-000GID-0C
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:36:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb83-00051v-6d
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:36:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CbZkm7Y/VwuGKiW+v7YlPy0qPv8BuUBfeZUofJkj/W8=; b=acOwyq2qwSba+v5NE55sd6MzQM
	5V0Ki9lOySwunrJ8IyknQl0JwoVt0i0Jm5+9R+2ahDe0+Jd8q0VDOVq4oq7ztctyI7V/K8uJuPolF
	SoTSy6SNZkirWDo1mV9Qwgg+2314FTFbbqoRC8hffA4nYdm3Z5oNCWBv7hR3a845JSxGnEgHMK1F2
	H92JIWLT900O5tfNdzYdMmGdbASvyNan1OR3oWEcBFSYjRNcK4JiwiDZhTexf+sYGE0tohfQAF68Q
	o+aC2XaNf3T/EyVz0bGsXzmPmAA+YvpyPBAYjrVoprEoJ1Sq2rAQYV0WmYlKna0lVwBthgH1ss0Yk
	Smy88Psw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb7b-00000008Vxl-3DT4;
	Mon, 25 Nov 2024 15:35:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb7W-00000008Vsj-1UER
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:35:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb7V-0004YM-5G; Mon, 25 Nov 2024 16:35:25 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb7U-0006VI-0I;
	Mon, 25 Nov 2024 16:35:24 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb7U-006GiN-0V;
	Mon, 25 Nov 2024 16:35:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:35:19 +0100
Message-Id: <20241125153523.1411849-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125153523.1411849-1-a.fatoum@pengutronix.de>
References: <20241125153523.1411849-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_073526_393962_2AFC1ECB 
X-CRM114-Status: GOOD (  13.90  )
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
Subject: [PATCH 5/9] sandbox: use native setjmp/longjmp/initjmp implementation by default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In order to implement initjmp, we have two ways with available
functionality: The sigaltstack we are currently using and
makecontext/swapcontext. makecontext/swapcontext are unfortunately
deprecated in favor of POSIX threads and the sigaltstack runs afoul of
AddressSanitizer.

Let's therefore use the assembly version if we are using ASAN.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/um/Makefile      | 12 ++++++++++++
 arch/kvx/um/Makefile      |  6 ++++++
 arch/mips/um/Makefile     |  6 ++++++
 arch/openrisc/um/Makefile |  6 ++++++
 arch/powerpc/um/Makefile  |  6 ++++++
 arch/riscv/um/Makefile    |  6 ++++++
 arch/sandbox/Kconfig      |  8 ++++++++
 arch/x86/um/Makefile      | 12 ++++++++++++
 8 files changed, 62 insertions(+)
 create mode 100644 arch/arm/um/Makefile
 create mode 100644 arch/kvx/um/Makefile
 create mode 100644 arch/mips/um/Makefile
 create mode 100644 arch/openrisc/um/Makefile
 create mode 100644 arch/powerpc/um/Makefile
 create mode 100644 arch/riscv/um/Makefile
 create mode 100644 arch/x86/um/Makefile

diff --git a/arch/arm/um/Makefile b/arch/arm/um/Makefile
new file mode 100644
index 000000000000..380f59fdade2
--- /dev/null
+++ b/arch/arm/um/Makefile
@@ -0,0 +1,12 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj- := __dummy__.o
+
+ifeq ($(CONFIG_32BIT),y)
+	BITS := 32
+else
+	BITS := 64
+endif
+
+AFLAGS_../lib$(BITS)/setjmp.pbl.o := -Dsetjmp=barebox_setjmp -Dlongjmp=barebox_longjmp
+pbl-$(CONFIG_SANDBOX_SJLJ_ASM) += ../lib$(BITS)/setjmp.o
diff --git a/arch/kvx/um/Makefile b/arch/kvx/um/Makefile
new file mode 100644
index 000000000000..367946d33ac3
--- /dev/null
+++ b/arch/kvx/um/Makefile
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj- := __dummy__.o
+
+AFLAGS_../lib/setjmp.pbl.o := -Dsetjmp=barebox_setjmp -Dlongjmp=barebox_longjmp
+pbl-$(CONFIG_SANDBOX_SJLJ_ASM) += ../lib/setjmp.o
diff --git a/arch/mips/um/Makefile b/arch/mips/um/Makefile
new file mode 100644
index 000000000000..367946d33ac3
--- /dev/null
+++ b/arch/mips/um/Makefile
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj- := __dummy__.o
+
+AFLAGS_../lib/setjmp.pbl.o := -Dsetjmp=barebox_setjmp -Dlongjmp=barebox_longjmp
+pbl-$(CONFIG_SANDBOX_SJLJ_ASM) += ../lib/setjmp.o
diff --git a/arch/openrisc/um/Makefile b/arch/openrisc/um/Makefile
new file mode 100644
index 000000000000..367946d33ac3
--- /dev/null
+++ b/arch/openrisc/um/Makefile
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj- := __dummy__.o
+
+AFLAGS_../lib/setjmp.pbl.o := -Dsetjmp=barebox_setjmp -Dlongjmp=barebox_longjmp
+pbl-$(CONFIG_SANDBOX_SJLJ_ASM) += ../lib/setjmp.o
diff --git a/arch/powerpc/um/Makefile b/arch/powerpc/um/Makefile
new file mode 100644
index 000000000000..367946d33ac3
--- /dev/null
+++ b/arch/powerpc/um/Makefile
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj- := __dummy__.o
+
+AFLAGS_../lib/setjmp.pbl.o := -Dsetjmp=barebox_setjmp -Dlongjmp=barebox_longjmp
+pbl-$(CONFIG_SANDBOX_SJLJ_ASM) += ../lib/setjmp.o
diff --git a/arch/riscv/um/Makefile b/arch/riscv/um/Makefile
new file mode 100644
index 000000000000..367946d33ac3
--- /dev/null
+++ b/arch/riscv/um/Makefile
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj- := __dummy__.o
+
+AFLAGS_../lib/setjmp.pbl.o := -Dsetjmp=barebox_setjmp -Dlongjmp=barebox_longjmp
+pbl-$(CONFIG_SANDBOX_SJLJ_ASM) += ../lib/setjmp.o
diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index caff3a138fea..4cc3b201c399 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -65,6 +65,14 @@ config CMD_SANDBOX_CPUINFO
 	help
 	  Say yes here to get a dummy cpuinfo command.
 
+config SANDBOX_SJLJ_ASM
+	bool "use setjmp/longjmp/initjmp implemented in assembly" if COMPILE_TEST
+	default y
+	help
+	  sandbox has a C implementation of initjmp, which can run afoul of code
+	  hardening measures like ASAN. The assembly version isn't immune to these
+	  issues, but it's easier to reason about than the sigaltstack hack.
+
 config SDL
 	bool
 
diff --git a/arch/x86/um/Makefile b/arch/x86/um/Makefile
new file mode 100644
index 000000000000..d3764221a4c6
--- /dev/null
+++ b/arch/x86/um/Makefile
@@ -0,0 +1,12 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj- := __dummy__.o
+
+ifeq ($(CONFIG_32BIT),y)
+	BITS := 32
+else
+	BITS := 64
+endif
+
+AFLAGS_../lib/setjmp_$(BITS).o := -Dsetjmp=barebox_setjmp -Dlongjmp=barebox_longjmp
+obj-$(CONFIG_SANDBOX_SJLJ_ASM) += ../lib/setjmp_$(BITS).o
-- 
2.39.5



