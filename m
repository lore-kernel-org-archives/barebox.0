Delivery-date: Tue, 04 Oct 2022 17:50:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofkBS-005hwm-JF
	for lore@lore.pengutronix.de; Tue, 04 Oct 2022 17:50:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofkBR-0004pJ-Ga
	for lore@pengutronix.de; Tue, 04 Oct 2022 17:50:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2aB1faBzKgIGLBQQQpLxI2sTmab8oR5uSXv0bnFRSrY=; b=j4rrB/u619kTx4TJ7Y7Tt0n7Us
	NM+4Lh7y70ApMJjypmmatBWZwU+915Q1YSnJEtGOujJZWc3WtQ89vrwxspWQwmYgV6n+RR72umnPC
	CtP6P1FLXdOGU+C6lh/FXYNxlvTH8xgfZ0safAtf2kf7xfayqnAqx4dMSGwtCHqyt/2hombg+T8OT
	8LNWTaQaTUwp8qMF4IpBhlHwfBGH4DYuVdRX/279n2U6o1vTgUv8nKG5bMEYY7YY58UswrtcymMO4
	yqzc6wz/e9gm6V4V5Ata4r0EML9XN1F3gX4YBTsPgWvdU2PsmxtF4hLLkrHESU27NYmxdWRmphAH+
	j0UZ0kIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofk9Y-00A7EU-Jp; Tue, 04 Oct 2022 15:48:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofk9S-00A7DB-JF
	for barebox@lists.infradead.org; Tue, 04 Oct 2022 15:48:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ofk9L-0004aO-Hg; Tue, 04 Oct 2022 17:48:03 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ofk9L-004aks-97; Tue, 04 Oct 2022 17:48:01 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ofk9J-00EVbj-5n; Tue, 04 Oct 2022 17:48:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  4 Oct 2022 17:48:00 +0200
Message-Id: <20221004154800.3457742-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_084810_653046_56A7EFBB 
X-CRM114-Status: GOOD (  12.03  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] sandbox: implement DEBUG_LL support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We can't currently debug malloc() or early parts of the driver model on
sandbox, because we require both to allocate the sandbox console device.

To make debugging such early startup easier in future, add some simple
DEBUG_LL support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/Kconfig                |  1 +
 arch/sandbox/Makefile               |  3 ++-
 arch/sandbox/include/asm/debug_ll.h | 16 ++++++++++++++++
 3 files changed, 19 insertions(+), 1 deletion(-)
 create mode 100644 arch/sandbox/include/asm/debug_ll.h

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index a8bca8757f28..d3889fcac03c 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -16,6 +16,7 @@ config SANDBOX
 	select ARCH_HAS_STACK_DUMP if ASAN
 	select GENERIC_FIND_NEXT_BIT
 	select HAS_ARCH_SJLJ
+	select HAS_ASM_DEBUG_LL
 	default y
 
 config ARCH_TEXT_BASE
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index aee6bccc9c14..d5ba05ba866f 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -30,7 +30,8 @@ KBUILD_CFLAGS += -Dmalloc=barebox_malloc -Dcalloc=barebox_calloc \
 		-Dopendir=barebox_opendir -Dreaddir=barebox_readdir \
 		-Dclosedir=barebox_closedir -Dreadlink=barebox_readlink \
 		-Doptarg=barebox_optarg -Doptind=barebox_optind \
-		-Dsetjmp=barebox_setjmp -Dlongjmp=barebox_longjmp
+		-Dsetjmp=barebox_setjmp -Dlongjmp=barebox_longjmp \
+		-Dputchar=barebox_putchar
 
 machdirs := $(patsubst %,arch/sandbox/mach-%/,$(machine-y))
 
diff --git a/arch/sandbox/include/asm/debug_ll.h b/arch/sandbox/include/asm/debug_ll.h
new file mode 100644
index 000000000000..7bef8710581e
--- /dev/null
+++ b/arch/sandbox/include/asm/debug_ll.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __ASM_DEBUG_LL__
+#define __ASM_DEBUG_LL__
+
+#undef putchar
+
+static inline void PUTC_LL(char ch)
+{
+	int putchar(int c);
+	putchar(ch);
+}
+
+#define putchar barebox_putchar
+
+#endif /* __ASM_DEBUG_LL__ */
-- 
2.30.2



