Delivery-date: Wed, 12 Apr 2023 13:24:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmYa0-00137v-Oy
	for lore@lore.pengutronix.de; Wed, 12 Apr 2023 13:24:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmYa0-0007Rj-Ix
	for lore@pengutronix.de; Wed, 12 Apr 2023 13:24:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pCAd+F+XTFJdKzJp3uCn+QIPi8My6EZqluEZ9L9/jvg=; b=qsmPna7wMjdXDT9m+Nc6yuvXAM
	Pf8d7YegmWsySwgN8wNmQmlCRfzeI72J567/URaxDBqs2+0II8CtEr+jx7joq0AH2K04tPJ8QQkxm
	VUrych37KqeQGYRaVunvL8zF9jtmW/YqfJGbuRb+9JEz/79MTVp1P5mE9jTJJN1k/Sr2mF134KO5i
	TW+8YdcnDJfbU71RJkZpLNZV1RktBMr7605KE16CbRq8cvLLkuHVO+scQGpf+YZcJDxVAQ8zp8Ody
	3DS+WyYmTsAkytXU2A55D4GIYjgzVw9GREZF4zwWI5rqDGJCF4Iyv/rUwk1O+YumnAW7GvgKD2Vqj
	TqtTf6MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmYYl-002msZ-2I;
	Wed, 12 Apr 2023 11:22:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmYYj-002mrp-14
	for barebox@lists.infradead.org;
	Wed, 12 Apr 2023 11:22:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pmYYh-0007Nl-EK; Wed, 12 Apr 2023 13:22:39 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pmYYg-00Aixk-Pl; Wed, 12 Apr 2023 13:22:38 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pmYYg-001lpu-5o; Wed, 12 Apr 2023 13:22:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 12 Apr 2023 13:22:32 +0200
Message-Id: <20230412112232.422198-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230412105810.GK15436@pengutronix.de>
References: <20230412105810.GK15436@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_042241_373651_8841A984 
X-CRM114-Status: GOOD (  12.02  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! scripts: gen-dtb-s: reference OF IMD entries automatically
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Apparently, .dword is not supported for 32-bit ARM builds.

Let's define ASM_PTR that expands to either .dword or .word and use
that instead.

The definition is taken from RISCV_PTR in arch/riscv/include/asm/asm.h.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Sascha, how about this?
---
 include/asm-generic/pointer.h | 30 ++++++++++++++++++++++++++++++
 scripts/gen-dtb-s             |  5 +++--
 2 files changed, 33 insertions(+), 2 deletions(-)
 create mode 100644 include/asm-generic/pointer.h

diff --git a/include/asm-generic/pointer.h b/include/asm-generic/pointer.h
new file mode 100644
index 000000000000..a0ea084b983c
--- /dev/null
+++ b/include/asm-generic/pointer.h
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __ASM_GENERIC_PTR_H___
+#define __ASM_GENERIC_PTR_H___
+
+#if __SIZEOF_POINTER__ == 8
+#ifdef __ASSEMBLY__
+#define ASM_PTR		.dword
+#define ASM_SZPTR	8
+#define ASM_LGPTR	3
+#else
+#define ASM_PTR		".dword"
+#define ASM_SZPTR	"8"
+#define ASM_LGPTR	"3"
+#endif
+#elif __SIZEOF_POINTER__ == 4
+#ifdef __ASSEMBLY__
+#define ASM_PTR		.word
+#define ASM_SZPTR	4
+#define ASM_LGPTR	2
+#else
+#define ASM_PTR		".word"
+#define ASM_SZPTR	"4"
+#define ASM_LGPTR	"2"
+#endif
+#else
+#error "Unexpected __SIZEOF_POINTER__"
+#endif
+
+#endif /* __ASM_GENERIC_PTR_H___ */
diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
index 6309a814a483..6a624e0bd5d0 100755
--- a/scripts/gen-dtb-s
+++ b/scripts/gen-dtb-s
@@ -5,6 +5,7 @@ dtb=$2
 imd=$3
 
 echo "#include <asm/barebox.lds.h>"
+echo "#include <asm-generic/pointer.h>"
 
 le32() {
 	printf ".byte 0x%02x, 0x%02x, 0x%02x, 0x%02x\n" \
@@ -50,7 +51,7 @@ echo ".incbin \"$dtb\""
 echo "__dtb_${name}_end:"
 echo ".global __dtb_${name}_end"
 if [ "$imd" = "y" ]; then
-	echo ".dword __barebox_imd_OF_${name}"
+	echo "ASM_PTR __barebox_imd_OF_${name}"
 fi
 echo ".balign STRUCT_ALIGNMENT"
 
@@ -69,7 +70,7 @@ echo ".incbin \"$dtb.z\""
 echo "__dtb_z_${name}_end:"
 echo ".global __dtb_z_${name}_end"
 if [ "$imd" = "y" ]; then
-	echo ".dword __barebox_imd_OF_${name}"
+	echo "ASM_PTR __barebox_imd_OF_${name}"
 fi
 echo ".balign STRUCT_ALIGNMENT"
 echo "#endif"
-- 
2.39.2



