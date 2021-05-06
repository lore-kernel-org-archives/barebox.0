Delivery-date: Fri, 07 May 2021 00:10:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lemCZ-00036N-7J
	for lore@lore.pengutronix.de; Fri, 07 May 2021 00:10:35 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lemCY-000550-BC
	for lore@pengutronix.de; Fri, 07 May 2021 00:10:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y/pTjG4Ij6dro8DXV5EuSm87rJ/Y6tc4HbMqL2YARyE=; b=CLRHlfKqqCySlf5et7pPd7zSQ
	SM7f4AlMiSUwLltpwgN2cQACOsBMz0NAcPOn0IvVnUm8jYEyiTTAD01yS4Sjctnp0UZ1InbYqeCVV
	RYWsNTMBiNV79bOpXerdbijsXS+1aXPg+yumDX0L2ewhnaNRGENuMxRvLsxu/U3NtZBt5FZj9FFSv
	wMh65SHlv39bx7Xn0gVhiiIVsVlkf2Qv72wWFwQ29K6u8HolEnnpYgmYn5EdYiUxEJz/tjBnl6NmC
	Fvwj6UCbNJkgATDFvOT4wPGk0cFNNTjJH9tSgJoHe6Z3r9ryZJ5EEkxSTm1fum86oHtXYEFcXFtG/
	A1DEput5w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lemBe-005RWB-7h; Thu, 06 May 2021 22:09:38 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lemB5-005ROc-B7
 for barebox@desiato.infradead.org; Thu, 06 May 2021 22:09:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=Uk9N6PQPvl4eIJyzcHli7AigSQrr93i3EWZaYMRmROo=; b=dG8MTTtJ8ZbOYuM88xSVCpmQu9
 Ti8FybzyblpjCXQWJSMAp6AXFOZuy6N9XtfbevhV0nTbD/4Y5qwlqp5gRErVKlk8UF+yOlgkxXABA
 d/PrisN4oN+LTTc5ynFBHtC19e+TdJqgSRFPkhOoTpdNvBbVqYSmNRrdX6qjKWOtHq+RY6VHcVkig
 pa9brU39K84KPlDWjIXh6QjuWdXwlnzn3yqzQikFmSDkfXOQRXGEhmIH1N+8PwFnSWyCsY3pjTwsq
 6yEIWD0oqGuhjBpSFn2H0rpd5XlQe+zOoePSwt7Q2W5taJduO4jj/AVTd+Er+rkQqSpCksBXiLOdq
 unBYB2DA==;
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lemB2-006QOC-Bh
 for barebox@lists.infradead.org; Thu, 06 May 2021 22:09:01 +0000
Received: by mail-lf1-x131.google.com with SMTP id c3so9966930lfs.7
 for <barebox@lists.infradead.org>; Thu, 06 May 2021 15:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Uk9N6PQPvl4eIJyzcHli7AigSQrr93i3EWZaYMRmROo=;
 b=CRd81X7f8mNe4GR2lGdkeZvOT3B0e2Nl3EB4wFxJYF2roP+eaWiFGsRSY4BWf3Llfe
 gAPExmBt93KaKRTsjZ/sTbsiogXRqmxhAdp00R1RBdvQj3fW554qjfzzuEPOnUq0AkI1
 6Z23jjSF+4Yl6IBORuLGD7ndbP98+KotvHREN3RqOapSfZu/SDPPswdnAR1yTH6IAxOn
 iBdkKsIbzDP/M5Tohc5H/v5VG8R22m+Fi7No8XzckvWuAykEjBu0xW7INV7blhoHUJT8
 qmPiNpmt0Prn+Ka60/rUsb9OSd11lfbfDZTCrzazX4fRKcQMqy0AEhisp+M2OcjOSNkh
 9+fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Uk9N6PQPvl4eIJyzcHli7AigSQrr93i3EWZaYMRmROo=;
 b=lO+3IbH+oB0UnP5MNbOpBUVeg6uQHdY8J5biavCVQm+RTsiVM7B2wkjv/4KYSV7Pik
 ZJiNgg4U263LDStxONBtATpxPc4vOA34Jrm1bzZIqDFXpnyqJGMjqhgh0Qk4m7IA6lKI
 4Hp90+G8WtqtswQNuC9LFrYKn7SyXXNjDiHX4u8EHJtRMrBA/cYFx7DJgI92wLjPVoI2
 WTqME1z3F8yn5/7NSGMTNfzA5rVJU8asvcjeYMUloB+jkr+01E8SmsQSoY/h19rCPtvx
 GdXVv37qrXV2cvS/gR+vduY3x5dDbwLGpSdxX2s9ed3uUths94wIW1PWkZ/x5H0iRs50
 ECNA==
X-Gm-Message-State: AOAM532ZBAIy1ywzdaS/xlIriwJzT0c6Pe2tWm8eX++IFa3EUPaNo2SF
 CTBBU2KGwD+ytQQW8Ab9JPK6pVA59oEcng==
X-Google-Smtp-Source: ABdhPJyDA1voGUHjfsQnicj902git3LKk6VmiEf14bASjYWvqkDpq+3JCgZeoyuS9wBGxlhVh3oTig==
X-Received: by 2002:a05:6512:108c:: with SMTP id
 j12mr4342076lfg.403.1620338935679; 
 Thu, 06 May 2021 15:08:55 -0700 (PDT)
Received: from localhost.localdomain ([176.59.42.245])
 by smtp.gmail.com with ESMTPSA id b24sm962584lff.207.2021.05.06.15.08.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 May 2021 15:08:55 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri,  7 May 2021 01:08:26 +0300
Message-Id: <20210506220834.223350-4-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210506220834.223350-1-antonynpavlov@gmail.com>
References: <20210506220834.223350-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_150900_418904_9FBF6B18 
X-CRM114-Status: GOOD (  14.16  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 03/11] RISC-V: make it possible to run nmon from PBL C code
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

