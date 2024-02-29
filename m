Delivery-date: Thu, 29 Feb 2024 16:58:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfinU-00GBBj-2z
	for lore@lore.pengutronix.de;
	Thu, 29 Feb 2024 16:58:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfinU-0003We-Ao
	for lore@pengutronix.de; Thu, 29 Feb 2024 16:58:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2DMh49OzrjcB/HnOEpIkIAK57GxvF9Vm7VgYIigYhJo=; b=BXucAXep/FRYrPe/YgdFRfyT9A
	1ThZ4d77DWu8la9p/uahPzaExKVJhLYUHcHNYPUVkFCkqGDVP1X3Ty8c+vx94Ar2Ha2rvDXAc63tU
	LcL0KVKfUKj4oZ2rd3yMo9HpQIpXgNDmh5KLYRJ5F/BmSdEw472p/pPF186tsojLIuX/kbVcnmTia
	nRZeVL5algPykcWMZxBPENAY0kAcmveoW9/tHrlcx9Y+zOd0GLWkGRubAHQR90DAMYyjm5YtESHr8
	9hoK1/zqHzpEiV4P93iKvWNhYgg1TYZgorq31ssZMDjbQGBIgy1XYibFrYO+DZoGeyUF5oJsVkxHP
	P1LL+mXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfimv-0000000EAK0-10fz;
	Thu, 29 Feb 2024 15:57:37 +0000
Received: from smtpout35.security-mail.net ([85.31.212.35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfimk-0000000EAD7-31N5
	for barebox@lists.infradead.org;
	Thu, 29 Feb 2024 15:57:29 +0000
Received: from localhost (fx305.security-mail.net [127.0.0.1])
	by fx305.security-mail.net (Postfix) with ESMTP id 8B2C930EB31
	for <barebox@lists.infradead.org>; Thu, 29 Feb 2024 16:57:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1709222242;
	bh=AxwiYBt5B5p8sHwFrCz/X/qsxMX0dY1JiFxPwt5D2cs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=RsHD/vceqDdTaZbNpM+vlIl8Qs6PuMLqJIaYTZEake5qICTI0h7aMtyFCLEwUtdFl
	 JP/y5xII2/U08+9quty1MtjkUGcIJJrkkIgEEgeEKO429Dsf3i4vw7C04JZTfZV53m
	 XKzNGIJm94UpIePnH/0pUtZvwH3MxViJUKcyA5vI=
Received: from fx305 (fx305.security-mail.net [127.0.0.1]) by
 fx305.security-mail.net (Postfix) with ESMTP id 6683230EAD3; Thu, 29 Feb
 2024 16:57:22 +0100 (CET)
Received: from srvsmtp.lin.mbt.kalray.eu (unknown [217.181.231.53]) by
 fx305.security-mail.net (Postfix) with ESMTPS id E7F5F30EA5B; Thu, 29 Feb
 2024 16:57:21 +0100 (CET)
Received: from junon.lan.kalrayinc.com (unknown [192.168.37.161]) by
 srvsmtp.lin.mbt.kalray.eu (Postfix) with ESMTPSA id 7B31940364; Thu, 29 Feb
 2024 16:57:21 +0100 (CET)
X-Quarantine-ID: <LakwlkgcKcOl>
X-Virus-Scanned: E-securemail
Secumail-id: <b6a.65e0a961.a47d8.0>
From: Yann Sionneau <ysionneau@kalrayinc.com>
To: barebox@lists.infradead.org
Cc: Jonathan Borne <jborne@kalrayinc.com>, Julian Vetter
 <jvetter@kalrayinc.com>, Jules Maselbas <jmaselbas@zdiv.net>, Yann Sionneau
 <ysionneau@kalrayinc.com>
Date: Thu, 29 Feb 2024 16:56:59 +0100
Message-ID: <20240229155700.17443-3-ysionneau@kalrayinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240229155700.17443-1-ysionneau@kalrayinc.com>
References: <20240229155700.17443-1-ysionneau@kalrayinc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_075726_961180_C7962529 
X-CRM114-Status: UNSURE (   7.60  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/4] mci: sdhci: add register define for
 P_VENDOR_SPECIFIC_AREA
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This register is standardized by SDHCI (See SD Host Controller
Simplified Specification v4.20 "1.2 Register Map" and
"2.3.14 Pointer Registers to mFFh-100h Area").
 
It is necessary to access some vendor specific registers for
some controllers.

Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>
---
 drivers/mci/sdhci.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 4291d8d04a..d0ef54bb45 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -168,6 +168,8 @@
 #define SDHCI_PRESET_CLKGEN_SEL		BIT(10)
 #define SDHCI_PRESET_SDCLK_FREQ_MASK	GENMASK(9, 0)
 
+#define SDHCI_P_VENDOR_SPEC_AREA	0xE8
+#define SDHCI_P_VENDOR_SPEC_AREA_MASK	GENMASK(11, 0)
 #define SDHCI_HOST_VERSION	0xFE
 #define  SDHCI_VENDOR_VER_MASK	0xFF00
 #define  SDHCI_VENDOR_VER_SHIFT	8
-- 
2.43.0







