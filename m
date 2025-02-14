Delivery-date: Fri, 14 Feb 2025 21:02:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tj1ti-002OQj-2h
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 21:02:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tj1th-00082j-NU
	for lore@pengutronix.de; Fri, 14 Feb 2025 21:02:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=17zS+k1zAFM6N3vXL494Q+RvItKwJyXFMHDM7F/WtQw=; b=bI/vVAz4qOtM0Rbxq0H3yzokBK
	1f/DrviqaooOngPX9CYbxXDg0jZ6r8dSEluZx7PsSYWui9y2WKyqLjGQv54jSmPjXTVIRd3TX5io5
	yt873/GsuVhkg2unUWbMU/mPIhSGjRJzoQsOWzxi3EvMptlK9f7vzdQnXYg6bdZt7X83lpJc1vQxt
	Q3tmv954hANzAHKLdzZBFee2feiqqO2MG1gXm4czPOl74YwwSm3gKnOYNHmQgu5gfNJCtTwBtPyev
	iWDFomGPmdjDiTOOqea6vRBNQF4Piuhfgtvp2y897wVKp5swCoE9VOUOshZZ3Ako++LYqSPz90w0+
	hDAxG9lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tj1t9-0000000G7Hb-1nk9;
	Fri, 14 Feb 2025 20:02:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tj1t7-0000000G7Gz-0Tq7
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 20:02:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tj1t5-0007rz-Kt; Fri, 14 Feb 2025 21:02:11 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tj1t3-000y6W-1s;
	Fri, 14 Feb 2025 21:02:09 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tj1t3-006D0H-1a;
	Fri, 14 Feb 2025 21:02:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2025 21:02:08 +0100
Message-Id: <20250214200208.1479918-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250214104817.2975052-7-a.fatoum@pengutronix.de>
References: <20250214104817.2975052-7-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_120213_152015_09F3A868 
X-CRM114-Status: GOOD (  11.28  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! bootm: retire bootm_has_initrd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CI noticed correctly that ret is used uninitialized here.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/kvx/lib/bootm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/kvx/lib/bootm.c b/arch/kvx/lib/bootm.c
index 6c35b68f3d5d..42c15ff27351 100644
--- a/arch/kvx/lib/bootm.c
+++ b/arch/kvx/lib/bootm.c
@@ -70,7 +70,7 @@ static int do_boot_elf(struct image_data *data, struct elf_image *elf)
 	initrd_res = bootm_load_initrd(data, initrd_address);
 	if (IS_ERR(initrd_res)) {
 		printf("Failed to load initrd\n");
-		return ret;
+		return PTR_ERR(initrd_res);
 	} else if (initrd_res) {
 		printf("Loading initrd at 0x%lx\n", initrd_address);
 		if (data->initrd_address == UIMAGE_INVALID_ADDRESS) {
-- 
2.39.5



