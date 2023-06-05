Delivery-date: Mon, 05 Jun 2023 22:28:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoR-00CCUY-4B
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 22:28:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoO-000138-6p
	for lore@pengutronix.de; Mon, 05 Jun 2023 22:28:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uitpRgczE/hpxoEJ8Nk12cgyDNUFjZIJFQBiCLmNxK0=; b=VCY+y0eDFjclHf
	T+lkA2NxO2xCw6xMGbYfBpn4hMNL3udXSe+rnttlV1Ho2gbpS+egGKHupKLxSozbDkLrRCTQ+DHnW
	92/Sg8JKuEdB5HLH9jL1px+NH1iFkkvXDTJEMksfFHLXT5zuXJiGz6M2z6+ez/MYRw8cbjyQoT/RL
	UXa/gIkCnOuAqpUgPYirD1rXA6nqbx9D2Qe5E1nljxnL8yGg9JhhbeSzRVAf2+UNuaZKOJWq21bm3
	C0IqWWIKtv8qfqEkK1sq+26HPyC5RzKpJAzlK7hdPHQJPvzASA2oQ1lLmZBzmf0a+SXCJJudIwu+m
	5X6biSvrC8Y8zeWoGU3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6GnD-00GhFM-15;
	Mon, 05 Jun 2023 20:27:07 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Gn7-00GhAH-2k
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 20:27:03 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2b1a653b409so58208191fa.0
        for <barebox@lists.infradead.org>; Mon, 05 Jun 2023 13:27:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685996820; x=1688588820;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uitpRgczE/hpxoEJ8Nk12cgyDNUFjZIJFQBiCLmNxK0=;
        b=D90W8SC1xpPTStjbFqeRKbkT9U7taMkVqCd6vmFL/aY5k76UbwMQeFKTlH/leSl604
         Uf7+vIOURKCJJSKU7kk3EkDNR2XjSCc/wVkvkuebMUVFMgJv83k234ErrZr8Y81URWM5
         q+3EeOIvIZXIDZ0YrLtV7lDik+43MPXUJCmNchFon8MTwXEp2KEB9I0dt7yCXjeabTJ0
         3HHt8ZIRDV1oi0ifxk+SjIC+WCNAQgBAy/sQcsAsFy/uXseGGVej6BMjhrqX+7FXiboB
         NGZj2Db+Rnk7KEhbvf/nUoo4uQ9er0laH2/MtX6ckxALkde6KiWxCXOZkggaA1jWdvlG
         GRiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685996820; x=1688588820;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uitpRgczE/hpxoEJ8Nk12cgyDNUFjZIJFQBiCLmNxK0=;
        b=bdAEeUc4cILY2PuLl3iAr/oUAwCQRY2fvFOB3jL1WU5jeu3zRCArGW0/W8NjqeEPhp
         GqAzFsOHMY+HHvkjIlDkjT5vBfxc4pP0Lk8JHALTC1DLNnUfPbhXb/vI3QbBPSoEFDUR
         n5xnQLV4kHRwaOLev+tiO6+4Z7Vx2wB3Rap5PD6Z0WCMa2K2onNvequANZgI6ioU91hK
         q3q8LOCxKlX6uOkxFSQoKjn97xcAWW9Ob6m53IEqdhjSJv9qj6x3RyOz0KOHGHtWgkA/
         gohociSRK/tUQOeQzseVX5i6WEDr4MBBo1aA6JegdzrSD0fdRpPkUTPS1BLZZStz5Gq0
         DGXw==
X-Gm-Message-State: AC+VfDyGo4nG5Rb7laOwBqZlTcuvTj5nvwb0CnZEcyYfGtj/nNxrL6Pj
	Hzf8jRIOp/kEWYx0mdt0Ggt6TVkrj6Z1IQ==
X-Google-Smtp-Source: ACHHUZ7AI3fw7MU6oRN3AYMl7rHyfkgjvvzwe75cAtyLD5VirRUrOsPujLo7Sjb/GWEl8+Yped3L4w==
X-Received: by 2002:a05:651c:201e:b0:2ad:90bf:a5a9 with SMTP id s30-20020a05651c201e00b002ad90bfa5a9mr2859605ljo.1.1685996819932;
        Mon, 05 Jun 2023 13:26:59 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.216])
        by smtp.gmail.com with ESMTPSA id i18-20020a2e8092000000b002a9f966f4b3sm1587087ljg.26.2023.06.05.13.26.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 13:26:59 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  5 Jun 2023 23:10:43 +0300
Message-ID: <20230605202634.42175-13-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230605202634.42175-1-denorl2009@gmail.com>
References: <20230605202634.42175-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_132701_902539_4A6A595A 
X-CRM114-Status: UNSURE (   7.56  )
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
Subject: [PATCH 12/17] MIPS: enable 64-bit kernel segment addressing on CONFIG_64BIT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This allows using addresses from XKPHYS segment. This is needed as we
access hardware registers through this segment in 64BIT configuration,
but this also lets us peek/poke bigger memory address space using
commands that work with memory on 64BIT.

With this commit, malta with 64-bit CPU finally boots into 64BIT barebox
in QEMU.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/boot/start.S             |  2 ++
 arch/mips/include/asm/pbl_macros.h | 11 +++++++++++
 2 files changed, 13 insertions(+)

diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
index 5f134f9ae9..30828ad9ef 100644
--- a/arch/mips/boot/start.S
+++ b/arch/mips/boot/start.S
@@ -26,6 +26,8 @@ EXPORT(_start)
 
 	mips_disable_interrupts
 
+	mips64_enable_64bit_addressing
+
 	copy_to_link_location _start
 
 	stack_setup
diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
index 1fba690c8c..ce169a1554 100644
--- a/arch/mips/include/asm/pbl_macros.h
+++ b/arch/mips/include/asm/pbl_macros.h
@@ -152,6 +152,17 @@
 	.set	pop
 	.endm
 
+	.macro	mips64_enable_64bit_addressing
+#ifdef CONFIG_64BIT
+	.set	push
+	.set	noreorder
+	mfc0	k0, CP0_STATUS
+	or	k0, ST0_KX
+	mtc0	k0, CP0_STATUS
+	.set	pop
+#endif
+	.endm
+
 	.macro	mips_barebox_10h
 	.set	push
 	.set	noreorder
-- 
2.41.0



