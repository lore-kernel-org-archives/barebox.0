Delivery-date: Wed, 05 May 2021 12:11:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEUq-0007c5-MA
	for lore@lore.pengutronix.de; Wed, 05 May 2021 12:11:12 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEUp-0005Mn-0D
	for lore@pengutronix.de; Wed, 05 May 2021 12:11:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NWwb75jSLd4/Z1Lmmq6SK4nXNuR6tEZJE0prjdrH2lQ=; b=AlLKiB+kGbIFfQaDY+gRyV7PB
	7VfXEm+ZnXz/GC5PIouonqutBzAWKiUjFjs2K88o86M4cMeKgu0Qp0vKoceRnN9CegvXjo3BQp9LJ
	IHh0QGetUuoie76ZI5mf8oBfuWUGL+1Rf3KnbjGYTK2ofZ3lSxmpreGVDpejGZe9ue2NguqB6umTN
	HhYcfjd1G4+sCR9FupfEmlnLqWU1D6DTEG7j2vJgse3ooN+fgGWjW75lq2a4V4km/kk4oAyv+6vGW
	YgeDOloCq2hLfTHAHQCekZKvBq7UPmm2YUi03MzsalgFTXyyQ72OChOWBIfe0NyK2Otlt8zACB6eI
	ArJtIUzFA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leETq-000qIj-39; Wed, 05 May 2021 10:10:10 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leETC-000q2I-9B
 for barebox@desiato.infradead.org; Wed, 05 May 2021 10:09:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=uewo/YBaPMV3XwjOZwBoE+fWBlZ3LUsistm6G5UyysU=; b=A7xxXiLlO4NQ+LZ/cC+251Lan1
 /wr+DZBSzQlo8h1prMlTk9hPRbl/1cN1OS3gFUeNzMEK943FBmMWMN3St2gTEXyOlpKqL03f5CCpC
 7WE0eJxSVr8UnVVzR9QeXCFy4MbfYZrPj+fiuf8PSwGsLWrhWQdgHtD89vE0EYTNq48OOWcvHIAwg
 mDDhtcs9Y/akoalsnINsBB3KtYr8lyxrtzxxf5O8RWmQFknybr8kBNoZQxZc/+yllIYgx/NqlBWhZ
 SWmPlMcctSZ+0SVxZ1JwhAHNOtoVqXNm50zdWYw9QVwj0KuX8rsUaqsQSB+q2gyV+DFAGmVVqXu/Z
 xs6Pen5g==;
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leET9-004eQv-ST
 for barebox@lists.infradead.org; Wed, 05 May 2021 10:09:29 +0000
Received: by mail-lj1-x231.google.com with SMTP id v6so1709460ljj.5
 for <barebox@lists.infradead.org>; Wed, 05 May 2021 03:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uewo/YBaPMV3XwjOZwBoE+fWBlZ3LUsistm6G5UyysU=;
 b=hxLadPpk62p7YSbIuBSAzQmE8umWonAwaiOUokPxL3CANcqgbE+Set+5gDPyUx6zxV
 sDQQ7Xguksr3D3wFqHhLIWY2smR3oJtgkzmSkNHML4suAxcZJvyu05IBxbbLTheaEo20
 e8RbnC+qZaMs0d7AFJLiTllq7sHBQbX7lg3j288ayeDsNgDA7OILgplVCrmHazyXL8/e
 LDVaIfoSYDZ+EwbrWm0OoMqBy9Kow07gGw+40S7bKQcxZwpDOTbV6juyfbnoAsBfZ3cc
 zhBRYPHChgdfe0fLPCANEn9khiaLL/tKhmfKIAjqDcNNqHuQUeSH+nBYiguW+3CFHaZr
 z+LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uewo/YBaPMV3XwjOZwBoE+fWBlZ3LUsistm6G5UyysU=;
 b=oG2AEHiVLltHr3yZl70VXG7D2yEj+AQfZMATFbL9K8014scAfVxfC9RWN7qm1z5aUg
 K/o4VqaQy11lIZBwjX/qdcyzR1p7TeTI6blXQsDrgxEiSp76SL69wZNDkFKdMchmqzxc
 i84KcD/38/d+KyEXssnhf6HIp7YlmY0RWBBbBFZDO4Byoem814bsCXVwL0gozBRgedsT
 ChhGRlKv2gLrWpSc08FgonJanePnY7jlIBnayAHqnC2nF2Yul7K8AqA17WWYGVi7jIuq
 QUDgUMrFVc394ELGrNaxtdW+Rdu/rFEdsIMSVFck347kU5aa62KQ5XwQa+fGe5NOypm3
 Mc1g==
X-Gm-Message-State: AOAM530O+5rSYPziC1/nMPD5eSc3jpQusCWRD8XwOJn6+2bRRtrQJCvi
 5VDENV8x/A+9+VYal+YtjOPbms7x9cn30A==
X-Google-Smtp-Source: ABdhPJzosESPboaxT+rhwJzLA7h9zutK8XWhu66VTyr8uFI0ZS2ZlyjqtZIuxBpzgHehwx8K4CrNGg==
X-Received: by 2002:a2e:a590:: with SMTP id m16mr20863695ljp.422.1620209365713; 
 Wed, 05 May 2021 03:09:25 -0700 (PDT)
Received: from localhost.localdomain ([176.59.42.245])
 by smtp.gmail.com with ESMTPSA id u8sm497114lfu.284.2021.05.05.03.09.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 May 2021 03:09:25 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  5 May 2021 13:09:00 +0300
Message-Id: <20210505100900.88141-10-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210505100900.88141-1-antonynpavlov@gmail.com>
References: <20210505100900.88141-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_030927_934968_F24EA258 
X-CRM114-Status: UNSURE (   9.35  )
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
	SPF_HELO_NONE,SPF_NONE,TVD_SPACE_RATIO,UPPERCASE_50_75 autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH 9/9] RISC-V: add litex_linux_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/configs/litex_linux_defconfig | 76 ++++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/arch/riscv/configs/litex_linux_defconfig b/arch/riscv/configs/litex_linux_defconfig
new file mode 100644
index 0000000000..ab53df1c78
--- /dev/null
+++ b/arch/riscv/configs/litex_linux_defconfig
@@ -0,0 +1,76 @@
+CONFIG_MACH_LITEX=y
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

