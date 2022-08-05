Delivery-date: Fri, 05 Aug 2022 09:44:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJs00-00CFTD-Mh
	for lore@lore.pengutronix.de; Fri, 05 Aug 2022 09:44:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJs01-0006F0-Kb
	for lore@pengutronix.de; Fri, 05 Aug 2022 09:44:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MVyDRsbnAQ0Ru1IuF9V4kPFQQi24BCZwyA+ZKWo7hbA=; b=sDnxNlUB36uhcx2cj/d5Xc+MRr
	GKyVxk117ZuPT80PoPHLaDq4ed3vz3LKSLHbAJwNBWZ37zlj4rEsEgrQQ+9p15uLKjEN6aWGc8hhd
	ls3fQysaEjuaAvCL0D3X4KmlKRdNRGa/In9KSpQmBPfn2jHnG7Hr4FBTsBk1fYc/D6EIXM3ZIyomM
	2QQH+K8a7ulhznVgKWXZm8GZ49xtSSAERIKBgFyPzHtYZ07kbmngAndpSCv26QHO8Y1thRGgHYoy7
	WWtGCkPyjYpmdPcQV2bg3PbUJ7JwaGHx0WJqLVTiCrYjaER5BxOHKNfcRuvb2vayvjV02EwtzW8A7
	oRjRiI/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJryq-00Cxj1-Bz; Fri, 05 Aug 2022 07:42:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJryj-00Cxgd-CG
	for barebox@lists.infradead.org; Fri, 05 Aug 2022 07:42:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oJryi-00064h-6U; Fri, 05 Aug 2022 09:42:40 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJryf-001qkl-7e; Fri, 05 Aug 2022 09:42:39 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJryg-004pBa-IP; Fri, 05 Aug 2022 09:42:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  5 Aug 2022 09:42:37 +0200
Message-Id: <20220805074237.1148255-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220805074237.1148255-1-a.fatoum@pengutronix.de>
References: <20220805074237.1148255-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220805_004241_440240_16153059 
X-CRM114-Status: GOOD (  11.31  )
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
Subject: [PATCH 3/3] MIPS: asm: add get_runtime_offset stub
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

MIPS' relocation setup differs from ARM and RISC-V, but as it always
happen within assembly, we can assume C code to always be relocated,
which allows a trivial implementation of get_runtime_offset().

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/mips/include/asm/reloc.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 arch/mips/include/asm/reloc.h

diff --git a/arch/mips/include/asm/reloc.h b/arch/mips/include/asm/reloc.h
new file mode 100644
index 000000000000..adffd6f1c7ef
--- /dev/null
+++ b/arch/mips/include/asm/reloc.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef _ASM_RELOC_H_
+#define _ASM_RELOC_H_
+
+static inline unsigned long get_runtime_offset(void)
+{
+	/* On MIPS, we always relocate before jumping into C */
+	return 0;
+}
+
+#include <asm-generic/reloc.h>
+
+#endif
-- 
2.30.2



