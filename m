Delivery-date: Tue, 28 Jun 2022 22:40:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6I0t-000bJN-2k
	for lore@lore.pengutronix.de; Tue, 28 Jun 2022 22:40:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6I0v-0004Cs-3j
	for lore@pengutronix.de; Tue, 28 Jun 2022 22:40:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oLPG7XCSL7hf0RXrroHhjGzi4jOg/tPjMCVy+agK97c=; b=xxhzWr9qw6rOpiVpMht9vEriFE
	BJ7AZLr1Ausv6GXbx76hPokDw5XuPv9sAEdrBvIohJEMYYQe1gvY7kZ+dlxdTrPIh203GgEZwS7Vv
	t/NorWUqxU03yLXgz7CbjcxDdXdAE2EeGSe/AaxFd+h+0Z9+59SHC3PF7IT9hp+pK2Ff6eRP7ERn7
	ZWiMoQ9I2gd9dVu8oy2sBwwLfXPVL5qWDt49RvVy990u22JFe0h+hHp62bhSQIqF9XdRIU/xNDkOt
	h2XTX4V1DY17vYmP79zwc+8mmOnNC5wXcmj6juFZmM9zxVb1+OBfmu1bA1IBjfGhkkNM8uDPFTLjF
	Szy95VfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6HzT-0084lK-0A; Tue, 28 Jun 2022 20:39:19 +0000
Received: from mailrelay3-1.pub.mailoutpod1-cph3.one.com ([46.30.210.184])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6HzG-0084hI-Mi
	for barebox@lists.infradead.org; Tue, 28 Jun 2022 20:39:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa1;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=oLPG7XCSL7hf0RXrroHhjGzi4jOg/tPjMCVy+agK97c=;
	b=kxCGtnbbN5vs87yiwdsfWGGjYo2Vn2J/B1j3CrNjhjoKNbniT8BOEUmpX535dGXgN/z+9lh5OYvfD
	 ffk+lGC20ns9Krm1MuY4gLQBLKLnU7ZdjcP2/u0irqXX2msoxFcCHbZuiXpslyjWJLLt5tLzYnaLmw
	 6OY81JkIjxtaGNE3tbJomdxVw8RxGLJc4Zf0ydoGfMRo9dhFjhhfESgVel9aa5gNyGYtwqToJLSdHg
	 VDZH+d8nXHcY6Ro59CO6zenP2EPJk4LIsqyUIyu1XiAT7+Q1bHUOy4PRg8nXkN2SUoVhncr8wLw38l
	 bZeGfTIeSXn/zRf1lSmqFSJq5hlGBGg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed1;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=oLPG7XCSL7hf0RXrroHhjGzi4jOg/tPjMCVy+agK97c=;
	b=1Bg6nnMky83EYrBxhTQjeT3YGZjHJyt2yb6ie90Yi9jZ/Mmjja21Q2li5aYZPqS6m9XeMiuTrMu6z
	 khGQuLYBQ==
X-HalOne-Cookie: 1cae30e4db92113608629245bbf036b48090f016
X-HalOne-ID: 59d80294-f722-11ec-be7c-d0431ea8bb03
Received: from mailproxy3.cst.dirpod4-cph3.one.com (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
	by mailrelay3.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 59d80294-f722-11ec-be7c-d0431ea8bb03;
	Tue, 28 Jun 2022 20:39:05 +0000 (UTC)
From: Sam Ravnborg <sam@ravnborg.org>
To: barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sam Ravnborg <sam@ravnborg.org>
Date: Tue, 28 Jun 2022 22:38:43 +0200
Message-Id: <20220628203849.2785611-6-sam@ravnborg.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220628203849.2785611-1-sam@ravnborg.org>
References: <20220628203849.2785611-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_133906_936681_1679DE73 
X-CRM114-Status: GOOD (  11.02  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 05/11] mci: atmel_mci: Add PBL helper to configure highcapacity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Older atmel SoC's like at91sam9263 do not support highcapacity SD cards.
Add helper that can be used to disable highcapacity support
in the PBL code - as probing for the SD card type is not an option.

Suggested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/mach-at91/include/mach/xload.h | 1 +
 drivers/mci/atmel_mci_pbl.c             | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm/mach-at91/include/mach/xload.h b/arch/arm/mach-at91/include/mach/xload.h
index e9336d59c..488279c1a 100644
--- a/arch/arm/mach-at91/include/mach/xload.h
+++ b/arch/arm/mach-at91/include/mach/xload.h
@@ -13,5 +13,6 @@ void __noreturn sama5d3_atmci_start_image(u32 r4, unsigned int clock,
 int at91_sdhci_bio_init(struct pbl_bio *bio, void __iomem *base);
 int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
 		      unsigned int clock, unsigned int slot);
+void at91_mci_bio_set_highcapacity(bool highcapacity_card);
 
 #endif /* __MACH_XLOAD_H */
diff --git a/drivers/mci/atmel_mci_pbl.c b/drivers/mci/atmel_mci_pbl.c
index 767d6f3ce..65d8b3632 100644
--- a/drivers/mci/atmel_mci_pbl.c
+++ b/drivers/mci/atmel_mci_pbl.c
@@ -114,3 +114,8 @@ int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
 
 	return 0;
 }
+
+void at91_mci_bio_set_highcapacity(bool highcapacity_card)
+{
+	atmci_sdcard.highcapacity_card = highcapacity_card;
+}
-- 
2.34.1



