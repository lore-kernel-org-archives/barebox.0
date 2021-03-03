Delivery-date: Wed, 03 Mar 2021 21:11:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHXqK-000085-Bn
	for lore@lore.pengutronix.de; Wed, 03 Mar 2021 21:11:36 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHXqI-0005Kw-20
	for lore@pengutronix.de; Wed, 03 Mar 2021 21:11:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sxQJoXeeA7azn5wPF/OX5xVvwEoUYU4AKQSLjELLsIk=; b=AetkIIkcUzkjW4O0YKtwMUruN
	dFaShhTe/TKpY0lrE3gGqH1dkDYuWeWQO+YuulDhBp4oCUSoO/JaLQB+F9y5QG2Y3MekxMVsk1UgY
	Ua9MVwU1j6lmbHH/ZxGdhpJa2WfQlVRs8r5Bv2wLQk+y203c51Ql12bmckadu0s3HFLVjzz6Qj1Ns
	OaX1IMY75LEbGemgCbZv0CfaayBvhKUqGgOm8/58ue8jkx7zlJi+oBieewflZ7AM+q8TLqcBLr+8l
	sWSd0d2l2bc/9gspBQsvMSB2qk8d8Sm7W2QNDTWL4p9qQIrvMEmfr+Qxm2IEsDhm3Q9ITzmmHRoAX
	6HfMbr5CQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHXoJ-006MZG-HZ; Wed, 03 Mar 2021 20:09:32 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHT4u-005IZL-Og
 for barebox@desiato.infradead.org; Wed, 03 Mar 2021 15:06:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=EifrpQ9Y4MaUH+DiJB86tHPxZlocrGGi3685DdajNO4=; b=LZofJCUW4s9MW1SdToyT1UjP2O
 8nlMcvaoLGuzGWIQyLu5cgG/x9DB45TYDOjiQfhkSusREomeaaB00xO3PJS0lyAJn/q8qYDCRq5mv
 z2reEzS5XHZZjizoa+xu+KGOaUM677UZnzhFxZ62KsVerEItzYyVEf5CTDjuCWtaqlKLoh2F+kZ7I
 sIoIibZpE0DUA9/Oe2w/ek47u/Kv9qQVlv6/q8GwzhITq+qX0FNgEchjK6mV7tHuqThmF3w0OplHc
 ufy9EtJISIG45CpQkLNHKG+JgmcwHzjffRmawzWITd0Mz3TiU/vWzWfPiD0QErXRKFL9kN38TpOlZ
 SPsvyRSw==;
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHRur-002qLi-CE
 for barebox@lists.infradead.org; Wed, 03 Mar 2021 13:51:54 +0000
Received: by mail-pg1-x52d.google.com with SMTP id p21so16381922pgl.12
 for <barebox@lists.infradead.org>; Wed, 03 Mar 2021 05:51:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EifrpQ9Y4MaUH+DiJB86tHPxZlocrGGi3685DdajNO4=;
 b=N3apr//uxA0nNmzcPV7VYyF45oFN9XDYaHz9Yp5M4wE6t710zxSIJ0gxR1P/7nIj0h
 yqgAGXGD6FRtT6yCyC8/yClk1PbwCMv/cNFbCpOlugjJP13gJvnVdhoYm8NwTldSKHeo
 Zl8Fd36FwD4kBX/A05Ts1erZv+/4raXwevauYfcK+ywbZDKZt8NyK7k++kO8Z6L7IdqZ
 R1V6+BSbpPROiFLesp+3zfrokoBt/swaYC0WpMguGXOJBHCmRPjsui4RUqLQUtFhon4k
 Qw9mMeQi7DwTB9gUrNGfd6p8TW311ax4jYJI7f76kDtFfPW0URCm8zTjv6aSumsR+PYO
 J5wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EifrpQ9Y4MaUH+DiJB86tHPxZlocrGGi3685DdajNO4=;
 b=LXcYcKK4C1FZTtkLXsxfBot7i7q3uiY6aBYjUGIVoeayaK/mEGbFPULiUkETVwGSbv
 tgb7toG59Wgsr0UiiklmffexwkO9BvaRKsq7WnAvtIlIS59Lcd4oCC8qHdQgPWBjAVUq
 PljxNhQ5j4y7MOolPDm5C4mfdUM+hr5rovUkPhHT02ncrMr3W4QvyXH6tkzvqGY3H27U
 VpZYLxbDAcJ8VZ0MyecvvQ1/1b1oRamChh9VE9cEnIZ7fMW2cWDYqK1tMnzXk45Z6Fim
 Ui5pexpJ/17NVTyv57Jzuih5WsroQDeCo/qviIK2BiMbkx4q+P1NgrJsoZB9xsRNYIAn
 ni8A==
X-Gm-Message-State: AOAM5319POW5bLHvjWevi3Z4lYAbXGb336Q1U4rkTMV+bfqfRsgYtgEY
 1pzsUEdMfibkf4S2SnmzaC0sMql9dyE=
X-Google-Smtp-Source: ABdhPJxrsYBpt/PNoT6sMlqIO82+PgNLRunfmaTSD5MnbtXJpVteFp9fZriMO+z1HmWwrRjm5UrTAQ==
X-Received: by 2002:a05:6a00:789:b029:1ee:283:4f6e with SMTP id
 g9-20020a056a000789b02901ee02834f6emr3369045pfu.72.1614779449272; 
 Wed, 03 Mar 2021 05:50:49 -0800 (PST)
Received: from localhost (g98.115-65-200.ppp.wakwak.ne.jp. [115.65.200.98])
 by smtp.gmail.com with ESMTPSA id h186sm24388668pgc.38.2021.03.03.05.50.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Mar 2021 05:50:48 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: Barebox <barebox@lists.infradead.org>
Date: Wed,  3 Mar 2021 22:50:26 +0900
Message-Id: <20210303135026.3450789-5-shorne@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210303135026.3450789-1-shorne@gmail.com>
References: <20210303135026.3450789-1-shorne@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_135154_065469_0949C178 
X-CRM114-Status: GOOD (  15.11  )
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
Cc: Openrisc <openrisc@lists.librecores.org>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>, Stafford Horne <shorne@gmail.com>
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
Subject: [PATCH 4/4] openrisc: Implement setjmp/longjmp/initjmp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Tested on or1ksim and this seems to work.  This is mostly the same
as the glibc port implementation, but adjusted as per requirements per
barebox.

Signed-off-by: Stafford Horne <shorne@gmail.com>
---
 arch/openrisc/Kconfig              |  1 +
 arch/openrisc/include/asm/setjmp.h | 17 +++++++++
 arch/openrisc/lib/Makefile         |  1 +
 arch/openrisc/lib/setjmp.S         | 56 ++++++++++++++++++++++++++++++
 4 files changed, 75 insertions(+)
 create mode 100644 arch/openrisc/include/asm/setjmp.h
 create mode 100644 arch/openrisc/lib/setjmp.S

diff --git a/arch/openrisc/Kconfig b/arch/openrisc/Kconfig
index 32d23029d..bd8851e4b 100644
--- a/arch/openrisc/Kconfig
+++ b/arch/openrisc/Kconfig
@@ -4,6 +4,7 @@ config OPENRISC
 	select HAS_CACHE
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	select GENERIC_FIND_NEXT_BIT
+	select HAS_ARCH_SJLJ
 	default y
 
 # not used
diff --git a/arch/openrisc/include/asm/setjmp.h b/arch/openrisc/include/asm/setjmp.h
new file mode 100644
index 000000000..40f55b7eb
--- /dev/null
+++ b/arch/openrisc/include/asm/setjmp.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: LGPL-2.1-or-later */
+/*
+ * Define the machine-dependent type `jmp_buf'.  OpenRISC version.
+ * Copyright (C) 2021 Free Software Foundation, Inc.
+ * This file is part of the GNU C Library.
+ */
+
+#ifndef _OR1K_BITS_SETJMP_H
+#define _OR1K_BITS_SETJMP_H  1
+
+typedef long int jmp_buf[13];
+
+int setjmp(jmp_buf jmp) __attribute__((returns_twice));
+void longjmp(jmp_buf jmp, int ret) __attribute__((noreturn));
+int initjmp(jmp_buf jmp, void __noreturn (*func)(void), void *stack_top);
+
+#endif /* _OR1K_BITS_SETJMP_H */
diff --git a/arch/openrisc/lib/Makefile b/arch/openrisc/lib/Makefile
index 62082feed..808b09f3a 100644
--- a/arch/openrisc/lib/Makefile
+++ b/arch/openrisc/lib/Makefile
@@ -5,4 +5,5 @@ obj-y                 += muldi3.o
 obj-y                 += lshrdi3.o
 obj-y                 += ashldi3.o
 obj-y                 += ashrdi3.o
+obj-y                 += setjmp.o
 obj-$(CONFIG_BUILTIN_DTB) += dtb.o
diff --git a/arch/openrisc/lib/setjmp.S b/arch/openrisc/lib/setjmp.S
new file mode 100644
index 000000000..7da347780
--- /dev/null
+++ b/arch/openrisc/lib/setjmp.S
@@ -0,0 +1,56 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <linux/linkage.h>
+
+/* int setjmp (jmp_buf);  */
+ENTRY(setjmp)
+	l.sw	0(r3), r1
+	l.sw	4(r3), r2
+	l.sw	8(r3), r9
+	l.sw	12(r3), r10
+	l.sw	16(r3), r14
+	l.sw	20(r3), r16
+	l.sw	24(r3), r18
+	l.sw	28(r3), r20
+	l.sw	32(r3), r22
+	l.sw	36(r3), r24
+	l.sw	40(r3), r26
+	l.sw	44(r3), r28
+	l.sw	48(r3), r30
+	l.jr	r9
+	 l.movhi r11, 0x0
+END(setjmp)
+
+/* volatile void longjmp (jmp_buf, int);  */
+ENTRY(longjmp)
+	l.lwz	r1, 0(r3)
+	l.lwz	r2, 4(r3)
+
+	/* if r4 is 0, something wrong, so set it to 1 */
+	l.sfeqi	r4, 0x0
+	l.bnf	1f		/* r4 != 0, longjmp value sensible */
+	 l.nop
+	l.ori	r4, r0, 0x1	/* make nonzero */
+1:
+	l.lwz	r9, 8(r3)
+	l.lwz	r10, 12(r3)
+	l.lwz	r14, 16(r3)
+	l.lwz	r16, 20(r3)
+	l.lwz	r18, 24(r3)
+	l.lwz	r20, 28(r3)
+	l.lwz	r22, 32(r3)
+	l.lwz	r24, 36(r3)
+	l.lwz	r26, 40(r3)
+	l.lwz	r28, 44(r3)
+	l.lwz	r30, 48(r3)
+	l.jr	r9
+	 l.addi r11, r4, 0x0
+END(longjmp)
+
+/* int initjmp(jmp_buf jmp, void __noreturn (*func)(void), void *stack_top); */
+ENTRY(initjmp)
+	l.sw	8(r3), r4
+	l.sw	0(r3), r5
+	l.jr	r9
+	 l.movhi r11, 0x0
+END(initjmp)
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

