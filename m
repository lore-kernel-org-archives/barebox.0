Delivery-date: Thu, 08 Jul 2021 10:32:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m1PSf-0006Mx-JR
	for lore@lore.pengutronix.de; Thu, 08 Jul 2021 10:32:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m1PSe-0006yh-FJ
	for lore@pengutronix.de; Thu, 08 Jul 2021 10:32:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8szwglaBqiQsMsXbq4M7s0XRmHctgIq+8Ts0H5yJthc=; b=GCz76BEp6+TZOZ
	WiOuAHUmxsgZoNsIMEmzILT3iqlDY8No/33QLP+DikMxC2FM097WT5WBgw7m52RixcY6+tZykSW1Z
	Lfk+I9GiAatBOzjmVHWvPj4BIaTPiW1aX1jh/hxprNz1KYFfW5XcJGUvRYU9New1zIJDGde864ETk
	hLHcdtHajuMd+OwgYtJhibyPrXTaRV+Jkeh0Wf3HOsGmvF0k6++m+CWtlUlfrnpdyX/4a3hJ0FwJ0
	yxLlEQjb1MnwCj56hPeWURERIuW+hrhtIZq7zQ1iZJJAtOJ/w7fzXaWQjdir169i8B5Q+cI3fAZnM
	FY+bgfzUmHCAXl4wrpLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1PQp-00GJx1-JQ; Thu, 08 Jul 2021 08:30:51 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1PQi-00GJvC-Iz
 for barebox@lists.infradead.org; Thu, 08 Jul 2021 08:30:46 +0000
Received: by mail-lf1-x129.google.com with SMTP id v14so12884954lfb.4
 for <barebox@lists.infradead.org>; Thu, 08 Jul 2021 01:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1LZUs+No9XqrtscMBSAUzXMw4kgyoTQjFtJ6jql5C9M=;
 b=NNhM65n7NAG9NDmMFTHBaV9GH3oPtdf+fX6UrrPyjTYU5p7PZENDa7admZr/pZbfcD
 qhH6uc7002dc3lSq7vCnZ0L9xcXGw3iijZVZncP2USUyrI2cy/eOiyMwnpwIE/uW1b8G
 MpAbR6e2WspPyTaFnCQ7nske7KW7h2UMhyZPl9U/kLNC1agOjg54UyNsNEEggkF8aHk6
 qD/BfV7e1aUALvfQL9a2be8B5iUy8HTqzY7wme6V94ZQ6h6lAYv61NA0AteAWZKHXDIP
 Vv/dyMaP/Sn+E853EHlBUz+iVl8OSBuVjZjsIY94D1AGxrJZzrDaV6q65bPzxGGNGQSD
 DsZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1LZUs+No9XqrtscMBSAUzXMw4kgyoTQjFtJ6jql5C9M=;
 b=HXbyVz6LnvqlMHH+t1v34Lg/tyfmA0eKgoW/VdAOH/J5EVYI7m7jltILKTl0CqXpr9
 9UhjnD5QjE2Fkn7er3ICeoeDsiHgngVgVGhzdTFxt1qvjLZBwJfdxhWQ/5HBG3a3gz12
 2IkTrFXU7YnSFNK0IbD/HKH3tSr8YTZPbMydpKE3bGZAcTCmbcaf/mAU9FjYSWL/Qipn
 Nsdb3GB+ja+L5nMfNbDwpJInpdyutuhZt/9ZYCZMB6xISbUP00k6ODt/YXjQJ/GPKUuC
 fDu5Ry4BhSHUlKlRYVTMkL6hy0xSU0lIN8p/CY5Ybi9PUWN1l41tSTw1v8G7UPzO/ojE
 fTOw==
X-Gm-Message-State: AOAM532WeMZpfOssdekuC4198w0krve4KZKDpVKmDmDspbzzCjYb/ooJ
 BnfoTSM4RNKsiw3ZaawMuoMgXXZ9uT0=
X-Google-Smtp-Source: ABdhPJy/hFQD6HyUTlhRfm5g+wZ/Wf6JcH+ZV9+x+3km5gIgMvFe1va30FQRS/qnrClyKGF39ShZNw==
X-Received: by 2002:a05:6512:a8c:: with SMTP id
 m12mr2896352lfu.434.1625733041630; 
 Thu, 08 Jul 2021 01:30:41 -0700 (PDT)
Received: from localhost.localdomain ([176.59.43.199])
 by smtp.gmail.com with ESMTPSA id i21sm127364lfe.86.2021.07.08.01.30.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jul 2021 01:30:41 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Thu,  8 Jul 2021 11:30:33 +0300
Message-Id: <20210708083035.40814-2-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210708083035.40814-1-antonynpavlov@gmail.com>
References: <20210708083035.40814-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210708_013044_666711_258BBEC7 
X-CRM114-Status: GOOD (  14.84  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH next 1/3] RISC-V: make it possible to run nmon from PBL C code
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
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

