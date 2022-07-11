Delivery-date: Mon, 11 Jul 2022 11:25:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oApf9-002L79-0J
	for lore@lore.pengutronix.de; Mon, 11 Jul 2022 11:25:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oApf7-0000Rt-3Y
	for lore@pengutronix.de; Mon, 11 Jul 2022 11:25:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x8Dfk+AVK4JFUAZqaI3G33+jyF4RrEf4W0ZMkc3YRkE=; b=b6K1gNE44Uha+iH3upDBRmgl2d
	JqtXkjSmcXyL/sunLzH0v9/hesvo6io2klqhhG0cclXkOfp9h69wxJ/1o/zGkeLo7BRgMupbdtnxN
	Uo1+D0Iz4T7AkxpLMeMRKUAXhyhbF68YBr31XvoF+0WS4cI7a7I9e/vLwaJ8/GkkEcBWEqMsyEN+J
	J71vzonLLt+p6CdnJnkOKhphhCtYgFWtn7EmOYqyNELth+PAbEhF1A/9+3Xde3J8eyjIpbIQ4Yw5G
	PM1Sggezsf0q+kYm2LcXIAwwt/IK+8wu6F3VQEIwz9LffmamGRjmEDh7ZCNneSyEhMmmOc6xsi/pJ
	EL+cTJVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oApdv-00026Z-5m; Mon, 11 Jul 2022 09:23:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oApdr-000237-DK
	for barebox@lists.infradead.org; Mon, 11 Jul 2022 09:23:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1oApdq-0000Ig-6W; Mon, 11 Jul 2022 11:23:46 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oApdp-000HSL-Fw; Mon, 11 Jul 2022 11:23:45 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oApdo-004UM5-Cg; Mon, 11 Jul 2022 11:23:44 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 11 Jul 2022 11:09:15 +0200
Message-Id: <20220711090915.1487105-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220711090915.1487105-1-u.kleine-koenig@pengutronix.de>
References: <20220711083128.kwazqb2wbmqqvdub@pengutronix.de>
 <20220711090915.1487105-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=813; h=from:subject; bh=vko2rtoJrn+Af5pOCkMUjufcrDimh5fNOPYKRIDa72I=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBiy+i4rNU1e+sBt/Un00earJHBLpmedi/HIuWKyyLM yMsbwQqJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCYsvouAAKCRDB/BR4rcrsCSiCB/ 4vItc5kpCMdkeqYV5Cg0ei3m2PpHh8nz6XR057ulzdIkDyFGfwtpScE7HQjqFtK2nJy1pOV5uAuZpf gJqnbk3kQOeB0jS8Wh1cXijB5a02cZqoSvkv2drnFjjICXETZ06JzVgwO1u6/NPI4u8mtiwYoM4PnO Z2b9pvs89tlmimV/opiSqsc3KfFgZ+wGjsoMdUGfWbqzodYGIWjid5pUjCokEB8bikBC0n1AeMCqvc m/alGduGzGc5RNZDpzlu8Raf8N893MiUxoSBPrpGsXUPztx3WA0/p85g0gUKlnKbzoEW7ONsZUA4fw r3m3YanyNni1ZwaC5NLEax36er9f9Q
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_022347_465882_3F6EC0AF 
X-CRM114-Status: GOOD (  11.71  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] devfs: Fix device name in overlap error message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

cpart->name contains the partition name, not the device name. Use
cdev->name instead.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 fs/devfs-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index dca5e10191d4..1d8b2664f216 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -418,7 +418,7 @@ static int check_overlap(struct cdev *cdev, const char *name, loff_t offset, lof
 conflict:
 	pr_err("New partition %s (0x%08llx-0x%08llx) on %s "
 		"overlaps with partition %s (0x%08llx-0x%08llx), not creating it\n",
-		name, offset, offset + size - 1, cpart->name,
+		name, offset, offset + size - 1, cdev->name,
 		cpart->name, cpart_offset, cpart_offset + cpart->size - 1);
 
 	return -EINVAL;
-- 
2.36.1



