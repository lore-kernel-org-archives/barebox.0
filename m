Delivery-date: Fri, 05 Aug 2022 09:44:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJs05-00CFU3-3a
	for lore@lore.pengutronix.de; Fri, 05 Aug 2022 09:44:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJs05-0006G7-D5
	for lore@pengutronix.de; Fri, 05 Aug 2022 09:44:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HTFugn/pTAhuyvX/vwegqMljJQeuup8/ZvahSncBoGw=; b=TCDA8ynPn/J/udCy+NBeu7nWO5
	EfrowrsJejZB21kNFEtHbtkjytTZ3l6GsfIL+LBGmwpjHPGnu5RR48KU7MwROayXVOjUKuV5wjyRt
	y5+wDWYsGaX+Ll27tMZ9oI6yvV+ZcnS7xqXJsDTF3wZoWl/5dPXh7UnDYdd/4yiFguIFh1XefQQKq
	iE7uaWk+P9oZ4/g2sUFoYPtnQ7T2v1yt5H4n3AxQsVPoFcBWAeaxxhJoztFlgNrY2ANuj0WsdPwGC
	DXPzuwUxc7KzMQtBbTvRPoBNa5wk3pF1qzOZC35YWjnGHBM05HZyuKb25hHfAQ5JTtKw8MQGzU85c
	7s6kAGnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJryt-00Cxk2-17; Fri, 05 Aug 2022 07:42:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJryj-00Cxgf-Dk
	for barebox@lists.infradead.org; Fri, 05 Aug 2022 07:42:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oJryi-00064i-7J; Fri, 05 Aug 2022 09:42:40 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJryf-001qko-8N; Fri, 05 Aug 2022 09:42:39 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJryg-004pBN-He; Fri, 05 Aug 2022 09:42:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  5 Aug 2022 09:42:35 +0200
Message-Id: <20220805074237.1148255-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220805_004241_485803_2BCF95E4 
X-CRM114-Status: GOOD (  12.87  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] RISC-V: asm: factor relocation related functions into asm/reloc.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To allow use of global_variable_offset() from common PBL code,
move the definition into a new <asm/reloc.h> header.
At current time, it's expected that PBL enabled platforms define
at least get_runtime_offset() there.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/include/asm/barebox-riscv.h |  7 +------
 arch/riscv/include/asm/reloc.h         | 15 +++++++++++++++
 include/asm-generic/reloc.h            | 10 ++++++++++
 3 files changed, 26 insertions(+), 6 deletions(-)
 create mode 100644 arch/riscv/include/asm/reloc.h
 create mode 100644 include/asm-generic/reloc.h

diff --git a/arch/riscv/include/asm/barebox-riscv.h b/arch/riscv/include/asm/barebox-riscv.h
index 5c87d37c9eb8..db6ff0ea7131 100644
--- a/arch/riscv/include/asm/barebox-riscv.h
+++ b/arch/riscv/include/asm/barebox-riscv.h
@@ -21,12 +21,7 @@
 #include <asm/barebox-riscv-head.h>
 #include <asm/system.h>
 #include <asm/cache.h>
-
-unsigned long get_runtime_offset(void);
-
-void setup_c(void);
-void relocate_to_current_adr(void);
-void relocate_to_adr(unsigned long target);
+#include <asm/reloc.h>
 
 void __noreturn __naked barebox_riscv_entry(unsigned long membase, unsigned long memsize,
 					    void *boarddata, unsigned int flags);
diff --git a/arch/riscv/include/asm/reloc.h b/arch/riscv/include/asm/reloc.h
new file mode 100644
index 000000000000..9a59326cad27
--- /dev/null
+++ b/arch/riscv/include/asm/reloc.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef _ASM_RELOC_H_
+#define _ASM_RELOC_H_
+
+unsigned long get_runtime_offset(void);
+
+void relocate_to_current_adr(void);
+void relocate_to_adr(unsigned long target);
+
+void setup_c(void);
+
+#include <asm-generic/reloc.h>
+
+#endif	/* _BAREBOX_RISCV_H_ */
diff --git a/include/asm-generic/reloc.h b/include/asm-generic/reloc.h
new file mode 100644
index 000000000000..90459371ebe8
--- /dev/null
+++ b/include/asm-generic/reloc.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef _ASM_GENERIC_RELOC_H_
+#define _ASM_GENERIC_RELOC_H_
+
+#ifndef global_variable_offset
+#define global_variable_offset() get_runtime_offset()
+#endif
+
+#endif
-- 
2.30.2



