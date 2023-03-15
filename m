Delivery-date: Wed, 15 Mar 2023 11:12:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcO7t-001NyR-Dc
	for lore@lore.pengutronix.de; Wed, 15 Mar 2023 11:12:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcO7t-0004St-0h
	for lore@pengutronix.de; Wed, 15 Mar 2023 11:12:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+x7Ta3G6rrlzQLqj5F3PkB9Q2ft2BKybMrRsclLEy1s=; b=LbNPQ00qRVgJQZ
	N3aedEjkPOsM5s/FDynHagOLtQ4QTzFnE1E+izBDdoiF7o9C3nZsX8XhgoSkUfaKWDmI42KHAlj0+
	jduYBHHNrK2OT+JJvsW0CnX6B64zo8yy1HdeG2ZqUI7wp3ZXZaStevf9++ihi1qPExI3289w5n+Kw
	1ojVSu1nsGSpYqEGslFyb3/0PKFh9vLUnM18hF/JM6ff7ZrvR4pbcaNh7Kkr0TVEsZODq9Qmbwg1y
	rVkaciZdFGtaWAzVI1gVA+lvKNhFZBD9/rQwsbq7iW/tZXzel8Bopw//ICOp/yVIbonHjtSY+I1Q4
	Xo+P6CrjSDUEAtG36z4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcO6Y-00D1m9-2y;
	Wed, 15 Mar 2023 10:11:34 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcO6W-00D1l1-0R
	for barebox@lists.infradead.org;
	Wed, 15 Mar 2023 10:11:33 +0000
Received: by mail-lj1-x229.google.com with SMTP id a32so18854870ljq.1
        for <barebox@lists.infradead.org>; Wed, 15 Mar 2023 03:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678875089;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+x7Ta3G6rrlzQLqj5F3PkB9Q2ft2BKybMrRsclLEy1s=;
        b=qsrmNxbsb3wHJtTREqSlS1h3NuXfoNrTslxLaYdXXKYvLYRALvpOjsDDmg2eEW8cSQ
         5g3pUs0PChdGjh+nDUk6LzuAVVwARZi2BbQUSKNLF3wv9It/Q4xIUNtfLLZ8iSTMC0Oo
         Rcbe08/oElGfJ6PwdFSTxH2BuDv/T8q/lOzc3L63V8fA6ufGdJ7EJQWIUN28YoAnq5pX
         1NzObZZid8BpgvnOUSilFZalOIBPxJ/4hVLjpbjo/2cSjWR+1Vs5ECR75LjhrVgkaMhy
         HY2qsWqwC+0f2KbkuF04f7oZ9wC0ZE6bzRcQdLFUHK+eBskYopnMUJX3E4UKwnTa0ecM
         j5iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678875089;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+x7Ta3G6rrlzQLqj5F3PkB9Q2ft2BKybMrRsclLEy1s=;
        b=lHjirf1CcMeLA5hGKrSpUKl+eKt8C7wnz4EAdtJGm+7s7CWMYTZYQLC5HWZ1U7NApS
         n4n3X7bCGRR9pzxmS3CgOyQLxDUAuyqU9A5/sfTAg3/wAnABNiv13b6Rjgswl3D5TCp3
         PRG2sxyKoBWv7t5+WvaIE3rGvpNWhctEGYp/4L8FdCV42je+EYmhWgn5BW8XeUtFcXZp
         4EkOC0smHjThtORY7yzAhGw//iSqtZGnhNFRzAg2IK9lvPVc/KG3Cy/avN6vv590ZQFF
         uMtGqHvP2DNThjV0PHScsVxyNknUbFfdU+zx6B03NmcA7ljL4hkUH7eWldvq14ezXYU9
         T19g==
X-Gm-Message-State: AO0yUKW8CmkGL8BRfMmcyK4XViFNkTkeDHOF2+3VMbC4ObfH/DgfQwqC
	3Jn23bjguR7ZV9URVeHM56bfJg7zdlDCia+EEZU=
X-Google-Smtp-Source: AK7set9jCbnfFM+/8OqftO35FcVdMCoXkLZ0lCoJeJkfCjfBxU5hK+h2Sb4E7WS/dRkpO2Cwz//b9A==
X-Received: by 2002:a2e:80c2:0:b0:295:ba28:a42 with SMTP id r2-20020a2e80c2000000b00295ba280a42mr525435ljg.20.1678875089132;
        Wed, 15 Mar 2023 03:11:29 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id w24-20020a2e1618000000b00298a7f8c4bfsm410461ljd.67.2023.03.15.03.11.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 03:11:28 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed, 15 Mar 2023 13:11:26 +0300
Message-Id: <20230315101126.4101087-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_031132_190387_EB30497E 
X-CRM114-Status: GOOD (  13.19  )
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
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Denis Orlov <denorl2009@gmail.com>, Clement Leger <clement.leger@kalray.eu>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] common: elf: use proper field to get segment memory size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For a program header, the value of 'p_filesz' may be less than the one
of 'p_memsz', in which case the leftover amount of space should be
filled with zeroes. This is done correctly when loading elf to memory.
However, when we are requesting memory beforehand we do pass the value
of 'p_filesz', instead of 'p_memsz', to 'request_sdram_region',
resulting in potentially smaller amount of memory to be reserved.

As 'p_memsz' is always greater or equal to 'p_filesz', use only the
former for checking memory requirements in 'request_elf_segment'.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 common/elf.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/common/elf.c b/common/elf.c
index eec62cad61..c9b3d7bb37 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -59,14 +59,13 @@ static int request_elf_segment(struct elf_image *elf, void *phdr)
 {
 	void *dst = (void *) (phys_addr_t) elf_phdr_p_paddr(elf, phdr);
 	int ret;
-	u64 p_filesz = elf_phdr_p_filesz(elf, phdr);
 	u64 p_memsz = elf_phdr_p_memsz(elf, phdr);
 
 	/* we care only about PT_LOAD segments */
 	if (elf_phdr_p_type(elf, phdr) != PT_LOAD)
 		return 0;
 
-	if (!p_filesz)
+	if (!p_memsz)
 		return 0;
 
 	if (dst < elf->low_addr)
@@ -74,9 +73,9 @@ static int request_elf_segment(struct elf_image *elf, void *phdr)
 	if (dst + p_memsz > elf->high_addr)
 		elf->high_addr = dst + p_memsz;
 
-	pr_debug("Requesting segment 0x%p (%llu bytes)\n", dst, p_filesz);
+	pr_debug("Requesting segment 0x%p (%llu bytes)\n", dst, p_memsz);
 
-	ret = elf_request_region(elf, (resource_size_t)dst, p_filesz, phdr);
+	ret = elf_request_region(elf, (resource_size_t)dst, p_memsz, phdr);
 	if (ret)
 		return ret;
 
-- 
2.30.2



