Delivery-date: Mon, 05 Sep 2022 17:36:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVE91-007ejD-3Y
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 17:36:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVE90-000240-6y
	for lore@pengutronix.de; Mon, 05 Sep 2022 17:36:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y09V4x5SiZCTcnbi9V/kOM5GCHOEQyM5HVjSigiYpsM=; b=NwgiOzzfY95rksrUlbBgrcUKdZ
	dYZggm78Pms3KYISPD3lb0zwRYkkr5lKQjoyeamtCw923i8ncXEGp4bVGE7FpXZFS98kBXG+sV0QD
	L2NhGJ2D+3OyZ0uNkp2yL0qjmBVYlpK7+kj7USiBhb+WcRqCbWEsZhLTj72n113ECptgKctvdQbk1
	jeyv9l3lG4XDX5RBUOC5H+pDT1r2EKIe/9nDjZAtLwpy3X06OIpVF13zmlA/gcpkhn7gWR8DJhrY5
	YiUKKaLzgut+o41DJTdU2Nxx54oDkqjp0INvH4Odm/sACraOIVn6WBpp5O2R0sAzL9G/rodS1iRaZ
	PIkbBHhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVE7H-00625H-S2; Mon, 05 Sep 2022 15:34:28 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q3-00H46Y-4j
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 09:56:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=y09V4x5SiZCTcnbi9V/kOM5GCHOEQyM5HVjSigiYpsM=; b=hAYpVRC2RweAlMifiZC7w6UTQT
	+DI8afLub2NsjCjD9tOH4BWOy+mH5iGmyajUgDxPPh0YkInzD/PYctcBx5eHw6Y4AvHIgqkt6DmmN
	8aSeVJM2yduo/by7ArrMQG13PywrqGzRBG25AaKet+n+xmnxbilDw2ArIzTtHvfvomkCS7n0dVMgA
	zOpWESjzJt76aM1Tv+shUHyuaPoEVeH/u7jPoPKIYXWPUgaVovuHNJm5DZGP8OA3Jlg5U/+wrn1jL
	iq+M28qxDllXxEfXG4ewurr4C8GFYGabsGw0u/5om+CKakNDjfJFBpb+Qow+ITcng9nw8pAo73Wp4
	mppKRGqw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8pz-009MuP-2T
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8ps-0008JQ-TW; Mon, 05 Sep 2022 11:56:08 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pq-0042Ha-8X; Mon, 05 Sep 2022 11:56:08 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pm-002Wem-3E; Mon, 05 Sep 2022 11:56:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:49 +0200
Message-Id: <20220905095557.596891-25-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_105615_218863_89CFAF6E 
X-CRM114-Status: UNSURE (   7.14  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 24/32] of: partition: drop unused variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The name variable is unused anywhere, so just drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/partition.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 6c05e28ea9a8..abbda674d6cb 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -31,7 +31,6 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 	struct cdev *new;
 	const __be32 *reg;
 	u64 offset, size;
-	const char *name;
 	int len;
 	unsigned long flags = 0;
 	int na, ns;
@@ -60,8 +59,6 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 	if (!partname)
 		return NULL;
 
-	name = (char *)partname;
-
 	debug("add partition: %s.%s 0x%08llx 0x%08llx\n", cdev->name, partname, offset, size);
 
 	if (of_get_property(node, "read-only", NULL))
-- 
2.30.2



