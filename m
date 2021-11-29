Delivery-date: Mon, 29 Nov 2021 08:16:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mratu-0001hR-Mr
	for lore@lore.pengutronix.de; Mon, 29 Nov 2021 08:16:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mratt-0008Fb-OK
	for lore@pengutronix.de; Mon, 29 Nov 2021 08:16:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t5mhfAj+Hqznf38d4iV1vdAvdjJ/IlYNvXtW0BDpgtc=; b=uA2GuSzVqp8iGg
	GlijydXLgz9Q7710Z9ZLvutUDWnPzGXkyxGD0DoHgUg1fllqd3tze0mM68C77RdJAH3d0Vz2PDvDT
	zEHrXfaH3x3uZDHw9HG0UuniATp7gEgaNkL6gTGbV3Fz1caPono2jqq35C45rHcWEGRwoDheHUZ+O
	Yvbvwgo+BZCqVKPWhTk3EStGh5Fjhl5ZH5Pzfw+is0Yzh7n+sMMUCVHYgKn+VdTSISAcKphaIewg+
	9Wnsi1d4sRYg7rwn1Y7TqFGRXBcCgLXBhKG6dwF+2a6EVlxlkOEqF6+Wo0RIc76Gikt3Wm4hMBq/q
	RUHtJ9XJBOd2Rvk0xUXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mrasW-00Hb6G-Jr; Mon, 29 Nov 2021 07:15:08 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mrasR-00Hb48-79
 for barebox@lists.infradead.org; Mon, 29 Nov 2021 07:15:04 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id D394C6000C;
 Mon, 29 Nov 2021 07:14:58 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 29 Nov 2021 08:14:54 +0100
Message-Id: <20211129071454.2014315-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211128_231503_431402_6382C27E 
X-CRM114-Status: UNSURE (   8.99  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] fs: /dev/mem: handle copy at offset 0 correctly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Despite that /dev/mem has a size of 0, the check preventing
out-of-bounds access works for /dev/mem as well, because of unsigned
wrap around. Corner case is when offset is zero. There will be no wrap
around and

  count = min(count, 0 - 0) = 0

Leading to unexpected behavior with e.g.

  memcmp -s /dev/mem 0

on systems without MMU. Fix this.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 fs/devfs-core.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 3715e543e632..2d016e0e4861 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -573,7 +573,10 @@ ssize_t mem_copy(struct device_d *dev, void *dst, const void *src,
 	if (!dev || dev->num_resources < 1)
 		return -1;
 
-	count = size = min(count, resource_size(&dev->resource[0]) - offset);
+	if (resource_size(&dev->resource[0]) > 0 || offset != 0)
+		count = min(count, resource_size(&dev->resource[0]) - offset);
+
+	size = count;
 
 	/* no rwsize specification given. Do whatever memcpy likes best */
 	if (!rwsize) {
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

