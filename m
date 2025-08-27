Delivery-date: Wed, 27 Aug 2025 08:06:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ur9JA-004z8b-2k
	for lore@lore.pengutronix.de;
	Wed, 27 Aug 2025 08:06:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ur9J9-0001mU-Lc
	for lore@pengutronix.de; Wed, 27 Aug 2025 08:06:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SZlkiF9bGzDhDdF+nkH5f3iue4O9d22XKEXjiw9RZE0=; b=YmVMqn02caO+CuFtD+0qnVCnjC
	jEyunz49Vxb3kRxS54BMV/3ZebaoqvyDcxBWI+cggPcO53AYOyEB+ssIxw5bIcfaTu7UhAEOyII1P
	iPfsqVMahCdpHK5EnLCL6STWUuSDsjw+I16kVY1WYVnRmDPRa0ansj87oZzzsnFkC9tt6+D8XDgK1
	1leIQmpHi0n5eg2oAoXko9+a6wrHc10oYFY1F/eIjhxaM6XGEVpdSHBKRWYx57Q9gA1gH2BtrAD62
	Pj4qfv03pgu6+yfCFffGKhJSS7/pXaMi8n8bDD+B/vmcVRmsuy13kPbTXFWvHRVrVYCwRVucL4Fjl
	JswUxOKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ur9IS-0000000EDVK-49tR;
	Wed, 27 Aug 2025 06:06:12 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ur9IQ-0000000EDUZ-1fAJ
	for barebox@lists.infradead.org;
	Wed, 27 Aug 2025 06:06:11 +0000
Received: by mail-qk1-x733.google.com with SMTP id af79cd13be357-7f722cb35c4so61292385a.3
        for <barebox@lists.infradead.org>; Tue, 26 Aug 2025 23:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756274769; x=1756879569; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SZlkiF9bGzDhDdF+nkH5f3iue4O9d22XKEXjiw9RZE0=;
        b=TUjDXR4u4zsWesh8yUBDmPkpdmUslftaECRZgNruHzpaKM4PnD0+G5rS8+EjrRwhlj
         1TNkiBuiISWCpo5eNXfIVycCUN5JFEZ2Brq2ct860vUVerGYFntB4WQNITyqnHYTegST
         T68TGZYVOELZr694PRDdSu4to4vrWdjFk1a0GH6h9CbhipvGDmxY1PNQCvfQckkQV5O7
         tacewTsgq4e0opP2CMxaz5XusEn4kyYGVenqvmapGuPAleWu+ER1adoT7PD6S0BxBgms
         8/vHtqVWJwwYgdMCmaKCMt1J2SNW9SMPKbqyK9rgVHXTpvFC97U7hZRl8pW+i0ubaU8K
         bfXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756274769; x=1756879569;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SZlkiF9bGzDhDdF+nkH5f3iue4O9d22XKEXjiw9RZE0=;
        b=fhrrr3+opmTjqjCXxZ0dyNFZa5RK5AepA03fU45E/Ns9xzD7ab9QM/1nomvbTYdikV
         KzabalagPz1JH3Nn/IrerielKx+x18/urwGNnp4QTnap/WdAnwlmddlhmYXUwxGGFum3
         +P31pKxEGa5pTkFSHxhWEz8mjPFJAt9KipPRU2IWspmOAKMM7KrHitnOtFyymI7v8nQi
         CHTNwCYxIcvZ6gmskhihowmNX69QtUeYzbpDlEiJZMVDxHXGHcQeV/XC9dtVjgTVFRfc
         fEZcJkxpinP4TVoARfMJVfk3CcEI7mH5FOzkrsKV94EvX6tLUTY4fbusiVSNG9htdGZN
         wMSg==
X-Gm-Message-State: AOJu0Yw2cs87WNC4VQrHVjxaJLLFtqtxTymlsqmO1dihp6zN4u/i/xqG
	Yg5Ofe6aSZ2OL3xC3dD78Mdw2YMnV3zHwBjO6NwZ6ySPNPBqsMxhTDfW
X-Gm-Gg: ASbGnct/xLyrU8d5TaykmPuCpcEPj85TbIUCYlQOUys1I/Ubfly058XrETwd9mlwgUs
	9jwZcasMuAnErEDu8nQczj1NURUXQCEr3G9vetS6tGSvV68aa6n38pSrT4vZG3CaS+/dXwXT343
	RObwj3uV+d3lrgC+WQ9EFvXQ5cgctDXXKRTK9Tuz2p0g7OQS+dJAelmM5K6tMxZ8JwqTE37Guht
	Eb9cSZAVBS8E7nsWRq+sKv5w0H67pMO5tsns4OdaY0NJJdVCiOBwzO5NBNPwWBWXkYbXKTq10ze
	EjFE7Enl9h16vuRkjqasbiO8U5cRsgayKuA7rlUOlL0QA7wOLTtEz17Vj5FMNOVPmmoJL1k69NU
	J6Ll+ogr7bg/wxKcCo+ISFYUBYirwFSkZdONu0fIX7CNw5kt4IvQE5k3DA0/zujNZcD5SaCUwiY
	mtRyh/gc+bgjVZsqMKiUlexeK1
X-Google-Smtp-Source: AGHT+IHJiFMTOCdzSoY0WvWOU6/JpSKhn1aBwSWBP7Fj2LkEI7jowZxjRU0TJCwGi1hOLOriS0B3TQ==
X-Received: by 2002:a05:620a:d86:b0:7e8:4337:9975 with SMTP id af79cd13be357-7ea10fa53b5mr2407382285a.33.1756274768964;
        Tue, 26 Aug 2025 23:06:08 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:43d:b528:7bcf:fd1d])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7ebed8902c5sm822423685a.22.2025.08.26.23.06.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 23:06:08 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Wed, 27 Aug 2025 02:06:06 -0400
Message-Id: <20250827060606.610447-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_230610_437994_D4203AC7 
X-CRM114-Status: GOOD (  10.01  )
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
 arch/arm/crypto/sha1-ce-glue.c | 6 ++++++
 arch/arm/crypto/sha2-ce-glue.c | 6 ++++++
 2 files changed, 12 insertions(+)

diff --git a/arch/arm/crypto/sha1-ce-glue.c b/arch/arm/crypto/sha1-ce-glue.c
index 5b49237573fa..3c5213774429 100644
--- a/arch/arm/crypto/sha1-ce-glue.c
+++ b/arch/arm/crypto/sha1-ce-glue.c
@@ -88,6 +88,12 @@ static struct digest_algo m = {
 
 static int sha1_ce_mod_init(void)
 {
+	uint64_t isar0;
+
+	asm volatile("mrs %0, ID_AA64ISAR0_EL1" : "=r"(isar0));
+	if (!(isar0 & 0xF00))
+		return -EOPNOTSUPP;
+
 	return digest_algo_register(&m);
 }
 coredevice_initcall(sha1_ce_mod_init);
diff --git a/arch/arm/crypto/sha2-ce-glue.c b/arch/arm/crypto/sha2-ce-glue.c
index 88cbc7993dac..f7bd818259ec 100644
--- a/arch/arm/crypto/sha2-ce-glue.c
+++ b/arch/arm/crypto/sha2-ce-glue.c
@@ -116,6 +116,12 @@ static struct digest_algo sha256 = {
 
 static int sha256_ce_digest_register(void)
 {
+	uint64_t isar0;
+
+	asm volatile("mrs %0, ID_AA64ISAR0_EL1" : "=r"(isar0));
+	if (!(isar0 & 0xF000))
+		return -EOPNOTSUPP;
+
 	return digest_algo_register(&sha256);
 }
 coredevice_initcall(sha256_ce_digest_register);
-- 
2.34.1



