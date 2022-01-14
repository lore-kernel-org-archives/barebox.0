Delivery-date: Fri, 14 Jan 2022 17:56:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8PsL-002DOo-8y
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 17:56:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8PsK-0005AY-3R
	for lore@pengutronix.de; Fri, 14 Jan 2022 17:56:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4yzWSyKR85qr1z7DPEKyNz7GiqR27+ac2yWjvNeyTb0=; b=zYFRygTOx6Z7FQ
	2ce7HqoAVaaa38vSIeMElugex4xfecvCJhjgJBRjrl7kM5j+kUjidUNeKYQ8ztoUlq2ONeQuNqv4n
	l2XBUGeXIcisvhubLpRJjrkOkIGYxmT7VrWWL7XDT2R0qoaXCRWg4reuLGkz0bvSo2A5PmhFT0Rnf
	k4iVRiWBW9yP6S1it1yrllk9cxY4w0Ha7PyOFvKbeQQWzS3EDTu1dbRRu9Pe/l8DKMZXGY/F/TcIu
	g7UDqTlsIxRysPj8ZR4kXOLV5yqq1PO58+iNfxHPsddZ6qcJ+FDmbx9VYSU/zszdB6y2iByLiK/uz
	IDO6jYABPBOTnpiP+oYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8Pr9-009rsn-4C; Fri, 14 Jan 2022 16:55:15 +0000
Received: from smtpout30.security-mail.net ([85.31.212.39]
 helo=fx308.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8Pqz-009rpk-41
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 16:55:07 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx308.security-mail.net (Postfix) with ESMTP id CCF48B0643
 for <barebox@lists.infradead.org>; Fri, 14 Jan 2022 17:54:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642179298;
 bh=ZXjgVrb4tK3OTqw75b14io/1JndPOnz6f6V7DUUBv1M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=biIjhzcHhFMcaaWV7HqMAhdeltSDhukctw3giUvF6rHXD39aL23Gjs6k5bh8GvYHb
 swoFOUgaGoO3D9NjnLChK5OjhMKSIjykscQuMSnKl8Nj8MJOgl2Frfy70u9Hg501nw
 SWimiLDb3Yovc/ACIeTzxVdJFWej03UgmSgUlapU=
Received: from fx308 (localhost [127.0.0.1])
 by fx308.security-mail.net (Postfix) with ESMTP id 90658B0627;
 Fri, 14 Jan 2022 17:54:58 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <101a8.61e1aae2.29f1.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx308.security-mail.net (Postfix) with ESMTPS id 0421DB0607;
 Fri, 14 Jan 2022 17:54:58 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id DD1FF27E03AE;
 Fri, 14 Jan 2022 17:54:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id C3AB227E03F5;
 Fri, 14 Jan 2022 17:54:57 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu C3AB227E03F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642179297;
 bh=NBBnbsijrbcY+p1Q/w1azqvt2BVQ99oE1nGAkWyf1YU=;
 h=From:To:Date:Message-Id;
 b=WgMZwWwqPEafKSkI6W5x+/4alyYURHH/7wAgKsIET2I0trmIS12EiF96o9DxwkD2x
 /uxZkhD+s+RcveUOc50JAuQsCCU4dSMuGxUFYvKlFyRffjJEk7C9terhSVl2cpxWgd
 gCP5bZsnyIj0MBS5A3yPW4RIZAG3dOWj7mYJ+OWY=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id qIGjklKnXQoC; Fri, 14 Jan 2022 17:54:57 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id A656627E03A2;
 Fri, 14 Jan 2022 17:54:57 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Clement Leger <clement.leger@bootlin.com>,
 Louis Morhet <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>,
 Yann Sionneau <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>
Date: Fri, 14 Jan 2022 17:54:55 +0100
Message-Id: <20220114165456.10542-3-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220114165456.10542-1-jmaselbas@kalray.eu>
References: <20220114165208.9980-1-jmaselbas@kalray.eu>
 <20220114165456.10542-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_085505_496369_B0A67F02 
X-CRM114-Status: UNSURE (   4.88  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 12/13] kvx: Update defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 arch/kvx/configs/generic_defconfig | 32 ++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/kvx/configs/generic_defconfig b/arch/kvx/configs/generic_defconfig
index 0d971ff3d5..0184ae0ed9 100644
--- a/arch/kvx/configs/generic_defconfig
+++ b/arch/kvx/configs/generic_defconfig
@@ -1,13 +1,45 @@
 CONFIG_AUTO_COMPLETE=y
 CONFIG_CONSOLE_RATP=y
+CONFIG_PARTITION_DISK_EFI=y
+CONFIG_STATE=y
+CONFIG_BOOTCHOOSER=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
 CONFIG_CMD_BOOT=y
 CONFIG_CMD_RESET=y
+CONFIG_CMD_NV=y
+CONFIG_CMD_GLOBAL=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_CMP=y
+CONFIG_CMD_FLASH=y
 CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_USBGADGET=y
 CONFIG_CMD_WD=y
 CONFIG_CMD_OF_DUMP=y
+CONFIG_CMD_STATE=y
+CONFIG_DRIVER_SERIAL_KVX_SCALL=y
 CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_MTD=y
+CONFIG_MTD_SPI_NOR=y
+CONFIG_SPI_SYNOPSYS_OCTALSPI_NOR=y
+CONFIG_USB_HOST=y
+CONFIG_USB_DWC2_HOST=y
+CONFIG_USB_DWC2_GADGET=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DFU=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_DWC_MSHC=y
 CONFIG_CLOCKSOURCE_KVX=y
+CONFIG_STATE_DRV=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_KVX=y
+CONFIG_GPIO_DESIGNWARE=y
 CONFIG_PINCTRL_SINGLE=y
+CONFIG_GENERIC_PHY=y
+CONFIG_USB_NOP_XCEIV=y
+CONFIG_DIGEST_MD5_GENERIC=y
+CONFIG_DIGEST_SHA256_GENERIC=y
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

