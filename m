Delivery-date: Tue, 17 Aug 2021 12:13:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFw6F-0005vS-7W
	for lore@lore.pengutronix.de; Tue, 17 Aug 2021 12:13:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFw6B-0003g1-4C
	for lore@pengutronix.de; Tue, 17 Aug 2021 12:13:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nBkiKsqPddz621deQSGB9GvuqoaDqicA7PTAB3+GvmA=; b=Uab0TKEC8UpUw6
	pUikavEQZy3LbYoBDY6CVIfT6aN4BjSRFqrJsYPrndupYQh7W6Hf3Hy4R5PzxcuF+QLSTDB2R7zqh
	Cc6Ybq1utRkdhyNeqAnXSP/HgphamIOwgR7Tvi60gB4vN0PNoEZygFZDV8SizwQ1AUZTX+oI2U96d
	oFD6v8K6LGy0AWIObm+X+mz7OJmx18U8uQSxqdD1YK8QAW5K+faZ6DjNQ6WbYkSh9KsK5zKJSiOqs
	lZ3rGLfqLA32pfgu5k6Y3BQRq+rK1/PrgY4kOCvACBtwLbkjsNNramTDVQmmTsrM6PPUmIt3a7JvI
	nJiiFkxVpt621rEKrDww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFw4V-0021oU-Ez; Tue, 17 Aug 2021 10:11:51 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFw41-0021dJ-Kv
 for barebox@lists.infradead.org; Tue, 17 Aug 2021 10:11:24 +0000
Received: by mail-lf1-x12c.google.com with SMTP id g13so40285162lfj.12
 for <barebox@lists.infradead.org>; Tue, 17 Aug 2021 03:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d7BnU7atGjxq+vOhHPa0SNdnw/0wBFs8rR3aL11iSng=;
 b=pcCZ5stwgGWYi8IlSNlpubfQ4J55RbMeXyIQxbISLwFa6MpKmggJ1qEvMF7VoOhZzX
 ijx6gm4oeLuXoZoZAJ0a1fHEYrnzZT71OEG3JNJ1Oyaz+S/EtKLD69efflpywCSlbv2+
 xFpTyzZJ8LzsWn6ILBwaFJ1mvw5IMig+L0/gbvvT2rD/E48XZMj7l8dvwVWN7uXHI8Fq
 k+2MRkmPT07mxyC7mKGZotc9rCIk+OiVc7sOy3GQJbb9Fmbw1IjoN/9z+EmcCJfEoJBf
 2RjQSym5QpSK+6O9pBnYRbQ5Fqx9hwzt4U7jbJZoh3/O72lbGXB7XjGKpUr7Bv/ygOZE
 du5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d7BnU7atGjxq+vOhHPa0SNdnw/0wBFs8rR3aL11iSng=;
 b=F/OQrATzoNbLHR5tfwzpKkL/A23JAUZWDec/s5xruEHGH0f8eH3KbQ1v8H94n/MMAD
 /za+7RBdkUWjPD5pt/5tMvU+dMD4QCJZghNXO/dkzLzE+7/6X9k/7U9kMwUa19H/YDTU
 jywuajkr4SS/IG0ZA5RMsGyok8LRLYOYZkrbW5txt3vdhTzc6VSc8Nfpcp5CcKe+vUxl
 34TQC+BSurZF37gbTMe4OAK7gcaUXBg45G4mqIGXb0c/CI5vL3f82IxhJMcS8sYhkgkX
 6lCtgWLBIBfZRj8+cZNjdU9TfvRPLJEOTRWDG5BCgt+1Lqn1GSHddB3f44wjC4fpv/3G
 T3JA==
X-Gm-Message-State: AOAM533H95sCbYcKSBfQZtaCzmoCDy2F8aGLtQXgvlXRsg42d+RAEWaM
 1gFv81KTaml7BYADk3n4XQigfyCULfg=
X-Google-Smtp-Source: ABdhPJyroBco9t47GyCIdF/30Apl6pSHA1DFPFIVeRFzfD1gnhm/4GR9uVNpUo+7MecJlPpcy1WGSg==
X-Received: by 2002:ac2:4c2f:: with SMTP id u15mr1837676lfq.294.1629195080175; 
 Tue, 17 Aug 2021 03:11:20 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-80.dynamic.spd-mgts.ru.
 [109.252.203.80])
 by smtp.gmail.com with ESMTPSA id x16sm144412lfa.244.2021.08.17.03.11.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 03:11:19 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 17 Aug 2021 13:11:04 +0300
Message-Id: <20210817101104.114945-9-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210817101104.114945-1-antonynpavlov@gmail.com>
References: <20210817101104.114945-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_031121_744106_36E441F6 
X-CRM114-Status: UNSURE (   9.25  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,UPPERCASE_50_75
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RESEND v4 8/8] RISC-V: add litex_linux_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/configs/litex_linux_defconfig | 75 ++++++++++++++++++++++++
 1 file changed, 75 insertions(+)

diff --git a/arch/riscv/configs/litex_linux_defconfig b/arch/riscv/configs/litex_linux_defconfig
new file mode 100644
index 0000000000..8e19964890
--- /dev/null
+++ b/arch/riscv/configs/litex_linux_defconfig
@@ -0,0 +1,75 @@
+CONFIG_SOC_LITEX=y
+CONFIG_STACK_SIZE=0x20000
+CONFIG_MALLOC_SIZE=0xf00000
+CONFIG_MALLOC_TLSF=y
+CONFIG_PANIC_HANG=y
+CONFIG_BAUDRATE=1000000
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+# CONFIG_TIMESTAMP is not set
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEBUG_LL=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_CMP=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_OF_DUMP=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_DHRYSTONE=y
+CONFIG_NET=y
+CONFIG_NET_NFS=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_DRIVER_NET_LITEETH=y
+CONFIG_AR8327N_PHY=y
+CONFIG_AT803X_PHY=y
+CONFIG_DAVICOM_PHY=y
+CONFIG_DP83867_PHY=y
+CONFIG_LXT_PHY=y
+CONFIG_MARVELL_PHY=y
+CONFIG_MICREL_PHY=y
+CONFIG_NATIONAL_PHY=y
+CONFIG_REALTEK_PHY=y
+CONFIG_SMSC_PHY=y
+CONFIG_DRIVER_SPI_LITEX_SPIFLASH=y
+CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_MTD_M25P80=y
+CONFIG_CLOCKSOURCE_DUMMY_RATE=20000
+CONFIG_SRAM=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_GPIO_74XX_MMIO=y
+CONFIG_GPIO_GENERIC_PLATFORM=y
+# CONFIG_PINCTRL is not set
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_DIGEST_CRC32_GENERIC=y
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

