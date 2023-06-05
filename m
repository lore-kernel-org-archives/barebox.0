Delivery-date: Mon, 05 Jun 2023 22:28:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoU-00CCVV-0v
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 22:28:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoP-00014U-GG
	for lore@pengutronix.de; Mon, 05 Jun 2023 22:28:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9f8CtG8p/soXWFetLs5M5d8f94UNcHVyCmvapqI2CxI=; b=wduv/XVd1U1xDw
	iXT9911HeD0sVheo8Hv6gmqLWOUOCqFYKateN5JkIQkl1pwSQ3JPfqGEYxebOFvZDKQMQZne0QEIu
	wd5oYBKdnbHIJElvjeHjjoOvhiLl03+pt4R1+3clLi/uuNjP/Siyr/JrWnlNb4mFcIKc24Ku8qMVH
	qSOfhPYvDGv5EyahN/9VdFS3yrbMWbLpfe1eIz4efVe4UL/7WK2ZsUm/aF54qID8vKMo+LRlGqnB3
	MfnLvRSZcqR7rH0UCp+A+uzvDhqPUEgu3XJlTrSSGVzQ2yPIzczI7iUT+KkfRDilTN66trNcocJMp
	PTpt90z31gbnIwsl1ixg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Gn6-00Gh9E-1W;
	Mon, 05 Jun 2023 20:27:00 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Gn2-00Gh5Y-0A
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 20:26:57 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2b1afe57bdfso48316701fa.0
        for <barebox@lists.infradead.org>; Mon, 05 Jun 2023 13:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685996811; x=1688588811;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9f8CtG8p/soXWFetLs5M5d8f94UNcHVyCmvapqI2CxI=;
        b=LBNY5mFLIEr0Z99J3A5BX6eJCgjkHxBxuMmMvpMX+V+dWEHNgoTb00IxVu00WMc0bs
         6/DluORODjQq0E3GUsyeFjraBvTxNDrcBAHPCpG4GzjmVk9EgPQK9Hv/O7lzAZBdrZBM
         CVObWA/I3j+Prqy0eQlapf4VtEXFO6v8Xm17Ekg33EFpGtXPX1HIxXH7IXYul3qRNL7X
         oF4GQWdlb7jDuQimlLHvkvRnC0Jmnq5GCjMXALZP8ZSMwlzAwqmKISbfatxRkOcsVimG
         eA1PQO0g5N7TGTbV9x8PXIl7AAdeQI6ZmnjRwg9ykCxVXXzEiXUPFTUAnl9gmAxea7Et
         DMaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685996811; x=1688588811;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9f8CtG8p/soXWFetLs5M5d8f94UNcHVyCmvapqI2CxI=;
        b=b0IRrnvMIhSA0NSirNhOaMNCDSdzu/dD+Tndrjet3r511HOwTRyjcGG509UR7OY4rI
         brYK4Otiuadg/moF2tOeyI6+QeblQ8X9n9cFXLLX7z06wMqbITRWYrCM80rnu6Pbnm9M
         jZuCXiulOevb3uy0cCAYHPHTKIZ6b8ZM609vnw40R4L6r+atTBGit+djOtSRAFTTFAYT
         EB6oL5j/+16i9JUBfHBCp7ckwbZhJPadvYfvdFpH5bzUwyQa5wuwSFoaXIucTSX0J5gA
         h8f248a8r/iYqQromMHF9aq8l9SHJwUbZKdTJtl2X0WpikbQUAMK2BjNMcofKxJysI7f
         shJA==
X-Gm-Message-State: AC+VfDxxsU9Y63LEZjJOieHAJ5e//5ZyvpPtpggAqgqPtIHc1z6xWZAm
	8bXMokxcKiabceH2Q0LmKeGFrzfesYtBvQ==
X-Google-Smtp-Source: ACHHUZ5dlFzdEEG0AUv6PE/VHUwWuw9slHOuebV6pJKow++JA13S0t6msJeZvjja9dt8idOU13ZEMA==
X-Received: by 2002:a05:651c:94:b0:2a7:b986:3481 with SMTP id 20-20020a05651c009400b002a7b9863481mr165207ljq.41.1685996811187;
        Mon, 05 Jun 2023 13:26:51 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.216])
        by smtp.gmail.com with ESMTPSA id i18-20020a2e8092000000b002a9f966f4b3sm1587087ljg.26.2023.06.05.13.26.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 13:26:50 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  5 Jun 2023 23:10:35 +0300
Message-ID: <20230605202634.42175-5-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230605202634.42175-1-denorl2009@gmail.com>
References: <20230605202634.42175-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_132656_087299_27DFFA79 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 04/17] MIPS: o32: provide ta0..ta3 register definitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This allows to write generic assembly code that will compile under both
o32 and n64 ABIs, as otherwise the register definitions would conflict.

Taken from Linux kernel sources, commit 'MIPS: O32: Provide definition
of registers ta0 .. ta3.' (3ba1e543ab4b02640d396098f2f6a199560d5f2d).

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/include/asm/regdef.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/mips/include/asm/regdef.h b/arch/mips/include/asm/regdef.h
index 1300251661..df87582e8e 100644
--- a/arch/mips/include/asm/regdef.h
+++ b/arch/mips/include/asm/regdef.h
@@ -3,6 +3,8 @@
  * Copyright (C) 1985 MIPS Computer Systems, Inc.
  * Copyright (C) 1994, 95, 99, 2003 by Ralf Baechle
  * Copyright (C) 1990 - 1992, 1999 Silicon Graphics, Inc.
+ * Copyright (C) 2011 Wind River Systems,
+ *   written by Ralf Baechle <ralf@linux-mips.org>
  */
 #ifndef _ASM_REGDEF_H
 #define _ASM_REGDEF_H
@@ -27,9 +29,13 @@
 #define t2      $10
 #define t3      $11
 #define t4      $12
+#define ta0     $12
 #define t5      $13
+#define ta1     $13
 #define t6      $14
+#define ta2     $14
 #define t7      $15
+#define ta3     $15
 #define s0      $16     /* callee saved */
 #define s1      $17
 #define s2      $18
-- 
2.41.0



