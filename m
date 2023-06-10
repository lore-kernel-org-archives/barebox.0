Delivery-date: Sat, 10 Jun 2023 10:43:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7uCN-000qX9-Vo
	for lore@lore.pengutronix.de; Sat, 10 Jun 2023 10:43:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7uCL-00059b-LK
	for lore@pengutronix.de; Sat, 10 Jun 2023 10:43:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hEjcfvPFqkyiZQLMcpb16bEnG6X9JGRtXfKa18xb3Y0=; b=Iq+4l5dcMtIOpW
	afNlNXvvqg8Zm64iT36B5AZ9aDTmHBP9ODWjknd0PCu4GDlMjkitKGrPYzaBn3rXz0nwAA3KRA2SQ
	DKjzHESxpO4k8WHWbceW+0QwiNihdd+XgSBcNkaQ6t00MoXgA1Q2Xigmh1gjIx9YqyK2xyndinBWH
	Mjj/UbEI8scSub24EAXE4S2c2p84V+2CcojmHSVX8E7Q+XDUruWn89S/mTTbsytOROG5ADYatH5xR
	C/6jrhQ0W4H6JZM9riM0ItGp4F8X8bD8vjuQvZ6jBSitP2Mr/NKviU3Qd6Q7pvORk/PzCb0+bqA7a
	RQ7t0EjVXh34faD57Sfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7uB3-00FZGa-32;
	Sat, 10 Jun 2023 08:42:29 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7uAz-00FZFD-0H
	for barebox@lists.infradead.org;
	Sat, 10 Jun 2023 08:42:27 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2b2f9f47256so2530601fa.1
        for <barebox@lists.infradead.org>; Sat, 10 Jun 2023 01:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686386541; x=1688978541;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hEjcfvPFqkyiZQLMcpb16bEnG6X9JGRtXfKa18xb3Y0=;
        b=Fhy6CQFBOucaEgmxxPYn44eqKRp2XO8AkmU9zH3PntXfG2nxQRQqVqi9ph1StjwLsq
         AJI1Z8F6KQ+6uJotDtjBF+Od1efisP8aYVnynSKn+ws9H2+1H2XlUNtzG6D97MtpPDTA
         SUN2pOS0/Dk3CInH0Gx2palx1q2soNzzUNi0m4ayKIh07fkhC7WuqO7hUuuwxqnPIYBp
         uC2xsxGVbTN6JCIXh4sGklkN3l8hhlOo44VqR0Rl5QoeJ8zg1W17L2DzlcAhrl9OcVRk
         lIApx6LH3GuJ9wCiFsLkQxgfXHpZJuaPoc5nVvy4x+idondMq97tuxk0Qiu7wc026V+q
         QfsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686386541; x=1688978541;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hEjcfvPFqkyiZQLMcpb16bEnG6X9JGRtXfKa18xb3Y0=;
        b=YcMiH8GPru0Qh9KZxWfUU92qPlr3+79bgOvyx2eXW8geaskGdMgGOI/yONR6AjFNDV
         RfykYrStpps1k8lQ28rX8pbMagYMkA2UaW4N1rPmMtSFCh0hQCXY7AzuXsXi5dtcp4DX
         uAGphhKFSVet8WFt5If8lZBd9dcUmRfy3MPL2kWMBlLqMkc6s5ZriopXiJKNo+0pe9Le
         o2IaYyff4ZOvxY5uWx1PWtWrP0mMnI5rzU4mnb/jv0ENfKtqpeYhiYXHMxJBlFIPyW+f
         02aNvzG8Oc7AMInLU0pGvWFQo566voAHiRQXNGium5WFBCTziGJzn5/oj4aGAJAo/j3l
         kdng==
X-Gm-Message-State: AC+VfDwav2kUib3Pjul/AjTNIE7k2/ZxIq2Um6v7M9SkBoY6J02RQqZ/
	ioquck7LliLnMZ+atIZqxS+u1Rkf9kSZbg==
X-Google-Smtp-Source: ACHHUZ5Gv9IgzsWlOtLGJbyL+ng4oeq9FeA3ojh76l0dA5Y4hgEBtQuk9zBd6uEVjD8aUBuxEI8Y0w==
X-Received: by 2002:a2e:9950:0:b0:2b1:c1b2:e2ec with SMTP id r16-20020a2e9950000000b002b1c1b2e2ecmr442803ljj.9.1686386541156;
        Sat, 10 Jun 2023 01:42:21 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.223])
        by smtp.gmail.com with ESMTPSA id y14-20020a05651c020e00b002a76bb6bce0sm763331ljn.37.2023.06.10.01.42.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Jun 2023 01:42:20 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Sat, 10 Jun 2023 11:36:29 +0300
Message-ID: <20230610084146.9448-3-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230610084146.9448-1-denorl2009@gmail.com>
References: <20230610084146.9448-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230610_014225_124393_CF68A8CB 
X-CRM114-Status: GOOD (  10.20  )
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
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] MIPS: enable more options in malta defconfigs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This mainly enables virtio stuff, but also turns on EXT4 and GPT
support. The latter two simplify things somewhat, allowing to mount
appropriate images, and are enabled in generic defconfigs for other
archs.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/configs/qemu-malta64el_defconfig | 10 +++++++++-
 arch/mips/configs/qemu-malta_defconfig     | 10 +++++++++-
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/arch/mips/configs/qemu-malta64el_defconfig b/arch/mips/configs/qemu-malta64el_defconfig
index 5fb090a646..6091e6d030 100644
--- a/arch/mips/configs/qemu-malta64el_defconfig
+++ b/arch/mips/configs/qemu-malta64el_defconfig
@@ -13,7 +13,7 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
-CONFIG_PARTITION=y
+CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
@@ -62,6 +62,7 @@ CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_VIRTIO_CONSOLE=y
 CONFIG_DRIVER_NET_RTL8139=y
 # CONFIG_SPI is not set
 CONFIG_I2C=y
@@ -72,15 +73,22 @@ CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
 # CONFIG_DRIVER_CFI_BANK_WIDTH_2 is not set
 CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_DISK=y
+CONFIG_VIRTIO_BLK=y
 CONFIG_VIDEO=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_DRIVER_VIDEO_BOCHS_PCI=y
+CONFIG_VIRTIO_INPUT=y
+CONFIG_HWRNG=y
+CONFIG_HW_RANDOM_VIRTIO=y
 CONFIG_GPIO_MALTA_FPGA_I2C=y
 CONFIG_PCI=y
 CONFIG_PCI_DEBUG=y
 CONFIG_SYSCON_REBOOT_MODE=y
 CONFIG_POWER_RESET_SYSCON=y
+CONFIG_VIRTIO_PCI=y
 CONFIG_FS_CRAMFS=y
+CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index ab3abb7a2a..6cbc4efa86 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -10,7 +10,7 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
-CONFIG_PARTITION=y
+CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
@@ -59,6 +59,7 @@ CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_VIRTIO_CONSOLE=y
 CONFIG_DRIVER_NET_RTL8139=y
 # CONFIG_SPI is not set
 CONFIG_I2C=y
@@ -69,15 +70,22 @@ CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
 # CONFIG_DRIVER_CFI_BANK_WIDTH_2 is not set
 CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_DISK=y
+CONFIG_VIRTIO_BLK=y
 CONFIG_VIDEO=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_DRIVER_VIDEO_BOCHS_PCI=y
+CONFIG_VIRTIO_INPUT=y
+CONFIG_HWRNG=y
+CONFIG_HW_RANDOM_VIRTIO=y
 CONFIG_GPIO_MALTA_FPGA_I2C=y
 CONFIG_PCI=y
 CONFIG_PCI_DEBUG=y
 CONFIG_SYSCON_REBOOT_MODE=y
 CONFIG_POWER_RESET_SYSCON=y
+CONFIG_VIRTIO_PCI=y
 CONFIG_FS_CRAMFS=y
+CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
-- 
2.41.0



