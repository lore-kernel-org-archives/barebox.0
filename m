Delivery-date: Fri, 14 Mar 2025 10:46:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt1d3-00Dx1a-2D
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 10:46:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt1d2-0007bi-Ea
	for lore@pengutronix.de; Fri, 14 Mar 2025 10:46:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0R5fUNNQMRsEQF7nUTjnTB5JnnWycErW7ZbXWywzCMs=; b=oUOLwqbHw5HJEzBeB/3/Etnn22
	HoGHFiAZhTnVqQKv6YRUH9/oem2lFz2ELi7YbGhaHouHCLeJOWvHGy5N4mrU9boOcDwByNflHbh9p
	kH87zeaFqp9XQ+lEd0pvYvSAXim2RVNFQl+cx7ExNOrUybhIEqIl8NDRd56I1k12UuadB546ab89Y
	FIZKioFI4eOhqq7skb6WuSrwcroDNqNvOya1p4t2ibbTNIYuebs7cROCKKb2GroJVlxF1kYSYdWpk
	adxJU5uGamRTae/lW7gJh1SuJAeTx4KNmhuTIuGzibExvKrGaiRQZFzew7U4x+vRJJgdV8C9ddKue
	guPfB7lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt1cE-0000000DiYI-3dLQ;
	Fri, 14 Mar 2025 09:46:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt1cB-0000000DiXP-1RKk
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 09:46:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt1c9-0007RI-Cp; Fri, 14 Mar 2025 10:46:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt1c9-005gE1-0e;
	Fri, 14 Mar 2025 10:46:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt1c9-00FEdi-0I;
	Fri, 14 Mar 2025 10:46:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 14 Mar 2025 10:45:59 +0100
Message-Id: <20250314094559.3631184-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250314094559.3631184-1-s.hauer@pengutronix.de>
References: <20250314094559.3631184-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_024603_379169_67DF227A 
X-CRM114-Status: GOOD (  10.52  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: k3r5: Honour CONFIG_EXTRA_FIRMWARE_DIR
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox expects the firmware blobs in CONFIG_EXTRA_FIRMWARE_DIR, but the
ti-fs-firmware is searched for in $(srctree)/firmware/ instead. Use
$(FIRMWARE_DIR) instead to use the correct directory when changed from
the default.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile.k3 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/images/Makefile.k3 b/images/Makefile.k3
index 466a84af99..fd42877837 100644
--- a/images/Makefile.k3
+++ b/images/Makefile.k3
@@ -25,9 +25,9 @@ ifdef CONFIG_MACH_K3_CORTEX_R5
 
 SYSFWDATA_am625=$(objtree)/arch/arm/mach-k3/combined-sysfw-cfg-am625.k3cfg
 DMDATA_am625=$(objtree)/arch/arm/mach-k3/combined-dm-cfg-am625.k3cfg
-SYSFW_am625_hs_fs=$(srctree)/firmware/ti-fs-firmware-am62x-hs-fs-enc.bin
-SYSFW_am625_gp=$(srctree)/firmware/ti-fs-firmware-am62x-gp.bin
-INNERDATA_am625=$(srctree)/firmware/ti-fs-firmware-am62x-hs-fs-cert.bin
+SYSFW_am625_hs_fs=$(FIRMWARE_DIR)/ti-fs-firmware-am62x-hs-fs-enc.bin
+SYSFW_am625_gp=$(FIRMWARE_DIR)/ti-fs-firmware-am62x-gp.bin
+INNERDATA_am625=$(FIRMWARE_DIR)/ti-fs-firmware-am62x-hs-fs-cert.bin
 KEY_custmpk=$(srctree)/arch/arm/mach-k3/custMpk.pem
 KEY_degenerate=$(srctree)/arch/arm/mach-k3/ti-degenerate-key.pem
 
-- 
2.39.5



