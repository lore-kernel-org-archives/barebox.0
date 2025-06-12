Delivery-date: Thu, 12 Jun 2025 11:04:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPdrc-006SJM-0Y
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 11:04:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPdrb-0004zy-KU
	for lore@pengutronix.de; Thu, 12 Jun 2025 11:04:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GZDupAwgwz89C8rJFU63TpZCqDAlOwQ/sANgj1MuCSg=; b=ReuSWqf4ND3ZdNBI3BqK3l9LKq
	jJEV9QThkljGTRRWEfK9Eqbpi/vf7RpTYnVH7zFNIaQh2qMloAk31ewlCmhEBg4t4Sksa6W5WMRCY
	4uGHDg5Hcf72zd5x4Gyxx7TTBJXrL9Jl2a0GUD9EVLMDpTX34ter7VLnczmSwbc/9+kLFl0PT2HWk
	mTC+Rh/Yj4kFYzzch9kQwzDSzeu2iO8sm6jqrhuCfa5e/GzAkJ6ZlUK1cWEhXeE+hM1CKnMLPy5fH
	ytbsC64mNIaQFpbD4CmeBQ29yggzv5Ob7r43E5maRUbQxNJvvJnLtpDlQGLwJSM6ulYuaDUp3iy2d
	cZCwlxGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPdqt-0000000Cl6g-3PLJ;
	Thu, 12 Jun 2025 09:04:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPd8X-0000000CalI-1dJH
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 08:18:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uPd8U-0003Bi-Do; Thu, 12 Jun 2025 10:18:10 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 12 Jun 2025 10:18:09 +0200
Message-Id: <20250612081809.4170727-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_011813_421675_2ACBAEDB 
X-CRM114-Status: UNSURE (   9.79  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! bootm: booti: make device tree optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

bootm_get_devicetree returns the fixed up device tree, so it must be
called after bootm_load_initrd, so the properties indicating the initrd
location are included in the fixed DT.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/booti.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/common/booti.c b/common/booti.c
index 2d4cb3598737..6a87b84c0308 100644
--- a/common/booti.c
+++ b/common/booti.c
@@ -66,12 +66,6 @@ void *booti_load_image(struct image_data *data, phys_addr_t *oftree)
 		unsigned long devicetree;
 		const struct resource *initrd_res;
 
-		fdt = bootm_get_devicetree(data);
-		if (IS_ERR(fdt))
-			return fdt;
-		if (!fdt)
-			goto out;
-
 		initrd_res = bootm_load_initrd(data, image_end);
 		if (IS_ERR(initrd_res)) {
 			return ERR_CAST(initrd_res);
@@ -82,6 +76,15 @@ void *booti_load_image(struct image_data *data, phys_addr_t *oftree)
 
 		devicetree = image_end;
 
+		fdt = bootm_get_devicetree(data);
+		if (IS_ERR(fdt))
+			return fdt;
+		if (!fdt) {
+			if (initrd_res)
+				pr_warn("initrd discarded due to missing devicetree.\n");
+			goto out;
+		}
+
 		ret = bootm_load_devicetree(data, fdt, devicetree);
 		free(fdt);
 
-- 
2.39.5



