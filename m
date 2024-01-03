Delivery-date: Wed, 03 Jan 2024 11:53:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKysV-001p7T-0u
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 11:53:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKysU-0002W5-7j
	for lore@pengutronix.de; Wed, 03 Jan 2024 11:53:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=C/TRkTPOE+VuK/CWhtkvSWuCZsC6oA82hjPVi64sxck=; b=X0l99noyyt0T2WBbgpU8h2lB2d
	5qXL2XWqxWe7Ls9cxUpls7oMey2WhpXT0pizMvPDfIpzZsC28V6Z1Zr7OuwxJcpVk2QpJj0naZR/S
	Nr8ukRSVS53q0QwGXQ+iIBUBS63PHvCFwDAn8Y2Lv1hr0IGNjn+fKQ6cEtrz+gQ66aarw/FKi6PqY
	aMqSVP+wQsKAnz81ZDCdVG9fFSKIyAvmaAdiYE6vLP7+PZGQ1yBkaWs2+13xOTct9ve83IuIPkH8a
	yyd7UPNmO3X3ZFUx2g4+zGJ7NZyxlmMAIfpWASeVIZTP8otyv+F7M6pDNkojGE6OMCZHXCwuNbsEA
	4hlDqzjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyrO-00ARYo-2V;
	Wed, 03 Jan 2024 10:52:30 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyrL-00ARWw-1B
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 10:52:28 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-50e67e37661so11106523e87.0
        for <barebox@lists.infradead.org>; Wed, 03 Jan 2024 02:52:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704279145; x=1704883945; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=C/TRkTPOE+VuK/CWhtkvSWuCZsC6oA82hjPVi64sxck=;
        b=LGAcNQZiJB1IPXUX9z1sO8cnPGz/t4VAnlFArYgPiXEaPUdOD53Reqv5VVQt386iH3
         H2tK4fIo632MoM7QXObYnCkV0CqPa5y/ghqtHqzoi21RjRxvDyzmLhqPD1KBcsjRKlJ6
         Tz8qR377FO7SsiV7COPRdD+87dg+JukLvUN4m4XTyggKMsH9z/0zmpVh34CXvg8zhngv
         RPinA1dqNlVlouFkQvLelCQCr0xsMa2htbGUKoId3Gb8t+1WeZN2SRaB4dun7BIYfEmq
         iBWqxqBzlDCJeuX02dxVPjBrSj/maQJzRBz7LjMoCr3Y25iIAVTD3pdEIIxS5C9oC918
         7N/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704279145; x=1704883945;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C/TRkTPOE+VuK/CWhtkvSWuCZsC6oA82hjPVi64sxck=;
        b=HMfg45MB3Ig9rR3CgciKXwTAjKUMfmxukUZZG2sP9c/izMrYFNUk0IMs54lPvTfel9
         ZHfBJY2lRKaCNoqLA1zKUC8Uw9GoFNuFXk+Ge2XDt3GYJKvMUya6/Eg7y5rp0B1dByxW
         MszZ1WPQdE0mHKPeFNAi+lOJ47krXJju6Lvw0hQJ6a8iva2ylSlowmqvht1her8n2b2M
         4UsoJEwIGQIE93B1Iu3ZPaRb8Zvi68BNmo4Nfm9uBH6PXLn76mGwBmzbzoFU5h8FiIHg
         JM+RaJTe1ObCWqanrYYceFaVNv+WV6PKD1NF5mMHFTJcwb7FhuGjI0YgUeUuWKlvFh29
         WgCQ==
X-Gm-Message-State: AOJu0Yyb9whj4Tu9sgllRc7npSHVFxvVZpZTovRGVt28mQnuwXEyZJhX
	4JBv08DoItMFY3KjhGBDCuLSUT9TjqI=
X-Google-Smtp-Source: AGHT+IFkNv7D7C1B91rrmJTcQYVJpnUTW5UaRDJQOGl4PYZYXsFzp92Ir4uJu8/yDcs3R49d7k2mxA==
X-Received: by 2002:ac2:5504:0:b0:50e:6a21:f9b2 with SMTP id j4-20020ac25504000000b0050e6a21f9b2mr7359378lfk.55.1704279144485;
        Wed, 03 Jan 2024 02:52:24 -0800 (PST)
Received: from cinco.. (109-252-3-142.nat.spd-mgts.ru. [109.252.3.142])
        by smtp.gmail.com with ESMTPSA id f20-20020ac251b4000000b0050e798ab1b9sm2963671lfk.139.2024.01.03.02.52.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jan 2024 02:52:24 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  3 Jan 2024 13:52:46 +0300
Message-Id: <20240103105246.800751-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_025227_401632_01727356 
X-CRM114-Status: UNSURE (   9.78  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] MIPS: qemu-malta*_defconfig: enable e1000 network driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Thanks to Denis Orlov's work on dma_sync_single_for_*()
interface and e1000 patches we can enable e1000 support
on both 32-bit and 64-bit qemu malta boards.

32-bit malta qemu command line:

    qemu-system-mips -M malta -cpu 24Kf -m 256M \
        -nographic -serial mon:stdio \
        -bios images/barebox-qemu-malta.img \
        -net user,tftp=$(pwd) -net nic,model=e1000

64-bit malta qemu command line:

    qemu-system-mips64el -M malta -cpu MIPS64R2-generic -m 256M \
        -nographic -serial mon:stdio \
        -bios images/barebox-qemu-malta.img.swapped \
        -net user,tftp=$(pwd) -net nic,model=e1000

Barebox commands to check e1000 network interface:

    barebox@qemu malta:/ devinfo eth0
    Parent: pci-8086:100e.0
    Parameters:
      ethaddr: 52:54:00:12:34:56 (type: MAC)
      gateway: 0.0.0.0 (type: ipv4)
      ipaddr: 0.0.0.0 (type: ipv4)
      linux.bootargs:  (type: string)
      linux.devname:  (type: string)
      mode: dhcp (type: enum) (values: "dhcp", "static", "disabled")
      netmask: 0.0.0.0 (type: ipv4)
      serverip:  (type: string)
    barebox@qemu malta:/ devinfo pci-8086:100e.0
    Driver: e1000
    Bus: pci
    Parameters:
      class: 0200 (type: string)
      devfn: 90 (type: string)
      device: 100e (type: string)
      revision: 0003 (type: string)
      vendor: 8086 (type: string)
    barebox@qemu malta:/ dhcp eth0
    eth0: DHCP client bound to address 10.0.2.15
    barebox@qemu malta:/ tftp images/barebox-qemu-malta.img
            [################################################################]

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/qemu-malta64el_defconfig | 1 +
 arch/mips/configs/qemu-malta_defconfig     | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/mips/configs/qemu-malta64el_defconfig b/arch/mips/configs/qemu-malta64el_defconfig
index da3396246d5..c1f7366d76d 100644
--- a/arch/mips/configs/qemu-malta64el_defconfig
+++ b/arch/mips/configs/qemu-malta64el_defconfig
@@ -63,6 +63,7 @@ CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_VIRTIO_CONSOLE=y
+CONFIG_DRIVER_NET_E1000=y
 CONFIG_DRIVER_NET_RTL8139=y
 CONFIG_DRIVER_NET_VIRTIO=y
 # CONFIG_SPI is not set
diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index 4be05b7e5a3..99714aa3068 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -60,6 +60,7 @@ CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_VIRTIO_CONSOLE=y
+CONFIG_DRIVER_NET_E1000=y
 CONFIG_DRIVER_NET_RTL8139=y
 CONFIG_DRIVER_NET_VIRTIO=y
 # CONFIG_SPI is not set
-- 
2.39.0



