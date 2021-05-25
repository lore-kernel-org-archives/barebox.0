Delivery-date: Tue, 25 May 2021 09:23:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llRPJ-0008Fc-Fu
	for lore@lore.pengutronix.de; Tue, 25 May 2021 09:23:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llRPI-00049p-3J
	for lore@pengutronix.de; Tue, 25 May 2021 09:23:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qqAYOk6AkFulhNC1a7VlKcN850VSO5nPbV1UMRXeUGE=; b=mHFJZnS2rbzu2m
	OlnZfa8qT1r23pmDHFu83Q4koNfnYVFKvsw4Scv/smxi9GSAt8m8AE6T8+muvPIlMN0jDBkLaRAit
	gWRMIH/9v/V2DJGUQ4tO0rrIizetGfxSj3OCwJwF7xwFRKXgq0w4HYFeelvCmgPp3eGOm7il036w6
	a0W9WZrQiJ2Tyw4hur1/Nmru6Oi+Bs7xmaE93hfKzwAA037bvWQJbMiVslcg78gBGTW82mB2vw8Up
	GhJnvJFSIarg3Hbt0hup69ljcD9cI4dCqt0L9+rGlbQHEap0dN9dkfYjWRN+mUEo72ncxckO8/n9L
	S9mzv0Bbbh/Y5RquLnWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llRNs-003qXp-Sb; Tue, 25 May 2021 07:21:49 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llRMK-003pqu-Pi
 for barebox@lists.infradead.org; Tue, 25 May 2021 07:20:15 +0000
Received: by mail-lf1-x135.google.com with SMTP id f30so7454725lfj.1
 for <barebox@lists.infradead.org>; Tue, 25 May 2021 00:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s93CgG9ecv2NcsCmDC9KYtcBv2vPDPkDvyz4MctJong=;
 b=ni04y0/SC2iVgb/IN5FM0r/MVr0x1zbtfwRQWr+QIF3f6fwAbKKv7sM8Ro5Hn5gYF3
 AHVqdpPdbkk/QA0IfgkiNwGpkbsahAgc5xNMNbxylMqVsZc81wcWsYr+oxexPFIzrVY2
 KOIiygOCwK4cDMIn85umGQEk8rxdBvZE6LPyk6UaU0hxYGF5AeX5/j21R8DOb/XgJ8IQ
 OpkacOyX8jdonOUQs/y+JiqBsUaQ3i4YqtXZCUspwaX4Mkv2qjOrRkWfFxXpeXuzrC4E
 dhxkj6hBxQHRFOYa4TPVHL40iJ4KSySF3Fplrd2/5RYYGfTbobI3WDETaxYJWuQ6XHbC
 qOrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s93CgG9ecv2NcsCmDC9KYtcBv2vPDPkDvyz4MctJong=;
 b=mJhZr/6kpoZ6zh1vr5dxF0uBcFSxc1+zvJHU8YhhuEA313YCUrcEaax1HKokbpKXyH
 5qGK+n175m405orq6aRcq8Bm6Qmou/CuDP3LIsXi7q9yLD+Brs+FP9y3FJxrPBRJ3fpU
 T5iuYJaNQtXZ6wgqXFxFdUouScqk99Q6rIVCH0oDEqBCzIJBrwCCTMCRxHMDzavgMnsl
 5qbQWH+6vvWhzKzWgpT1vvCeF/Xc8v6xgOTWWUQ4JxIIAA1O+1MFxXGVqoHuaWq0UxgT
 ezh5uMehLlCTwzWK5ceE4liD7Gig0T1+M9T3eo7qnb1fkyx4ZAkAAky3DRSQuxJ6ulms
 VwBQ==
X-Gm-Message-State: AOAM531GYMGeMzMtUO024IekTw9nLjBIUVcx/GHzZOso3FDO2RCMzsom
 NWmH7BCTnbNBLbbKFH/F4+x1DQlu2zMB/g==
X-Google-Smtp-Source: ABdhPJzpOpmR/j4xXmXLiQRev6FlmwE9W1SML0U3used2G83lLhRQKFd92WRJmp1iwaXxWBz6YY2Qg==
X-Received: by 2002:ac2:55b2:: with SMTP id y18mr13176931lfg.79.1621927210926; 
 Tue, 25 May 2021 00:20:10 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-17.dynamic.spd-mgts.ru.
 [109.252.203.17])
 by smtp.gmail.com with ESMTPSA id f36sm1641387lfv.248.2021.05.25.00.20.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 May 2021 00:20:10 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 May 2021 10:19:52 +0300
Message-Id: <20210525071952.18045-11-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210525071952.18045-1-antonynpavlov@gmail.com>
References: <20210525071952.18045-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_002012_892956_CDF8E98E 
X-CRM114-Status: UNSURE (   9.47  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,UPPERCASE_50_75,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 10/10] RISC-V: add litex_linux_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/configs/litex_linux_defconfig | 76 ++++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/arch/riscv/configs/litex_linux_defconfig b/arch/riscv/configs/litex_linux_defconfig
new file mode 100644
index 0000000000..c93a9cb57c
--- /dev/null
+++ b/arch/riscv/configs/litex_linux_defconfig
@@ -0,0 +1,76 @@
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
+CONFIG_NET_DSA_MV88E6XXX=y
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
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

