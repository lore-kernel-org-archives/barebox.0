Delivery-date: Wed, 05 May 2021 12:10:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEUC-0007Ye-OA
	for lore@lore.pengutronix.de; Wed, 05 May 2021 12:10:32 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEUB-00052b-T0
	for lore@pengutronix.de; Wed, 05 May 2021 12:10:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zYGtwnxsLTmBdvl8M5oJFUS2WOUiwTLewcQ1AfnowX0=; b=nEAoSm2o1tvbKh1Noe+s2MZKN
	JiK3rvyfYri2lk3GlCSTo+iF7D10X+bU1oBnS14hsg9bJaFv26X5QiF969LGFHpcD+UP88f9+12qi
	oLabdUphmgn7yb3fshlFugpczkiqQFbNcYh0lmIfqFBg2Gsm+Gvs+SuSP8X6mzfYQhbGBHrwscIFA
	TmS8EOSRTY4Y8UmWSYY0xa8Hvjzn+aT/aidK+ltIcLCR2ZgFO2d8M+1SRtiP98LsgwTEXumo4tOdK
	kBM7iRP7uYYIWGMjsew5CYlq0dP+LUECswHVjPttID6bzYL7n7GYemsQXmAsMq4yUNbjdfvzGA8CN
	ueIKCmVrA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leETD-000q1m-E1; Wed, 05 May 2021 10:09:31 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leET3-000q0q-EZ
 for barebox@desiato.infradead.org; Wed, 05 May 2021 10:09:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=5YHAZHT/ETqWH5ZqSn4k77TrPRG3Yi64ELW9gjz4wh0=; b=rH1r4LQ98C+ryJ+YiNayf6AnX4
 s8tzqT88RsuW5u/l4e+mkemelEW4sq39/LUcEofLRiITdOtkIE5leg3a5uAGY2Eq1x8jdhtsIO37Z
 7sB9do4S2q3Jz2gAs7sQGbeCjaM6qPnaiCb/ZDPDFNPbGFDsUdTQrFMoLhIUFzQYF0W3Prc7UUdl7
 2psuMV4RV4y/mWwzwFig/CmXriAkZZkg/xhg2eiHUgl7a+96kaiw3vs7NZknIcBM9AKkhAl6XYO2H
 lxPLoZcs05uhgrbg+8vse2W2xlc6MGYHyWMGbt0S/RZpqHqmp/IizeWUY65U2Q4/LixHqwrwYBnub
 uHRO5GAg==;
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leET0-004eNv-KY
 for barebox@lists.infradead.org; Wed, 05 May 2021 10:09:20 +0000
Received: by mail-lf1-x12c.google.com with SMTP id c3so1760451lfs.7
 for <barebox@lists.infradead.org>; Wed, 05 May 2021 03:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5YHAZHT/ETqWH5ZqSn4k77TrPRG3Yi64ELW9gjz4wh0=;
 b=Mq8lhxfbhc0uyJ2/j5kzSg/nt2thavE+tJMVFqg8wyarhp53v/UAdLyu9ABgo5qlXo
 LShUKyRfvi4JhEsZRzqMdynU2zhve197MC8oWTxpMNkxx9aWMK4+oxiwN0AXd3axueO4
 GiNN7byLNmVo18/jwoeL84cjWmSbFFi0WzIcLeqb7gKBg+ouga1t0SAKE/UVpaiVhYwC
 arvNclfWm6aOGcDl1gtgK3F3nvuy5mIacFXKKZF9wX/3z+t03WTnH6wz2xeCwY8LCN0X
 d6+REHHZfblhXKcCbkK5AKlmb0c9q+8aK+gNQh8pQfygqkEQXJV6XYcczkHPKVDfGhKe
 FrXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5YHAZHT/ETqWH5ZqSn4k77TrPRG3Yi64ELW9gjz4wh0=;
 b=q7kd2P8e91fT4y74XoNL7wRcNjeswqpC8oLVccrqeK3whd/6oJ5IUBAhcHI7SqzFgw
 5X7vevmXdTGNj4aWMiPEoISlXVp94MW9qgMWx8DSXGabkywy4iWU8l9W94IuGRQmU09N
 AvsXduN40aljrrIHUzPoC8ByDSpK19Kmky9lqHvXV1QnJvaNIbGEIIRMN4ubBmeBxOti
 qTugG2VV3A/jYAuScsHPsKY+DL5kmiHqvDtkZRS5X7Uoo9SQgmtU6PIROu4KwP+BHJfk
 C3nKlkOtH59IAhVNjwaB47pAsezyDGEelawI/X2qstmeJUwTVQW2uDEPBb2KhD6eh4Li
 2SHA==
X-Gm-Message-State: AOAM533N51KuhKK/tLu4B5pxXvmgSbD4EfKjKqPzrglVklzQ9aK778TR
 mtxG0UnbjSAJn3IDxQZYxYujNVWfhXsnZw==
X-Google-Smtp-Source: ABdhPJwTBDt2TL6VZp9eZs6PL1ASQWTWquXkQjVMAPHZdcw1gSLGf1Y0phSQCImai/8E96TTYnJF/A==
X-Received: by 2002:a05:6512:3121:: with SMTP id
 p1mr1766497lfd.320.1620209356302; 
 Wed, 05 May 2021 03:09:16 -0700 (PDT)
Received: from localhost.localdomain ([176.59.42.245])
 by smtp.gmail.com with ESMTPSA id u8sm497114lfu.284.2021.05.05.03.09.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 May 2021 03:09:15 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  5 May 2021 13:08:52 +0300
Message-Id: <20210505100900.88141-2-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210505100900.88141-1-antonynpavlov@gmail.com>
References: <20210505100900.88141-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_030918_715773_F80CAEEB 
X-CRM114-Status: GOOD (  12.70  )
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
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/9] RISC-V: make it possible to run nmon from PBL C code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

After migrating to PBL we can't use nmon assembler macro
in C code anymore. Some changes are introduced to invoke
nmon from PBL C code:

  * use 'lla' macro instruction instead of 'la';
  * don't touch the 'ra' register, use 'a2' instead;
  * add wrapper C function for nmon.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/boot/Makefile            |  1 +
 arch/riscv/boot/nmon_entry.S        | 13 ++++++++++++
 arch/riscv/include/asm/riscv_nmon.h | 33 ++++++++++++++---------------
 3 files changed, 30 insertions(+), 17 deletions(-)

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
index 0000000000..9b30b50627
--- /dev/null
+++ b/arch/riscv/boot/nmon_entry.S
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#include <linux/linkage.h>
+#include <asm/sections.h>
+
+#include "mach/debug_ll.h"
+#include "asm/riscv_nmon.h"
+
+.section .text_bare_init
+
+ENTRY(__barebox_nmon_entry)
+	riscv_nmon
+	ret
+ENDPROC(__barebox_nmon_entry)
diff --git a/arch/riscv/include/asm/riscv_nmon.h b/arch/riscv/include/asm/riscv_nmon.h
index caf213cdd8..11b19ab35b 100644
--- a/arch/riscv/include/asm/riscv_nmon.h
+++ b/arch/riscv/include/asm/riscv_nmon.h
@@ -20,9 +20,8 @@
 
 .macro nmon_outs msg
 
-	la	a1, \msg
-
-	jal	_nmon_outs
+	lla	a1, \msg
+	jal	a2, _nmon_outs
 
 .endm
 
@@ -73,7 +72,7 @@ nmon_main:
 	li	a0, 'q'
 	bne	s0, a0, 3f
 
-	jal	_nmon_outc_a0
+	jal	a2, _nmon_outc_a0
 
 	j	nmon_exit
 
@@ -90,12 +89,12 @@ nmon_main:
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
 
@@ -105,28 +104,28 @@ nmon_cmd_d:
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
@@ -136,7 +135,7 @@ nmon_cmd_g:
 
 _nmon_outc_a0:
 	debug_ll_outc_a0
-	jr	ra
+	jr	a2
 
 _nmon_outs:
 
@@ -202,7 +201,7 @@ _get_hex_digit:
 	move	s0, t2
 
 _nmon_jr_ra_exit:
-	jr	ra
+	jr	a2
 
 msg_prompt:
 	.asciz "\r\nnmon> "
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

