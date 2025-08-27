Delivery-date: Wed, 27 Aug 2025 19:55:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urKMi-005A6i-32
	for lore@lore.pengutronix.de;
	Wed, 27 Aug 2025 19:55:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urKMh-0004Zn-Mn
	for lore@pengutronix.de; Wed, 27 Aug 2025 19:55:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PLKTBBXvtLD3XhAdL/7Dkxap9QQtfCyXROUIcYTdJwA=; b=KsLfKIaNOw57dasOoyGgdSmWqP
	2ru8TBVabuwEZ3yfNnUIVfB6YO3TsjDpbBK2duYNeQ0ppZEYRQyPuiLiDnitAnPkX4BNN5YrgBz88
	Hs3+6+ty2lgKEKX1NPt+I9EQbsLOqL7xZs6pZzyo3a18DO+EcSNYHFgTc8LUAChRXETSrCLxx1h6I
	2nwSn0ctr8w2gESjvfE9ooSuttvGdEwj8SP4ljyQoVwn1zNctp3TrSjn8qUCGP6gqJhTqlxs0EhKc
	fEg7BVhmgP9P1PwnRYYmIGfdHOIEoBb87+KY+xYdagLbgEKI0/Vk7ZmNYRGk5WA3LqY4P6TWPP2Sn
	RzmilAaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urKM8-0000000GNMT-3WgU;
	Wed, 27 Aug 2025 17:54:44 +0000
Received: from mail-qv1-xf34.google.com ([2607:f8b0:4864:20::f34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urISY-0000000G2w7-182N
	for barebox@lists.infradead.org;
	Wed, 27 Aug 2025 15:53:35 +0000
Received: by mail-qv1-xf34.google.com with SMTP id 6a1803df08f44-70ddbb81734so627026d6.3
        for <barebox@lists.infradead.org>; Wed, 27 Aug 2025 08:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756309992; x=1756914792; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PLKTBBXvtLD3XhAdL/7Dkxap9QQtfCyXROUIcYTdJwA=;
        b=lSuclK9aGvmzKMju7tVGW2IXN/W30Ysy/8FjsETG1F9Of9pkTsec+EWec7+guzquA8
         C6soBKB8HSAtY3YdOP/u1zG67bTTK7JU/pzOGVPa9/jqZNjZym8NT0JnQzmH9f9oIN4Q
         hI7NWwULSLJtGb3yXrrgOv3wndu8KWXDrA9042GPrP69pHWLvUGEcv72XdhTUCrz2h54
         nR3pGdTISqBacqyJv7L3sCAkpgumRbc8KR0CJ8/2UOZSjNRuRcAxbEQALiCHPEK+jakQ
         JhYc07Evx7fWRUH28Ev9/Us0IZlJuic2ycmOmU4mxvap1mGCk/PQx9QX0UKrmbgCOC9R
         j08Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756309992; x=1756914792;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PLKTBBXvtLD3XhAdL/7Dkxap9QQtfCyXROUIcYTdJwA=;
        b=jMaNuy6iQAf7IYyMV9qSpVeCVQ23KPOTE25Sup8SThiU7siIBfSGjrpG273NoMZKLx
         z80U+KSZ1EY+SUTumJxK/XAheo5GPO1HjXYMipP3ycgEzM2pnbwqyGubw15S/82g47yg
         w54jM7zRdN7XrvCRpIALqJZjDaxmo+BSKe9MYav6nS1uNahkVxHUQix17TSO/shIUUAY
         DEWyTUHSITAKvNZrRywSymsiiOI0UxQe2jeUhbJpkybtyWDcxGPQcw/9fex/bWBcgTRa
         C95xQh4dGcC4lo+3AqqWaEB0vpuT4N19uWQ4iw1Ul1sSKCjX/Zn40rEpopSPqJbL0E9W
         5Kfg==
X-Gm-Message-State: AOJu0YwVFNPzvsjUI6kyWB3LtGlPQyBuETLHUm0Fvib13eTHrVfVWidZ
	S9ti9z1l9/IocLQek0UUltYIiiaFILMJvexhkdjSlSbQJ/MaTKtlAKgo
X-Gm-Gg: ASbGncuaNEYVukL/twMl+H4SHIDnbL0YKts1vFxk5DvmjGkK68pX/5udkswR8QJwBa4
	4BjtU4cc+qtJZEhETo9okPSCQp71jqWK4LrqIXgCJXK8t2Zn2qBabs8wFjwKbSUZJBscT1JnORI
	heZ0CPOGcHxUK08TFp/wqVemeibHq2RRFn10vRi06ImGFE1ZdkpNhnIt/M+8MpZl0pnmMQJlZo4
	mZaEnpxxHeZnae0hpVQaVY8Jr9nkL/dVzJSgdphvPaNE3/hkuTITNzzNqp4s5mIZME765W6obzO
	HHsxEIb9QTlfuxYiEMedcdw3F3quY0eRJzl8PyZBFxLIZTM3JGUFOGxeeD3S++LApkFDbrN1a8X
	ptfi5wMymAnEFA7BmfDhPEozFPpO9iHEBWJMiD99PilXH6/n6G1PD1ircDr1EBUwgze87wxjELV
	Zwr87FIwOGH/bmRomBAyORGyRiZQ==
X-Google-Smtp-Source: AGHT+IGbXRYeS2NZS7rH/ZXYAqqroIqZAkzCGcSq/rgzaM7scoC/jUx5YY1vzBjSe/kpckEfwTUsRg==
X-Received: by 2002:a05:6214:cc7:b0:70d:aa1f:9e29 with SMTP id 6a1803df08f44-70daa1f9e65mr176395326d6.1.1756309991828;
        Wed, 27 Aug 2025 08:53:11 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:50dc:5c11:c7c9:56a3])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70da714ac64sm86302666d6.4.2025.08.27.08.53.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Aug 2025 08:53:11 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Wed, 27 Aug 2025 11:53:07 -0400
Message-Id: <20250827155307.764061-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_085314_444035_7CF0C278 
X-CRM114-Status: GOOD (  12.94  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] arm: crypto: add a check for crypto extensions support.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

In some configuration the CPU may raise an exception bacause of an
unknown instruction if it does not support Crypto Extensions for
example in some BCM281X (RPi3B in my case) when running barebox
as an EFI Payload, where the EFI stops with a synchronous execption
See bellow:
Synchronous Exception at 0x0000000037BFF548
SP 0x0000000037F798C0 ELR 0x0000000037BFF548
SPSR 0x20000209 FPSR 0x00000000
ESR 0x02000000 FAR 0x14F64325185430BF
ESR : EC 0x00 IL 0x1 ISS 0x00000000

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 arch/arm/crypto/sha1-ce-glue.c | 7 +++++++
 arch/arm/crypto/sha2-ce-glue.c | 9 +++++++--
 arch/arm/include/asm/sysreg.h  | 6 ++++++
 3 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/arch/arm/crypto/sha1-ce-glue.c b/arch/arm/crypto/sha1-ce-glue.c
index 5b49237573fa..fea15f295a00 100644
--- a/arch/arm/crypto/sha1-ce-glue.c
+++ b/arch/arm/crypto/sha1-ce-glue.c
@@ -14,6 +14,7 @@
 #include <linux/linkage.h>
 #include <asm/byteorder.h>
 #include <asm/neon.h>
+#include <asm/sysreg.h>
 
 MODULE_DESCRIPTION("SHA1 secure hash using ARMv8 Crypto Extensions");
 MODULE_AUTHOR("Ard Biesheuvel <ard.biesheuvel@linaro.org>");
@@ -88,6 +89,12 @@ static struct digest_algo m = {
 
 static int sha1_ce_mod_init(void)
 {
+	uint64_t isar0;
+
+	isar0 = read_sysreg(ID_AA64ISAR0_EL1);
+	if (!(isar0 & ID_AA64ISAR0_EL1_SHA1_MASK))
+		return -EOPNOTSUPP;
+
 	return digest_algo_register(&m);
 }
 coredevice_initcall(sha1_ce_mod_init);
diff --git a/arch/arm/crypto/sha2-ce-glue.c b/arch/arm/crypto/sha2-ce-glue.c
index 88cbc7993dac..8479b3c60cb3 100644
--- a/arch/arm/crypto/sha2-ce-glue.c
+++ b/arch/arm/crypto/sha2-ce-glue.c
@@ -14,8 +14,7 @@
 #include <linux/linkage.h>
 #include <asm/byteorder.h>
 #include <asm/neon.h>
-
-#include <asm/neon.h>
+#include <asm/sysreg.h>
 
 MODULE_DESCRIPTION("SHA-224/SHA-256 secure hash using ARMv8 Crypto Extensions");
 MODULE_AUTHOR("Ard Biesheuvel <ard.biesheuvel@linaro.org>");
@@ -116,6 +115,12 @@ static struct digest_algo sha256 = {
 
 static int sha256_ce_digest_register(void)
 {
+	uint64_t isar0;
+
+	isar0 = read_sysreg(ID_AA64ISAR0_EL1);
+	if (!(isar0 & ID_AA64ISAR0_EL1_SHA2_MASK))
+		return -EOPNOTSUPP;
+
 	return digest_algo_register(&sha256);
 }
 coredevice_initcall(sha256_ce_digest_register);
diff --git a/arch/arm/include/asm/sysreg.h b/arch/arm/include/asm/sysreg.h
index 7d567e08d8b7..6f47016e54e8 100644
--- a/arch/arm/include/asm/sysreg.h
+++ b/arch/arm/include/asm/sysreg.h
@@ -12,6 +12,12 @@
 #include <asm/system.h>
 #include <linux/stringify.h>
 
+/*
+ *	ARM64 registers
+ */
+#define ID_AA64ISAR0_EL1_SHA1_MASK      0xF00UL
+#define ID_AA64ISAR0_EL1_SHA2_MASK      0xF000UL
+
 /*
  * Unlike read_cpuid, calls to read_sysreg are never expected to be
  * optimized away or replaced with synthetic values.
-- 
2.34.1



