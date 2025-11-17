Delivery-date: Mon, 17 Nov 2025 09:36:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKuig-001uqP-0j
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 09:36:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKuif-0001dT-6l
	for lore@pengutronix.de; Mon, 17 Nov 2025 09:36:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ibMnc9OGYWX4a3ztbH/YFrmCzcZGoPS8Rd0GGVqW2UE=; b=w8ApXtEP8Ll2JksKK7Au914Na6
	1x4wOhB2WIu9ScFnstc/to+376IKldOnMDHJ6SXlOlw234toEqMaIisxmCw/Q1wJ1R0Q+lAHrs6Sm
	YJTNrYg2rzjT5nj1ZdXXF6O1CN0+c5+nvPBRnYKY3r6KENjwArRUvK+GCgBrxMgL1Kop2eK8gCak2
	W9W00ENhBZYbdjiQUH698HldsDsr4JXZ+sRVuFQXhY6DsrY9W987A5y6iMoeAyaz9SZiaRVHaSGBg
	tXown3RmLIt0szlkadSdSdhX1Kc3cxHCJmNaYmR5VHp+bVScYF7SSRlkgYF6XvL3/ll/FRvAAfmfU
	aSejL2tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKui7-0000000Fgr8-2ObK;
	Mon, 17 Nov 2025 08:35:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKui3-0000000Fgp9-1qAt
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 08:35:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKui0-0001Dy-4v; Mon, 17 Nov 2025 09:35:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKuhz-000sfi-2P;
	Mon, 17 Nov 2025 09:35:35 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKui0-00000005QZR-0I5W;
	Mon, 17 Nov 2025 09:35:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Nov 2025 09:35:37 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251117-soc-uid-v2-4-a2415bf9133d@pengutronix.de>
References: <20251117-soc-uid-v2-0-a2415bf9133d@pengutronix.de>
In-Reply-To: <20251117-soc-uid-v2-0-a2415bf9133d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763368535; l=1378;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=iUd9RoVc3vnmEvV/QzLesqwWvOyiu5nnyboo20/IPlA=;
 b=1H1d1uNEvwgG7qqTGM5AJgGNrYadxmaTqwzuzPMBK7wXG4QwftkdTUW1rZxEa8XjQo8UF2qui
 eiduco++BjKA1XOYoNn9oWcfyvy3BzksKjWtS9W8QM6aptULw8dHptb
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_003539_483340_6F271CAF 
X-CRM114-Status: GOOD (  11.20  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/9] nvmem: bsec: call barebox_set_soc_uid()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox_set_soc_uid() calls barebox_set_soc_uid() the same way as done
previously, but also exposes the SoC ID in the barebox environment.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nvmem/bsec.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
index b67b55addfe0ebf1546e6b382a1f65af5c3ad423..1e85d4c9fcb43e90657ebf65bde976293bfa042f 100644
--- a/drivers/nvmem/bsec.c
+++ b/drivers/nvmem/bsec.c
@@ -110,13 +110,16 @@ static void stm32_bsec_set_unique_machine_id(struct regmap *map)
 {
 	u32 unique_id[3];
 	int ret;
+	char *uidstr;
 
 	ret = regmap_bulk_read(map, BSEC_OTP_SERIAL * 4,
 			       unique_id, sizeof(unique_id) / 4);
 	if (ret)
 		return;
 
-	machine_id_set_hashable(unique_id, sizeof(unique_id));
+	uidstr = xasprintf("%08X%08X%08X", unique_id[0], unique_id[1], unique_id[2);
+	barebox_set_soc_uid(uidstr, unique_id, sizeof(unique_id));
+	free(uidstr);
 }
 
 static int stm32_bsec_read_mac(struct bsec_priv *priv, int offset, u8 *mac)
@@ -278,8 +281,7 @@ static int stm32_bsec_probe(struct device *dev)
 	if (IS_ERR(nvmem))
 		return PTR_ERR(nvmem);
 
-	if (IS_ENABLED(CONFIG_MACHINE_ID))
-		stm32_bsec_set_unique_machine_id(map);
+	stm32_bsec_set_unique_machine_id(map);
 
 	stm32_bsec_init_dt(priv, dev, map);
 

-- 
2.47.3



