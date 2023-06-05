Delivery-date: Mon, 05 Jun 2023 22:28:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoS-00CCUz-QA
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 22:28:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoP-00013r-46
	for lore@pengutronix.de; Mon, 05 Jun 2023 22:28:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E85SgICePh9mwrlqiKP65OiwFRv7mCNpIPcNtLUiEsk=; b=BSBm5UOVFbZIQ7
	SUUzBDiNr11as4WCXNtGfiBelNAt1U0+wbZUm5UMY7nWnusDAM/uv5SRQ7/LoX6/bmcYI7RxAYfrV
	/lCwfePcxioOQgVkaeywizO5zSlvM3kshqrm6CXBXwK8YpDg0CDMA48u8UqKieR7/v3/Dh/QAvaqA
	vY+35lhzWzSpBEjiBCxM+nO6Vs2ytq/aSqZ1BJfEQcrnd9S1fgTdQ2+nz+FMnCebKwa2VLowKiRJk
	/hieQX9LcsKNNh3AHk4EGRgWSpeHKsXUVAjTu5on9Bs+LdCglHrKuwX3I+/g4F34AHbGsYLUI/4W2
	V84wMd5uQtOpI6kCWunA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6GnH-00GhJh-1B;
	Mon, 05 Jun 2023 20:27:11 +0000
Received: from mail-lj1-f174.google.com ([209.85.208.174])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6GnC-00GhDg-39
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 20:27:08 +0000
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2b1b8593263so34237101fa.2
        for <barebox@lists.infradead.org>; Mon, 05 Jun 2023 13:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685996823; x=1688588823;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E85SgICePh9mwrlqiKP65OiwFRv7mCNpIPcNtLUiEsk=;
        b=qd7MMffPNryGtHVOg44X1j4PWGx1jDtlNE8R3qOYs5lVTMAeaH+2qQESNVqehe86gb
         7nbSqK0B5cQYHcSSQQ/gVFCi6oxSPhUe3ElCM99lE6Np1ioI0goY/lXyT1xi6wukmJTp
         wJ+VyXiSI2EMt2hVfDnO8hOOZqvYd1S+irtVMlEEAy6LyqDH/U1eVEoCwloo+gdPWIQ8
         FYR7mdeVj22KtsZm1Mk1RkQycUM1qODoK6zX43wtgK74sglBdYZW5bICFxN35YC+HeAV
         bjKeWs5Gk1gQHIaCX4XyUwLxYr6QwubmBH+Z+cgNBBx+w+KP95LHL10+PuDPn/R2vqJQ
         0VPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685996823; x=1688588823;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E85SgICePh9mwrlqiKP65OiwFRv7mCNpIPcNtLUiEsk=;
        b=YnPi3XW4aT3g5g3cbauureWaN6zWZ8mXwjsUtvOQ5M6m/2IbGTIpZydF1DA/VYA1GQ
         teypUO6tmb+Tc5imQsVxZARPM8AHOgd7YX+aG4s5GNlML7G4sSHkHInp5l6RSTJN5JcF
         6fLCsQbrjf1V1f3uABjs9WRdh4vyH44HSRb8G+K+PpA54fEK2O6oK+hixH024Lz5/GjX
         s8h6FlJto79DNicuWKai5WbZ6SnC047rPHRrnmIRNCn/JzymDc7DmnY8GjCyZIB8W1zp
         9M0zjyIgWfwjsX9MNJtPG13qaQiiZSyZaP0yVEoBgmkxFNTjpzE71KmwsSnjmWIKDuNu
         QkLA==
X-Gm-Message-State: AC+VfDzd5PY4Iohz1fiMvz4DP4FXY1hzjE0/AKl/AuyawjMVN1J7aSbZ
	6kVKSZwetSApIjJ/zVoKIVRFvmWNlmBu+w==
X-Google-Smtp-Source: ACHHUZ5NKAmYxhPkKucTi0o7wipgPfmud29PJpMfK91JkRVUowBLYvA9Idkp7WtI4ghhnS6SLzCqwA==
X-Received: by 2002:a2e:8ec7:0:b0:2af:b260:fd4d with SMTP id e7-20020a2e8ec7000000b002afb260fd4dmr187680ljl.44.1685996823210;
        Mon, 05 Jun 2023 13:27:03 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.216])
        by smtp.gmail.com with ESMTPSA id i18-20020a2e8092000000b002a9f966f4b3sm1587087ljg.26.2023.06.05.13.27.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 13:27:02 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  5 Jun 2023 23:10:46 +0300
Message-ID: <20230605202634.42175-16-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230605202634.42175-1-denorl2009@gmail.com>
References: <20230605202634.42175-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_132707_017402_95D3E929 
X-CRM114-Status: GOOD (  11.67  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 15/17] MIPS: add 64-bit support for optimized string functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds macro definitions and a bit of code that allow to properly
utilise doubleword instructions on mips64. These changes are taken
directly from Linux sources. Also switch some o32-specific register
definitions to generic ones for this code to actually compile for n64
ABI.

While at it, this also removes an unused macro define.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/Kconfig      |  1 -
 arch/mips/lib/memcpy.S | 37 ++++++++++++++++++++++++++++++++-----
 2 files changed, 32 insertions(+), 6 deletions(-)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index ab8c8cf176..de2f539cc1 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -376,7 +376,6 @@ config NMON_HELP
 
 config MIPS_OPTIMIZED_STRING_FUNCTIONS
 	bool "use assembler optimized string functions"
-	depends on !64BIT
 	default y
 	help
 	  Say yes here to use assembler optimized memcpy / memset functions.
diff --git a/arch/mips/lib/memcpy.S b/arch/mips/lib/memcpy.S
index cee0319dcf..5c01dbdcd3 100644
--- a/arch/mips/lib/memcpy.S
+++ b/arch/mips/lib/memcpy.S
@@ -20,7 +20,26 @@
 #define src a1
 #define len a2
 
-#define LOADK lw /* No exception */
+#ifdef CONFIG_64BIT
+
+#define LOAD(reg, addr)		ld reg, addr
+#define LOADL(reg, addr)	ldl reg, addr
+#define LOADR(reg, addr)	ldr reg, addr
+#define STOREL(reg, addr)	sdl reg, addr
+#define STORER(reg, addr)	sdr reg, addr
+#define STORE(reg, addr)	sd reg, addr
+#define ADD    daddu
+#define SUB    dsubu
+#define SRL    dsrl
+#define SRA    dsra
+#define SLL    dsll
+#define SLLV   dsllv
+#define SRLV   dsrlv
+#define NBYTES 8
+#define LOG_NBYTES 3
+
+#else
+
 #define LOAD(reg, addr)		lw reg, addr
 #define LOADL(reg, addr)	lwl reg, addr
 #define LOADR(reg, addr)	lwr reg, addr
@@ -37,6 +56,8 @@
 #define NBYTES 4
 #define LOG_NBYTES 2
 
+#endif /* CONFIG_64BIT */
+
 #define LOADB(reg, addr)	lb reg, addr
 #define STOREB(reg, addr)	sb reg, addr
 
@@ -101,8 +122,8 @@ LEAF(memcpy)					/* a0=dst a1=src a2=len */
 	LOAD(t2, UNIT(2)(src))
 	LOAD(t3, UNIT(3)(src))
 	SUB	len, len, 8*NBYTES
-	LOAD(t4, UNIT(4)(src))
-	LOAD(t7, UNIT(5)(src))
+	LOAD(ta0, UNIT(4)(src))
+	LOAD(ta3, UNIT(5)(src))
 	STORE(t0, UNIT(0)(dst))
 	STORE(t1, UNIT(1)(dst))
 	LOAD(t0, UNIT(6)(src))
@@ -111,8 +132,8 @@ LEAF(memcpy)					/* a0=dst a1=src a2=len */
 	ADD	dst, dst, 8*NBYTES
 	STORE(t2, UNIT(-6)(dst))
 	STORE(t3, UNIT(-5)(dst))
-	STORE(t4, UNIT(-4)(dst))
-	STORE(t7, UNIT(-3)(dst))
+	STORE(ta0, UNIT(-4)(dst))
+	STORE(ta3, UNIT(-3)(dst))
 	STORE(t0, UNIT(-2)(dst))
 	STORE(t1, UNIT(-1)(dst))
 	bne	len, rem, 1b
@@ -263,6 +284,12 @@ LEAF(memcpy)					/* a0=dst a1=src a2=len */
 
 	COPY_BYTE(0)
 	COPY_BYTE(1)
+#ifdef CONFIG_64BIT
+	COPY_BYTE(2)
+	COPY_BYTE(3)
+	COPY_BYTE(4)
+	COPY_BYTE(5)
+#endif
 	LOADB(t0, NBYTES-2(src))
 	SUB	len, len, 1
 	jr	ra
-- 
2.41.0



