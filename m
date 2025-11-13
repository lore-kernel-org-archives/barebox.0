Delivery-date: Thu, 13 Nov 2025 10:35:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJTjr-000UtP-1A
	for lore@lore.pengutronix.de;
	Thu, 13 Nov 2025 10:35:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJTjq-0007gb-Ht
	for lore@pengutronix.de; Thu, 13 Nov 2025 10:35:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ibMnc9OGYWX4a3ztbH/YFrmCzcZGoPS8Rd0GGVqW2UE=; b=A1q8N7mRb4yBXfGe9G6/HmF5ro
	+BRErJiF96hQEGbSZpuTYPudkF/Opjbu3sy5QqvsHZif9beC6H+Qpz9JQanfPeGdtP0FrdW2Q9RXW
	ycub40Q4YrRqHvnN/uMt/jFW0vxGwr90eLM/euHqWfFkr8At91wKb5jldPRhLMy82T7MUpl8aFmYk
	9SH66YRCADnSV0/LxUSeYeKSfffSAmmJGx+O24d98z50ZleyhBS5o0BmpFhGGdJug2wyT0+6/QMrg
	tsgovXuV7uB3+Ts8ciZLQkKQHDkKfxpsoPuikfeiQXTwY0QYdPFLQyC4fIpPLI6UILaQ1Bb3PCzPv
	fC7d7qEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJTjN-0000000ACmx-4AZl;
	Thu, 13 Nov 2025 09:35:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJTjM-0000000AClC-2Lqu
	for barebox@bombadil.infradead.org;
	Thu, 13 Nov 2025 09:35:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=ibMnc9OGYWX4a3ztbH/YFrmCzcZGoPS8Rd0GGVqW2UE=; b=rdr8Y2psQle+6x7O1vIQ/cWVMR
	3J6zwofNq9w1dRMM9Qo3DAo5Abt/+zpooUGkqD1JCNGZSFjhj6J66tMARWxmHU2tu/7MEp3JJX4Pb
	sr6sw3VDiuIWFr6ubWbOwkMQPP6Q2im3EYscwSji3zBxRH0MQVCEWc9HBY1jsIO8EBmNh/FavOLc6
	Cw5OnItVofIFTH8bnY4A2KMV1zhI/KCBsNbw3o+vd/cqkSkiCPoS70qRKnyLL84gMd11DiyrDeBjy
	Ef7OJF/2RmtEe12GXXPjspDc14T6l6nb2AXAvZKWl31y53K0RbaUgCLXOt0ef5sTElT72JuU71i7n
	2t6/cfSg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJSrY-0000000HQCn-0Nt3
	for barebox@lists.infradead.org;
	Thu, 13 Nov 2025 08:39:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTio-00070K-De; Thu, 13 Nov 2025 10:34:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTin-000EXs-3A;
	Thu, 13 Nov 2025 10:34:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTio-00000008Q1y-1EjB;
	Thu, 13 Nov 2025 10:34:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Nov 2025 10:34:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251113-soc-uid-v1-4-29a256e07144@pengutronix.de>
References: <20251113-soc-uid-v1-0-29a256e07144@pengutronix.de>
In-Reply-To: <20251113-soc-uid-v1-0-29a256e07144@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763026469; l=1378;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=iUd9RoVc3vnmEvV/QzLesqwWvOyiu5nnyboo20/IPlA=;
 b=kb3bKx5NfGEo0tPpoU/lhsM08jh3amOqP97YU2qJ8bBNvV8qhDSRaALctGak8IbWTzF2TC1q0
 IuneIrWHjF3DEjY80QQqmvSG146IAcI8PFs6T76LQXg0xLvsPdg2agy
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_083930_623789_2998567F 
X-CRM114-Status: GOOD (  10.48  )
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
Subject: [PATCH 4/9] nvmem: bsec: call barebox_set_soc_uid()
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



