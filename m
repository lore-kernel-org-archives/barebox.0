Delivery-date: Tue, 26 Jul 2022 12:26:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oGHlm-004a40-EJ
	for lore@lore.pengutronix.de; Tue, 26 Jul 2022 12:26:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oGHlk-0006uB-ID
	for lore@pengutronix.de; Tue, 26 Jul 2022 12:26:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/4yER/LAujtMfEh0BNxU4hDrd/GNs46OU18+APpkAaM=; b=G/xc16KCpW0+59
	J1qHs9laOhnxaRWNo0fl8uZqlJYgyI9mKupDQ4XxZ6l0CXjBPHQhbxWF8p7CYl9Db+oOnP/ckUWqL
	4QpEGFX+olluE92PUFdo/+gX5I+iemUsUbOX5oD4AgQe5zNIJzhwXXT0P+I0rqr4zhqsoZQTnFg5d
	APHDHNela2QzzvSOxWqUhSvS/NHEYcas8GQYfH8wfOH9UAQ2c2QMYda+ic96H1nCYUUbJgh+h3A8L
	UAcgeV+T7D8S4axIkgUENZRi/amQpVlVFMo7wZjI21BUxk8IQngTgYTyMsGNwZbQrbCoWvSBbjbWy
	r7pcnIXez5vGNNlmXXeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGHjq-00D5Hy-HR; Tue, 26 Jul 2022 10:24:30 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGHjj-00D567-Fv
	for barebox@lists.infradead.org; Tue, 26 Jul 2022 10:24:25 +0000
Received: by mail-lf1-x135.google.com with SMTP id y11so21824838lfs.6
        for <barebox@lists.infradead.org>; Tue, 26 Jul 2022 03:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/4yER/LAujtMfEh0BNxU4hDrd/GNs46OU18+APpkAaM=;
        b=EsgbEZVhEki/bd3ovt9g4K+GRo4ZllPlgKfqD5w6ecsUbOsIZguKzp7BovXrLNqn+F
         PHSjTQ6ibSAyuAfXF4Q875A+2ZGHe4qJlH+xGRS6l+DmH4hbOSd/+BcUnYtu6lvMRFyv
         fnneVnpP1KWsq5CT8Iwc/br1CAKpPrBCr/JPNunsTe1DwJ7mrH2casQU3CjuERzYGiOP
         kVf38cTGFgSyBi2ZQ0jgYSl/Vskf1/nNeg0kmjbAEzBwXNO+4NpNQCkSkS05FUP4mWCG
         96znu71MjREuSaQI2RlYX8N+6Pos3W7vM9A6tUXvtFtePDUMi2HkQFZMQw4VEDXT1fLL
         IXVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/4yER/LAujtMfEh0BNxU4hDrd/GNs46OU18+APpkAaM=;
        b=0QkR/wOKfo1vW5zYWNT4LrOHbzEPah9AmR4zPNbrce1DUkDhIYd9CRiq2Msow8BgLL
         q6QXP99njZrtnjAVM5g8K9BE7aKySbAGd0yJTZgLhAyFd0/SfPLnSSqKVNThR/EDeQDi
         mILo4fuRJMVBkrPAvri75DUom6/cG3o94GVj4MnFH6Y7Hc0sH6JMz/nKfapKPKYK/Od+
         3qUbY/QRkC5oPUWSGy4t9MMgduSSaXLvavaIU04NjJ4HG4E2Mzw1LX6wMzWEJJTCpTzM
         QBmvkhqNBQArFGu9SnZ4EL42C2v00NesvoZyTAStoHyFv0NwQVnfhW/j411L9yZ714Ey
         syUA==
X-Gm-Message-State: AJIora86aeKmI9Zn4MqKubR7LHCqyJX2wVja38b/60bl4ioaQzRZc/c7
	k9+IghwF7LirEfSSi9olvJZ2HTt1VzE=
X-Google-Smtp-Source: AGRyM1sksfV+4X7LvTyhsBiShGzeSli6CInt1JGcAXlWjo6boo9b91d2k47jvyZveT/ULlcvInVz+g==
X-Received: by 2002:a19:2d15:0:b0:48a:85f7:7e37 with SMTP id k21-20020a192d15000000b0048a85f77e37mr4770295lfj.392.1658831060803;
        Tue, 26 Jul 2022 03:24:20 -0700 (PDT)
Received: from localhost.localdomain (109-252-8-188.nat.spd-mgts.ru. [109.252.8.188])
        by smtp.gmail.com with ESMTPSA id b6-20020a196446000000b00488d0e38283sm3104403lfj.153.2022.07.26.03.24.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 03:24:19 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 26 Jul 2022 13:24:12 +0300
Message-Id: <20220726102412.1104232-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220726_032423_550946_7E9774CF 
X-CRM114-Status: GOOD (  12.04  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] asm-generic: provide phys_to_virt() and virt_to_phys()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The arm, riscv, sandbox and x86 architectures use
just the same phys_to_virt()/virt_to_phys() implementation.
Only the mips architecture has its own special implementation.

So we can move phys_to_virt() and virt_to_phys()
generic implementation to include/asm-generic/io.h.

Use override functions way introduced in the 9216efafc52ff99e
("asm-generic/io.h: Reconcile I/O accessor overrides")
linux kernel commit.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/include/asm/io.h     | 10 ----------
 arch/mips/include/asm/io.h    |  2 ++
 arch/riscv/include/asm/io.h   | 10 ----------
 arch/sandbox/include/asm/io.h | 10 ----------
 arch/x86/include/asm/io.h     | 10 ----------
 include/asm-generic/io.h      | 20 ++++++++++++++++++++
 6 files changed, 22 insertions(+), 40 deletions(-)

diff --git a/arch/arm/include/asm/io.h b/arch/arm/include/asm/io.h
index 1c0f522d1d4..486b1429502 100644
--- a/arch/arm/include/asm/io.h
+++ b/arch/arm/include/asm/io.h
@@ -18,14 +18,4 @@ extern void memcpy_fromio(void *, const volatile void __iomem *, size_t);
 extern void memcpy_toio(volatile void __iomem *, const void *, size_t);
 extern void memset_io(volatile void __iomem *, int, size_t);
 
-static inline void *phys_to_virt(unsigned long phys)
-{
-	return (void *)phys;
-}
-
-static inline unsigned long virt_to_phys(volatile void *mem)
-{
-	return (unsigned long)mem;
-}
-
 #endif	/* __ASM_ARM_IO_H */
diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index 0d228aa0f51..a3acbd7017c 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -27,6 +27,7 @@ void dma_inv_range(unsigned long, unsigned long);
  *     The returned physical address is the physical (CPU) mapping for
  *     the memory address given.
  */
+#define virt_to_phys virt_to_phys
 static inline unsigned long virt_to_phys(const void *address)
 {
 	return (unsigned long)CPHYSADDR(address);
@@ -39,6 +40,7 @@ static inline unsigned long virt_to_phys(const void *address)
  *     The returned virtual address is a current CPU mapping for
  *     the memory address given.
  */
+#define phys_to_virt phys_to_virt
 static inline void *phys_to_virt(unsigned long address)
 {
 	if (IS_ENABLED(CONFIG_MMU)) {
diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io.h
index 978f6443407..76d66c0a3b8 100644
--- a/arch/riscv/include/asm/io.h
+++ b/arch/riscv/include/asm/io.h
@@ -7,14 +7,4 @@
 
 #include <asm-generic/io.h>
 
-static inline void *phys_to_virt(unsigned long phys)
-{
-	return (void *)phys;
-}
-
-static inline unsigned long virt_to_phys(volatile void *mem)
-{
-	return (unsigned long)mem;
-}
-
 #endif /* __ASM_RISCV_IO_H */
diff --git a/arch/sandbox/include/asm/io.h b/arch/sandbox/include/asm/io.h
index 71cf50cd9a0..eec279b8883 100644
--- a/arch/sandbox/include/asm/io.h
+++ b/arch/sandbox/include/asm/io.h
@@ -11,14 +11,4 @@ extern unsigned char __pci_iobase[IO_SPACE_LIMIT];
 
 #include <asm-generic/io.h>
 
-static inline void *phys_to_virt(unsigned long phys)
-{
-       return (void *)phys;
-}
-
-static inline unsigned long virt_to_phys(volatile void *mem)
-{
-       return (unsigned long)mem;
-}
-
 #endif /* __ASM_SANDBOX_IO_H */
diff --git a/arch/x86/include/asm/io.h b/arch/x86/include/asm/io.h
index 41c5cb3c14f..d4b5c269190 100644
--- a/arch/x86/include/asm/io.h
+++ b/arch/x86/include/asm/io.h
@@ -84,16 +84,6 @@ static inline void io_delay(void)
 	inb(0x80);
 }
 
-static inline void *phys_to_virt(unsigned long phys)
-{
-	return (void *)phys;
-}
-
-static inline unsigned long virt_to_phys(volatile void *mem)
-{
-	return (unsigned long)mem;
-}
-
 #include <asm-generic/io.h>
 
 #endif	/* __ASM_X86_IO_H */
diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index 47f8c3ec1be..e41b4df4036 100644
--- a/include/asm-generic/io.h
+++ b/include/asm-generic/io.h
@@ -421,6 +421,26 @@ static inline void iowrite64be(u64 value, volatile void __iomem *addr)
 #endif
 #endif /* CONFIG_64BIT */
 
+/*
+ * Change virtual addresses to physical addresses and vv.
+ * These are pretty trivial
+ */
+#ifndef virt_to_phys
+#define virt_to_phys virt_to_phys
+static inline unsigned long virt_to_phys(volatile void *mem)
+{
+	return (unsigned long)mem;
+}
+#endif
+
+#ifndef phys_to_virt
+#define phys_to_virt phys_to_virt
+static inline void *phys_to_virt(unsigned long phys)
+{
+	return (void *)phys;
+}
+#endif
+
 #ifndef IOMEM
 #define IOMEM(addr)	((void __force __iomem *)(addr))
 #endif
-- 
2.36.1



