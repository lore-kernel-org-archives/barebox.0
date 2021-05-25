Delivery-date: Tue, 25 May 2021 09:21:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llRO1-0008Cq-Uu
	for lore@lore.pengutronix.de; Tue, 25 May 2021 09:21:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llRO0-0003lZ-2G
	for lore@pengutronix.de; Tue, 25 May 2021 09:21:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y/pTjG4Ij6dro8DXV5EuSm87rJ/Y6tc4HbMqL2YARyE=; b=WQV6IMjtviMrV9
	Zqf5hgxDZlrnYVbf3nTAQhLG7GKlv6MYQLJ7C9gDJZrQgl5hd4J4iPgaoIuPnAJCUfaFH+B299T8M
	UWy1iKuW8zpZc7fhOZJ0GZXq26Ih9FKWtHNVQGCAd27aCXRBDZf4NCssfOrcVsJPADUQPnvy/Is0T
	+L2c3Sw7VN9BSXghdeg86qRkpf5vQBlyWB49+ETZabwYevg8LU/qh0a+EApCvbLehFW7cfeVzuInz
	o+wMBK4NAIsZ5spOYjB3nRn4Qzw9FoZjUWKl63Mex1eZeF/UWLPreIs0MVFesICOOba4KzVg54Po0
	Psbf/9b/hdiLFU9jjD0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llRMf-003pwn-2y; Tue, 25 May 2021 07:20:33 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llRMF-003pnN-1B
 for barebox@lists.infradead.org; Tue, 25 May 2021 07:20:09 +0000
Received: by mail-lf1-x12a.google.com with SMTP id j10so44444338lfb.12
 for <barebox@lists.infradead.org>; Tue, 25 May 2021 00:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Uk9N6PQPvl4eIJyzcHli7AigSQrr93i3EWZaYMRmROo=;
 b=VcjPL83h/TumCFuGo1RcG9vYaPNL/M/VHGP3w6s3L5KeQaqZhFpRLj22TcFoYoj1K+
 Us5/B/jzJaFs5FaOZwCjk+DXKRZDf/RizyPrzaCWVeyYYL1maoDQ6EtUxr+R9TwtYS1y
 nxUnusWKzFzmaHERuLSyXuPobVWaK21JsEb2/tZNEhPgrp4yQ9RmUbBjjSTxM07lZHxj
 feR8gSblbWxcCGaL0ANdi7aJfjSXWsgX1KxfMOkmrd18pgROPYiYLm8GaUpiOd00oaF/
 JCsSQTbGeuuCi+cWyMvzLBrFTIv/BgenKCul56cbU3JBwWtHBs55HCIMe+mV2oYQF84q
 peRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Uk9N6PQPvl4eIJyzcHli7AigSQrr93i3EWZaYMRmROo=;
 b=ltFArkQUOieMPU2GIfDsMXLQ3Y8iBTCTixc4wlfn1r3/vfnhX4IIPZbdgxlYBCyIrP
 lz5AOmtOb42aDXYRlOmnwQviwJjqOnahb/KVoO94QeltODPBPAZScoErezmrSErunsWL
 8JFEHT31itzqzNgQaKwb7yMDUbRKK6y/DYNWhbxkXbxv1bUIPv3mobscNoH8q9nkRrD9
 prl05/dENfbQaCRJ0oS/pagT+MukNAbQycvoJYcGAmAl3474G//GFYbHHlu9nEbnUw5Q
 nFfUMrihwxibSsvVBIY4ZlbzANWLmV+27Dbuk6Gkrr26uHITIjkNvCcORef8eRMI8QDV
 jUvQ==
X-Gm-Message-State: AOAM531KHHdmooHmjYgnXRCzXWt1CKAjrmkLbBdPjaMm/yi5mVEo/RKn
 IMcvNf0MtzQwJn3QSxDukpbXVq7DeK+GVw==
X-Google-Smtp-Source: ABdhPJwTbqOB9il6FWK6CzC5oEPcD1ZHRV01xStURbDwODf7mCO2AihxCS8MSRMyuz/WAgu8To0KEw==
X-Received: by 2002:a05:6512:3d07:: with SMTP id
 d7mr4571459lfv.174.1621927205231; 
 Tue, 25 May 2021 00:20:05 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-17.dynamic.spd-mgts.ru.
 [109.252.203.17])
 by smtp.gmail.com with ESMTPSA id f36sm1641387lfv.248.2021.05.25.00.20.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 May 2021 00:20:04 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 May 2021 10:19:44 +0300
Message-Id: <20210525071952.18045-3-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210525071952.18045-1-antonynpavlov@gmail.com>
References: <20210525071952.18045-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_002007_113145_85C7516C 
X-CRM114-Status: GOOD (  14.56  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 02/10] RISC-V: make it possible to run nmon from PBL C code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

After migrating to PBL we can't use nmon assembler macro
in C code anymore. Some changes are introduced to invoke
nmon from PBL C code:

  * use 'lla' macro instruction instead of 'la';
  * don't touch the 'ra' register, use 'a2' instead;
  * add wrapper C function for nmon.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/boot/Makefile            |  1 +
 arch/riscv/boot/nmon_entry.S        | 13 ++++++++
 arch/riscv/include/asm/riscv_nmon.h | 49 +++++++++++++++++++----------
 3 files changed, 46 insertions(+), 17 deletions(-)

diff --git a/arch/riscv/boot/Makefile b/arch/riscv/boot/Makefile
index 968a826d16..80f63a4a0a 100644
--- a/arch/riscv/boot/Makefile
+++ b/arch/riscv/boot/Makefile
@@ -1,4 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-y += start.o
 pbl-y += entry.o uncompress.o
+pbl-y += nmon_entry.o
 pbl-$(CONFIG_BOARD_GENERIC_DT) += board-dt-2nd.o
diff --git a/arch/riscv/boot/nmon_entry.S b/arch/riscv/boot/nmon_entry.S
new file mode 100644
index 0000000000..ae017d2a1c
--- /dev/null
+++ b/arch/riscv/boot/nmon_entry.S
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#include <linux/linkage.h>
+#include <asm/sections.h>
+
+#include "asm/debug_ll.h"
+#include "asm/riscv_nmon.h"
+
+.section .text_bare_init
+
+ENTRY(__barebox_nmon_entry)
+	riscv_nmon
+	ret
+ENDPROC(__barebox_nmon_entry)
diff --git a/arch/riscv/include/asm/riscv_nmon.h b/arch/riscv/include/asm/riscv_nmon.h
index caf213cdd8..8a44e216d7 100644
--- a/arch/riscv/include/asm/riscv_nmon.h
+++ b/arch/riscv/include/asm/riscv_nmon.h
@@ -16,13 +16,26 @@
 #ifndef __ASM_RISCV_NMON_H
 #define __ASM_RISCV_NMON_H
 
+#include <linux/kconfig.h>
+
 #define CODE_ESC	0x1b
 
+#ifndef __ASSEMBLY__
+
+extern void __barebox_nmon_entry(void);
+
+static inline void barebox_nmon_entry(void)
+{
+	if (IS_ENABLED(CONFIG_NMON))
+		__barebox_nmon_entry();
+}
+
+#else
+
 .macro nmon_outs msg
 
-	la	a1, \msg
-
-	jal	_nmon_outs
+	lla	a1, \msg
+	jal	a2, _nmon_outs
 
 .endm
 
@@ -73,7 +86,7 @@ nmon_main:
 	li	a0, 'q'
 	bne	s0, a0, 3f
 
-	jal	_nmon_outc_a0
+	jal	a2, _nmon_outc_a0
 
 	j	nmon_exit
 
@@ -90,12 +103,12 @@ nmon_main:
 	j	nmon_main_help
 
 nmon_cmd_d:
-	jal	_nmon_outc_a0
+	jal	a2, _nmon_outc_a0
 
 	li	a0, ' '
-	jal	_nmon_outc_a0
+	jal	a2, _nmon_outc_a0
 
-	jal	_nmon_gethexw
+	jal	a2, _nmon_gethexw
 
 	nmon_outs	msg_nl
 
@@ -105,28 +118,28 @@ nmon_cmd_d:
 	j	nmon_main
 
 nmon_cmd_w:
-	jal	_nmon_outc_a0
+	jal	a2, _nmon_outc_a0
 
 	li	a0, ' '
-	jal	_nmon_outc_a0
+	jal	a2, _nmon_outc_a0
 
-	jal	_nmon_gethexw
+	jal	a2, _nmon_gethexw
 	move	s2, s0
 
 	li	a0, ' '
-	jal	_nmon_outc_a0
-	jal	_nmon_gethexw
+	jal	a2, _nmon_outc_a0
+	jal	a2, _nmon_gethexw
 
 	sw	s0, 0(s2)
 	j	nmon_main
 
 nmon_cmd_g:
-	jal	_nmon_outc_a0
+	jal	a2, _nmon_outc_a0
 
 	li	a0, ' '
-	jal	_nmon_outc_a0
+	jal	a2, _nmon_outc_a0
 
-	jal	_nmon_gethexw
+	jal	a2, _nmon_gethexw
 	move	s2, s0
 
 	nmon_outs	msg_nl
@@ -136,7 +149,7 @@ nmon_cmd_g:
 
 _nmon_outc_a0:
 	debug_ll_outc_a0
-	jr	ra
+	jr	a2
 
 _nmon_outs:
 
@@ -202,7 +215,7 @@ _get_hex_digit:
 	move	s0, t2
 
 _nmon_jr_ra_exit:
-	jr	ra
+	jr	a2
 
 msg_prompt:
 	.asciz "\r\nnmon> "
@@ -231,4 +244,6 @@ nmon_exit:
 
 .endm
 
+#endif /* __ASSEMBLY__ */
+
 #endif /* __ASM_RISCV_NMON_H */
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

