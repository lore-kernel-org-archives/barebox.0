Delivery-date: Sun, 20 Feb 2022 13:49:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlep-004wuh-GE
	for lore@lore.pengutronix.de; Sun, 20 Feb 2022 13:49:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlem-0001Ot-LM
	for lore@pengutronix.de; Sun, 20 Feb 2022 13:49:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CA3mYxptMgemIYRYsqepl5gPGFLM3j5o/hDoo/4GO6w=; b=voowlG6ujdXAVv
	4zE6ix3QTXBMxFUI0F8AX9ywjg3yDYe1Zy09a6i18QB4NFQ95WKhmRW9BXCpjLpSO7czXGoXianYS
	/xgT76lQsh9PET2I/0zCEmEn9PuYI3PZb9yY0/S+emVxOfL3s15H6hmti54nJ2Z3LjOkHmaix6faW
	wC14jyuFh/kMK13MzapCTkUmKch/uRPP8J6m8KBWgrzbYbqENlG+rJHwPzhqIFQmcefKOxYAejCWh
	PPY3ki0ClXlqjMniDlvQanbkULmDYkAvUJkVotNs1ZyFkGovZsb0situGwq4090FAfwbWzQb1DvAr
	gpt0rSD/2t/nm+kwbb5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLldX-001IJe-4a; Sun, 20 Feb 2022 12:48:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLld1-001I46-JC
 for barebox@lists.infradead.org; Sun, 20 Feb 2022 12:47:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcs-0000Zy-4H; Sun, 20 Feb 2022 13:47:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcq-00CoPW-V2; Sun, 20 Feb 2022 13:47:40 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 20 Feb 2022 13:47:17 +0100
Message-Id: <20220220124736.3052502-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
References: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_044751_667896_78EEEE65 
X-CRM114-Status: GOOD (  10.99  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 05/24] filetype: detect TF-A Firmware Image Packages (FIP)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

FIP is the new format for firmware loaded by ARM Trusted Firmware. It
can contain non-secure firmware, hardware config (device tree), firmware
config (configuration DT) and optionally OP-TEE.

In future, we may want to mount FIP to chain boot barebox out of it, but
for now, just let barebox filetype detect it correctly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/filetype.c  | 4 ++++
 include/filetype.h | 1 +
 2 files changed, 5 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 53517da70d39..0ded64b83c00 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -75,6 +75,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_zynq_image] = { "Zynq image", "zynq-image" },
 	[filetype_mxs_sd_image] = { "i.MX23/28 SD card image", "mxs-sd-image" },
 	[filetype_rockchip_rkns_image] = { "Rockchip boot image", "rk-image" },
+	[filetype_fip] = { "TF-A Firmware Image Package", "fip" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -315,6 +316,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 		return filetype_riscv_barebox_image;
 	if (strncmp(buf8, "RKNS", 4) == 0)
 		return filetype_rockchip_rkns_image;
+	if (le32_to_cpu(buf[0]) == le32_to_cpu(0xaa640001))
+		return filetype_fip;
+
 	if ((buf8[0] == 0x5a || buf8[0] == 0x69 || buf8[0] == 0x78 ||
 	     buf8[0] == 0x8b || buf8[0] == 0x9c) &&
 	    buf8[0x1] == 0 && buf8[0x2] == 0 && buf8[0x3] == 0 &&
diff --git a/include/filetype.h b/include/filetype.h
index 8bc179ac0817..9b7499fdf307 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -56,6 +56,7 @@ enum filetype {
 	filetype_zynq_image,
 	filetype_mxs_sd_image,
 	filetype_rockchip_rkns_image,
+	filetype_fip,
 	filetype_max,
 };
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

