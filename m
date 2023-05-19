Delivery-date: Fri, 19 May 2023 12:02:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzwwb-006Xon-Ep
	for lore@lore.pengutronix.de; Fri, 19 May 2023 12:02:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzwwZ-0004Lu-0G
	for lore@pengutronix.de; Fri, 19 May 2023 12:02:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qWkxlJaEZjLwVP7K7S0FRQ0ZckhLKu7yKZ7tQIX2EqI=; b=dSl80XpF8fQELA3tSDZivw5VsH
	g6U+TC1CufwE58d3OyGqjRP8WbkZW+4yMrZsDcTu/wNFxMpbA1qKDIGfNE1GXFmYxrDW+n6cznGKI
	ws9wI1WNCNgbw1QhDy5qxZWm/IrOJ7aUplKdeUkI/Deuu55fnSisIQeF9Nkp5zzwogr/Oc9mx8U21
	0HiUV2qLOkBOZ6VpJMZJ2YnWauDyeJxV20G0L2nmjz49pZdq44yfREDZcrR6huySr+MA6r8yZLEfX
	Ad2h20AwuJDwP+wp2r/0pqe/HKUiTwDjcA+Ta8039NYp6lcWZiZN/n9OGLC82OgpxSrFz53Xi+4vV
	ZOL6C3CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzwvV-00Fp0z-34;
	Fri, 19 May 2023 10:01:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzwvP-00Foxm-0s
	for barebox@lists.infradead.org;
	Fri, 19 May 2023 10:01:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pzwvL-0003qc-7Z; Fri, 19 May 2023 12:01:23 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pzwvK-001HUA-Hp; Fri, 19 May 2023 12:01:22 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pzwvJ-009vVZ-95; Fri, 19 May 2023 12:01:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 May 2023 12:01:19 +0200
Message-Id: <20230519100120.2365970-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230519100120.2365970-1-a.fatoum@pengutronix.de>
References: <20230519100120.2365970-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230519_030127_334432_04A54FAC 
X-CRM114-Status: GOOD (  11.95  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 5/6] commands: of_dump: use of_dup instead of flattening/unflattening
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Flattening and unflattening is needlessly laborious. We have of_dup
for that, so let's make use of it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 commands/of_dump.c | 18 +++---------------
 1 file changed, 3 insertions(+), 15 deletions(-)

diff --git a/commands/of_dump.c b/commands/of_dump.c
index f8e7280fd9f2..1d6c019bf08c 100644
--- a/commands/of_dump.c
+++ b/commands/of_dump.c
@@ -79,21 +79,9 @@ static int do_of_dump(int argc, char *argv[])
 	} else {
 		root = of_get_root_node();
 
-		if (fix) {
-			/* create a copy of internal devicetree */
-			void *fdt;
-			fdt = of_flatten_dtb(root);
-			root = of_unflatten_dtb(fdt, fdt_totalsize(fdt));
-
-			free(fdt);
-
-			if (IS_ERR(root)) {
-				ret = PTR_ERR(root);
-				goto out;
-			}
-
-			of_free = root;
-		}
+		/* copy internal device tree to apply fixups onto it */
+		if (fix)
+			root = of_free = of_dup(root);
 	}
 
 	if (fix) {
-- 
2.39.2



