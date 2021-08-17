Delivery-date: Tue, 17 Aug 2021 12:07:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFw0c-0005jt-K6
	for lore@lore.pengutronix.de; Tue, 17 Aug 2021 12:07:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFw0X-000265-Fi
	for lore@pengutronix.de; Tue, 17 Aug 2021 12:07:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nBkiKsqPddz621deQSGB9GvuqoaDqicA7PTAB3+GvmA=; b=Tuxno0BvaC9nJ4
	PashlXiUCk8RTJzcXuL8ziom4WQHDnq1JyHdjpcor3gaGwVc1F5v4UoZL+v32q94CS4EKVnCuvnG9
	Mz6V+g4+9YTiWsjocuXFymYCKjBMRsjwXM+6CK9JkCKqpIOxxFg4gMwN1mXC4A3A8Qwp7oEABWBp0
	lfHewqqmPC/XknBADBvgeQf3vDGovTaFR16FZAPoJPgVM8s23h/M0VP+nX8X7JO/sxP5mWFekT++N
	nc4M8zve66umoPID5YJBiHbJ0slxPSVR+QfB3kFkpxnIqO4T++hyN2iHs/voS6t9n+8RvqCHqkuWN
	GnsgV37Uu0HR2j0ausWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFvym-001zR1-43; Tue, 17 Aug 2021 10:05:56 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFvxo-001z1E-BM
 for barebox@lists.infradead.org; Tue, 17 Aug 2021 10:04:58 +0000
Received: by mail-lj1-x22c.google.com with SMTP id x7so32045747ljn.10
 for <barebox@lists.infradead.org>; Tue, 17 Aug 2021 03:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d7BnU7atGjxq+vOhHPa0SNdnw/0wBFs8rR3aL11iSng=;
 b=cKnGsOjCIo5yG1MjosIOlK29eDHpg+wrpRvGDkris+gUQL0E8FbJ9Wm/6vviUG6Qyi
 b3VFxd5kE0gJFDLQ0mzPIRZOi0AhVakdJs4MF2QOJipyJVMvrivIqSJXozOZhuKyhrt4
 do6EeRFiHVAyXjEfIhpzycKN17nXQipe4TL0K76HRMjRZ1ZuNaHlnlXAyxHbEVrgf0Of
 7z2x9nS1i7PsvdMWKlzqxSMkxQNh/y+sesH3Ast4D1hXVu4l5338qygsJjEQV4VfWrMQ
 2a7EiK76oZD/wKlA+hlTg8uNu/uhDut0O2/znSrkHeM1WLxW7FP5jzYCTcUs3Gm8zbVK
 S9+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d7BnU7atGjxq+vOhHPa0SNdnw/0wBFs8rR3aL11iSng=;
 b=K+ZcFV2WI3UIh/P9C+zvKW4crQJahFiwx45OuVVddwgig8M+vZ2uiG2/HQwUyEFaRq
 nlIVm2zVQcuV/I6Xvz63ImK4qHseZ2XQj+h+nw/sFNQzrl6M7j0hXD3I6WO4Ar67a3JJ
 j7MbV/48b+RPCM0z+IviFCrSD81k4bm9ch7RRvypWOIW1CqUh21Vaqyof0Eas3FRYOII
 Sf0JA5salqxsayc4jZE0TEtEMbkxoPrWQTrV/0L3iz45sj+WQXgws89xkNw/jh4qolsK
 1i/G86g1MUJAnKcc/Fah4JJioxMZ4jYtrPLzcrpx3AwoJSpcjmknkP0tdkwU+ICsY1o7
 YS5g==
X-Gm-Message-State: AOAM531IIMAlas0W7jGbg6qa7Jubm5OIXBC83kER1KnStj4NNLfz9xHL
 sp3bx5CF6c1IbRB5airOOhF69LjreFA=
X-Google-Smtp-Source: ABdhPJyi+kMYiJMKdH8Qj7SQHwqHvMUd3ZlqIj4Kjpx7y/fnHmi0wNngYcHaU0ZNRQHeiRAacHigIQ==
X-Received: by 2002:a05:651c:1303:: with SMTP id
 u3mr2522224lja.358.1629194693808; 
 Tue, 17 Aug 2021 03:04:53 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-80.dynamic.spd-mgts.ru.
 [109.252.203.80])
 by smtp.gmail.com with ESMTPSA id e20sm179795ljn.13.2021.08.17.03.04.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 03:04:53 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 17 Aug 2021 13:04:35 +0300
Message-Id: <20210817100435.114756-9-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210817100435.114756-1-antonynpavlov@gmail.com>
References: <20210817100435.114756-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_030456_472282_A513D459 
X-CRM114-Status: UNSURE (   9.36  )
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,TVD_SPACE_RATIO,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/8] RISC-V: add litex_linux_defconfig
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

