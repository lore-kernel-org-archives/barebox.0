Delivery-date: Fri, 07 May 2021 00:10:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lemCm-00037U-Fg
	for lore@lore.pengutronix.de; Fri, 07 May 2021 00:10:48 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lemCl-0005D2-Fx
	for lore@pengutronix.de; Fri, 07 May 2021 00:10:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XwgF50l2BeTRnCZWRzBsSPLdx5UjHMkIqe0+9+2ax1U=; b=mfoi3wzBqZeiN2sq31sRY1/S4
	QAA4GBVh7b/aresmnvFsJPCj8OcDndsU92OR6LDXpM5i1E/eNTSp4SmduWEl6l6gb7YUbZAGYYQ/G
	b2C5P2PjnwGQ6MFeIBOgthrGn7rRRMaee/OeaxVe7jV6dEImCvNdJeYt9t4p7WmO0PLkEt5/NzB+e
	LywPa8lwoaqrOJdr/0U+R31cvfIy8FJc6d+XgW59L2dp+pESbTaNfubS9G00a7vIkg2RPndqD9OkJ
	W9ozkS2ROYsqmFXifqZhKlbOdEt7gBAd90G6RuvkF8VAUjE2seE2uZD2j/vfqV/1RAEXxt8sSOyVn
	arQL2oeSA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lemBt-005Rbj-U2; Thu, 06 May 2021 22:09:54 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lemBA-005RPJ-UH
 for barebox@desiato.infradead.org; Thu, 06 May 2021 22:09:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=bTwrfEERpRrf/fdBI3d5L6KhLN40i3Uju5yibhXnNcA=; b=bqXkoes7BReDvU1FYoZLfjQyA5
 CHMIzfOgIw/SN0rhyWkzx35I1bEOmRszfU3uqdybXggY48BuPGTjryxMxbDdUFlzAmIWW48ffMIRR
 cPVJtk6Vv1hRniGLQw0YleKr0R36yCFa3w441Ap8JRDMZmzPsjfOqKFWHcxtxLOlvDpOLWvb1RbTi
 mcnbf2shZzf9yFb340ExnV+wpYckYvIEfY0u0i4jgxaQiG3QVwr9obw+hHrESYb86gP/FPY7hIFVa
 ukCf/IOfLnl3IZVi7E7lfK05FrRLzs78/MMTD6mXmXzvH1K+KxYhvXwk55Nav42zKJDS4RfSF3ehe
 51khFTzA==;
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lemB7-006QQF-QS
 for barebox@lists.infradead.org; Thu, 06 May 2021 22:09:07 +0000
Received: by mail-lf1-x12b.google.com with SMTP id h4so10050436lfv.0
 for <barebox@lists.infradead.org>; Thu, 06 May 2021 15:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bTwrfEERpRrf/fdBI3d5L6KhLN40i3Uju5yibhXnNcA=;
 b=VqjFy0BFevKXYfrfVDldI1qkR5WgQHsOIWVxEXKv8fqJ6mTGlJkGqD+Bd77vBZFBka
 OpYoNXFD6yLG04YxlYLpe03nDbvHGwqkYj6YkF33mXMNNmoVgPl3QbE2EAjneH7nc2d3
 eLA+l7HI5yiEAOEOHBD2uAqNRjEx3DDzIcoo0AvigSWb3mrnT8i3l2hPR15akC/n082d
 lHx2hFbJZktgNB64idjVuS0OtqRkgui1txHg9aDukmo+MMA1RoEHb4aevyLBsl3511gd
 AICe/3qHKVqnopCMS6wi4TVP7CDPvHRwPOtq66my+/ZHB+mi/VYunBF8k3j+H9+JaTUx
 QBaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bTwrfEERpRrf/fdBI3d5L6KhLN40i3Uju5yibhXnNcA=;
 b=XonesYJ3uue5mSJuQu4PUGSELNhds+AlfSBFMHd4X+/cLentx3X/ZZSGFkEhLSHJTO
 oZh4MsiXFv0Gv2kAo0j6COmp1rx5QBXR+Wjcs2Z0MmFSo2OLfcE1ZQpkTlxyGz/MOXK3
 hFO4dSBzG7YS/cLc/LQ2XeHRfNXxaC4GWn9JD9u0efagaGre+l0AWuLJUMwiJW2T6ka8
 I1u4zqCnNoSzFlFsCeclmUJcRVqhFdcfem+oGfuQM57Hijt5CyXVEh0Q7EDEs2v0Qf6r
 x2mX5NNLFGQu5ldGvpIcxPsKJIv6b3agYh/VeM/SaUWxebxbLm7xS2fTAWDXk/BLoRa+
 6eug==
X-Gm-Message-State: AOAM530DoQG7vhv7308I2i/SObi3c5w8gHY5PyOjCFTrL+GNZ7LmSR+P
 5tM1Nz6mrAc7Q1Mh52hkXeoK34nlw2nuNg==
X-Google-Smtp-Source: ABdhPJwFAwspB2OolIoySPZGgSYcPmqgDZ/yMsWmRU4tpMF2Zky1ILgW8Z5h7tLhfDtBbAAr/7oSBA==
X-Received: by 2002:a19:ad03:: with SMTP id t3mr437136lfc.359.1620338943682;
 Thu, 06 May 2021 15:09:03 -0700 (PDT)
Received: from localhost.localdomain ([176.59.42.245])
 by smtp.gmail.com with ESMTPSA id b24sm962584lff.207.2021.05.06.15.09.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 May 2021 15:09:03 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri,  7 May 2021 01:08:33 +0300
Message-Id: <20210506220834.223350-11-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210506220834.223350-1-antonynpavlov@gmail.com>
References: <20210506220834.223350-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_150905_875094_0DAEECD8 
X-CRM114-Status: UNSURE (   9.17  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,UPPERCASE_50_75,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 10/11] RISC-V: add litex_linux_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/configs/litex_linux_defconfig | 77 ++++++++++++++++++++++++
 1 file changed, 77 insertions(+)

diff --git a/arch/riscv/configs/litex_linux_defconfig b/arch/riscv/configs/litex_linux_defconfig
new file mode 100644
index 0000000000..211fa4bbce
--- /dev/null
+++ b/arch/riscv/configs/litex_linux_defconfig
@@ -0,0 +1,77 @@
+CONFIG_RISCV_M_MODE=y
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

