Delivery-date: Wed, 03 May 2023 14:27:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puBaF-0038J8-7W
	for lore@lore.pengutronix.de; Wed, 03 May 2023 14:27:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puBaD-0006oV-8q
	for lore@pengutronix.de; Wed, 03 May 2023 14:27:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HP53LagqR7eRP3JbdvORbBX9wrBKWIJ4p63wRTIPVhc=; b=eQaI92Hb9FC3eabSa5v2JwD6Q1
	E9fb6/wQgK8HwPFTlF2FScEkz7KpCfPigL85KdK//IV+cj6ZHO578uu1xA7lGru4vwYglH3gV/PZP
	tmHbnVnnPKGziUrnGDpYixn7lrtqEDzUAlfoseXi4ce7/LKwHPG83durJUfGk9xISuG06G9QkXOba
	N8k+f+RBAk6H+ayboemu+8iY0m29HofzyjgJqNKv8f2xRCzYIadRUlsygk4cl5lW0S727aJlunwBM
	rG8g9PsHJBImVOMkyChL9CD8ypty8eNasmVCYftN7Ybvv/8h/+xYZa7WaZdvrtNA1UiNbgMPZ7vxa
	KLqiHkUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puBZ0-004YNL-12;
	Wed, 03 May 2023 12:26:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puBYx-004YM9-2w
	for barebox@lists.infradead.org;
	Wed, 03 May 2023 12:26:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1puBYr-0006j6-JN; Wed, 03 May 2023 14:26:21 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puBYq-000pC2-UY; Wed, 03 May 2023 14:26:20 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puBYq-005SWI-8D; Wed, 03 May 2023 14:26:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  3 May 2023 14:26:19 +0200
Message-Id: <20230503122619.1301236-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_052627_973308_B904091E 
X-CRM114-Status: GOOD (  11.70  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: rockchip: bootm: move image to 4k alignment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The new barebox must be 4k aligned which is not always the case when
we skip over the SDRAM initialisation binary. memmove to a suitable
place.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/bootm.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/bootm.c b/arch/arm/mach-rockchip/bootm.c
index 4317fdefd6..6f4aa27808 100644
--- a/arch/arm/mach-rockchip/bootm.c
+++ b/arch/arm/mach-rockchip/bootm.c
@@ -88,7 +88,8 @@ static int do_bootm_rkns_barebox_image(struct image_data *data)
 				file_type_to_string(filetype));
 
 		if (filetype == filetype_arm_barebox) {
-			barebox = buf + entry_start;
+			memmove(buf, buf + entry_start, image_size - entry_start);
+			barebox = buf;
 			goto found;
 		}
 	}
-- 
2.39.2



