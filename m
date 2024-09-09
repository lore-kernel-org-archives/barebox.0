Delivery-date: Mon, 09 Sep 2024 22:51:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1snlMa-002wcj-2f
	for lore@lore.pengutronix.de;
	Mon, 09 Sep 2024 22:51:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1snlMZ-0008S2-PT
	for lore@pengutronix.de; Mon, 09 Sep 2024 22:51:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rmtzydHGlF9Qnbb2jCpIkGJxlLdXHRryo1GHF2o7Z6M=; b=mLkNtO/omzqCDc
	1ZftdXrK0SHiwfX4R0BBJNmHtVTSWOBt3uKyqy3iOpbvh4Pq/SPwKFy9Pyp1hIXruqUYhR3e+Jp8M
	ANOmfUWHHw64rvn4KRUVw8h6QjA4yFmCnEuzA3eEGw274XK8mrPrppWNnws7OTrQU47gx7LgQftO6
	AE7IvucDWU2oGdgTzADMvFGepWkRGVkE+ATi/dduAOE/Qtlwzo4nKHxvH6YRxHYm+DHMzSlWeHLsm
	E812++u1EfW3DcDDwms4YinGr5RRjYqds+ALJOsY8hr16nVABQKgNOt65laOksWj7uMM5PxzQVkjD
	bRgJDUR0KzcobspYi14g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snlLt-00000003I1t-204S;
	Mon, 09 Sep 2024 20:51:13 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snlLn-00000003I1O-3o89
	for barebox@lists.infradead.org;
	Mon, 09 Sep 2024 20:51:10 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-a83562f9be9so442550266b.0
        for <barebox@lists.infradead.org>; Mon, 09 Sep 2024 13:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725915065; x=1726519865; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rmtzydHGlF9Qnbb2jCpIkGJxlLdXHRryo1GHF2o7Z6M=;
        b=CTZ6zb7B13VcfCjYEtmo6KvfCvYBWmtC/rp0NNM0whhYbaXUpcaCT4u8Mn9r0WitgV
         0Agjf8k3+2zhNqWyQ8tPl0vlN+sAHurl9Cvp9AYyRrNJRBInNWKh3NWclnB7AZni0DZ3
         qynK80uj0x7136VOzfQGzygmhmZzpCIw8h1zrdi1RDMfrRsEqz5n39yuIZ5wUo3lDOIj
         NnzdUtw0bdZOcc7sOkw6Sh5a9bYaAXRe0RshK4GIpd/Nvm9u7erYylKNiU9p62M7GjUZ
         Xg8Ul17ye0ey/NRp1ZSmtaajxhEc27fFJ433AuxtDyxt9dOak2SGACLu+qNdhpFoAaQC
         p1Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725915065; x=1726519865;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rmtzydHGlF9Qnbb2jCpIkGJxlLdXHRryo1GHF2o7Z6M=;
        b=iGrElynKS7A4Rc17T21B1jfUCAaCwfu9iiWitJS1vXl5WcaWq49WKhWnv2VjqFhfEa
         19H44vLdvCQYeHGPeFu7x/E2bx6QamWGpX1EJsSBkU6wSCm0PcOJHBUdXZgUVIpyIZBu
         590pUrUGaMpAHd+CRFL11c5OvKiSFa2cZ5AKqv3m+EtxGjN19irTgyWvGHY0rW7hzddl
         xgr2gNxXZxLUUn6Xy3Kc3gmvH49Qz+R9CJeQI0aB48nlJZKL5ldmf0LEiIumiTEDi57B
         mUoGwaq2OaWjeqDpIJWO0vjCl299vdUqBxu8D/CRQZrwptOdNhkYmqzp5+TFQXL9M4nF
         +Bhw==
X-Gm-Message-State: AOJu0YwTHD8yauGT4N6y6pJ3qKpXcnCU6QmS8Z8UnD6Y5ArYiNP8BM2S
	ukUKwY1LEB2w4VTtZo9jgdKevzjxd4Oqt0iebD0IL8yz7/eKwM05ahg27Q==
X-Google-Smtp-Source: AGHT+IHi0NYXg7MoIwga43Q6TcrA3lakTwbJbNvsnZoHMBv/niDfahQRf81E+kqlkvIjf6GM7smgHg==
X-Received: by 2002:a17:906:fe4a:b0:a7a:9fe9:99e7 with SMTP id a640c23a62f3a-a8a8885da54mr1028675266b.41.1725915063970;
        Mon, 09 Sep 2024 13:51:03 -0700 (PDT)
Received: from cinco.aks (109-252-1-200.nat.spd-mgts.ru. [109.252.1.200])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8d25c624d4sm381750066b.112.2024.09.09.13.51.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 13:51:03 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  9 Sep 2024 23:51:30 +0300
Message-ID: <20240909205130.46062-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_135107_970331_B31466FF 
X-CRM114-Status: UNSURE (   9.53  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH] MIPS: fix elf_check_arch(x)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/elf.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/mips/include/asm/elf.h b/arch/mips/include/asm/elf.h
index 3dd6b82357e..ca0fb55069e 100644
--- a/arch/mips/include/asm/elf.h
+++ b/arch/mips/include/asm/elf.h
@@ -14,12 +14,14 @@
 
 #ifndef ELF_ARCH
 
-#ifdef CONFIG_32BIT
+#define EM_MIPS		 8	/* MIPS R3000 (officially, big-endian only) */
 
 /*
  * This is used to ensure we don't load something for the wrong architecture.
  */
-#define elf_check_arch(hdr)						\
+#define elf_check_arch(x) ((x)->e_machine == EM_MIPS)
+
+#ifdef CONFIG_32BIT
 /*
  * These are used to set parameters in the core dumps.
  */
-- 
2.45.2



