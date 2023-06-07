Delivery-date: Wed, 07 Jun 2023 07:13:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6lUW-00DxNs-7k
	for lore@lore.pengutronix.de; Wed, 07 Jun 2023 07:13:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6lUT-0001Xu-NW
	for lore@pengutronix.de; Wed, 07 Jun 2023 07:13:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4/WDxXIE3+CPrIst3jEpypjOJG+eJx8UUIDtM8hGwuU=; b=ulfLMNsiHHEbNX
	usM3XQ7QuAdebcSUNwt+JOcgBTAqAaus8pnUMqR1SUSO0Np+zoae2D9HXwtAtrsgZJgElCM82Fu3R
	npXkgqjeku1NA3D/SSB1vcfRQif3yM9LjpTWDwl0YRyVlRZIu9roaX1eZMPojFWH1C8SiHmNO5SPG
	PCXjNChpPTxgiQC84PxYx8IyTrR05KG+HxO+MDZLNibvw5siujg+5L0BIUzqFzh2b8kun6G6EyE6C
	Rb+naNKa1vZqXjDTvBTKFF7m17mJ4Jjr8ffP674G9PxRjypxJLPEg4ewFE8TxqCp7JHvdzGyibJxG
	ny6jrQjThBkUPVree8Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6lT6-004OlB-31;
	Wed, 07 Jun 2023 05:12:24 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6lT0-004OiC-2t
	for barebox@lists.infradead.org;
	Wed, 07 Jun 2023 05:12:21 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2b1b66a8fd5so56502331fa.0
        for <barebox@lists.infradead.org>; Tue, 06 Jun 2023 22:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686114730; x=1688706730;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4/WDxXIE3+CPrIst3jEpypjOJG+eJx8UUIDtM8hGwuU=;
        b=fB3SmOA1X7u2GFYWdIP28Lb3Zna5HYa8g6NjNx1kVJ4/BjSz1DMze4M6InpBrxqPaH
         C39inMJQwXujbO35Z/pRpSxlGtO78LLjBjSGFQ7SWyAqReAgB9hl1nSmCvav+EveQTjn
         AsDDfFPbch0YFxpgtzSp3ngVp/eQeOYlL5JHG/qquvQcOL7HA+udskDd5nzTKvGQ0fAu
         WWnXd6zF5pH01clRQeTG9QalrR4Q3D+7g58HdRT45hFDnunRQzYUNQDlRq3IwfcUPLJ0
         VB2FWOZT7cs5AdSKfWZDlHSI92GpJh4fw6YAz3E7LKTT/7sjYOCJHrJBeg5RX6/8pDoG
         19Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686114730; x=1688706730;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4/WDxXIE3+CPrIst3jEpypjOJG+eJx8UUIDtM8hGwuU=;
        b=bbpP+Zp3D1hURit3LXWFFLGehBMFRBYHzo4prn0ifXieRF07cx1u2crrtd2Hv/QrkM
         4ZgkMkSSiUh/XAlK0zk7V0ILxe72Grww/kwdwP3DQhDoLLQN47kuM54ABLZFA3TioXMQ
         8Bck9pSLucSRXP8AdbfmPmlWdy+kerx31nkQdv/uCwWi1TLRbz757SQg/0unTe5twCO5
         8PLq4SfCL4Bl1j27Y2ClyNgzL0d0Mkl8Db1ZzplV7KXY6LyIfuWfq9bIEBNHkwixVT0p
         UW8MLEwO5t+e+0CRHwH7XKas6w0j1/stnBRmgR8RiOt4jcYzmWSnMVoPY8NZ6QAvs+Li
         D9YA==
X-Gm-Message-State: AC+VfDxqkrvdWuxOg2afIC/7yVSpIcsV4TLy7cQeQaSiBt6CWytQaec7
	wWE7FDKyjJK0s6cSNWez6VyUW+Wdl094rA==
X-Google-Smtp-Source: ACHHUZ6AGmMEz23pvXEmvntiglumOqGLo1ti7APjEcDRQovBdzLV0hrIbHpkznOhgD2oG1Bh3fOhiQ==
X-Received: by 2002:a2e:9bd3:0:b0:2a7:96bd:9eb3 with SMTP id w19-20020a2e9bd3000000b002a796bd9eb3mr2242498ljj.3.1686114730117;
        Tue, 06 Jun 2023 22:12:10 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id a18-20020a2eb172000000b002a8ac166e55sm2110913ljm.44.2023.06.06.22.12.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 22:12:09 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  7 Jun 2023 07:59:38 +0300
Message-ID: <20230607051155.3175-2-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230607051155.3175-1-denorl2009@gmail.com>
References: <20230607051155.3175-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_221218_957174_CA25F141 
X-CRM114-Status: GOOD (  11.25  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
	UPPERCASE_50_75,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] MIPS: add qemu-malta64el_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This defconfig will compile barebox for Malta board and MIPS64 5KEc/5KEf
CPUs, emulatable in QEMU. The analogous 32-bit defconfig uses big endian
CPU as the default one. So, for the sake of variety, and to improve the
coverage of options, set the CPU as little endian for this one.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/configs/qemu-malta64el_defconfig | 87 ++++++++++++++++++++++
 1 file changed, 87 insertions(+)
 create mode 100644 arch/mips/configs/qemu-malta64el_defconfig

diff --git a/arch/mips/configs/qemu-malta64el_defconfig b/arch/mips/configs/qemu-malta64el_defconfig
new file mode 100644
index 0000000000..5fb090a646
--- /dev/null
+++ b/arch/mips/configs/qemu-malta64el_defconfig
@@ -0,0 +1,87 @@
+CONFIG_BOARD_QEMU_MALTA=y
+CONFIG_CPU_LITTLE_ENDIAN=y
+CONFIG_CPU_MIPS64_R2=y
+CONFIG_64BIT=y
+CONFIG_IMAGE_COMPRESSION_XZKERN=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x400000
+CONFIG_STACK_SIZE=0x7000
+CONFIG_EXPERIMENTAL=y
+CONFIG_BAUDRATE=38400
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_CONSOLE_ALLOW_COLOR=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_FBTEST=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
+CONFIG_NET_NFS=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_DRIVER_NET_RTL8139=y
+# CONFIG_SPI is not set
+CONFIG_I2C=y
+CONFIG_I2C_GPIO=y
+CONFIG_MTD=y
+CONFIG_DRIVER_CFI=y
+# CONFIG_DRIVER_CFI_AMD is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_2 is not set
+CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_VIDEO=y
+CONFIG_FRAMEBUFFER_CONSOLE=y
+CONFIG_DRIVER_VIDEO_BOCHS_PCI=y
+CONFIG_GPIO_MALTA_FPGA_I2C=y
+CONFIG_PCI=y
+CONFIG_PCI_DEBUG=y
+CONFIG_SYSCON_REBOOT_MODE=y
+CONFIG_POWER_RESET_SYSCON=y
+CONFIG_FS_CRAMFS=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
-- 
2.41.0



