Delivery-date: Mon, 05 Sep 2022 19:40:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVG54-007kvJ-57
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 19:40:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVG54-0002g1-1O
	for lore@pengutronix.de; Mon, 05 Sep 2022 19:40:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I0GsIGzVGyZ8ODlSE1ehsg8DrT160FOeluGreh0Kv5E=; b=ujXCVlcIoAJssXNjXXSLiJH1el
	5Xq0lOySGd5pXt7997VEY34Vg5T0B+CNHwPkEbfYK6cUVhWDcoujsZuHOs6vrOR13VhDP7D39O20c
	yY3IVwUBpzOZj9C0om9N9kC5kUkdh5oIkLPfSvKtjRksGl+ISNprqga+1vcjL/S/G6C8KiZV1GKVW
	oYBL+4Hc12+qe41Q4ScmXVJVBLynd05OawsLI8f8jp8IKy9UeR7etXuARKRIACgFQ3AGJjNuDShqY
	x17jtQAzeb2rf7Kq6wzsTKJHvljG5Rwxlk2IJaQ07S79DB+MomILPJ2Mp6aVNKckJI8pKNgqjQePO
	h/nqUpCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVG3R-007ga1-GY; Mon, 05 Sep 2022 17:38:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8pq-00H3fk-EK
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8po-0008EN-La; Mon, 05 Sep 2022 11:56:04 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pl-0042Fn-RI; Mon, 05 Sep 2022 11:56:03 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pm-002WeX-23; Mon, 05 Sep 2022 11:56:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:44 +0200
Message-Id: <20220905095557.596891-20-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_025606_610922_63A55BB4 
X-CRM114-Status: UNSURE (   9.65  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 19/32] crypto: caam - delete unused variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We don't use nprop anywhere, so drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/crypto/caam/jr.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/crypto/caam/jr.c b/drivers/crypto/caam/jr.c
index 70e016486a7e..6c4867914753 100644
--- a/drivers/crypto/caam/jr.c
+++ b/drivers/crypto/caam/jr.c
@@ -289,7 +289,6 @@ static int caam_jr_init(struct device_d *dev)
  */
 int caam_jr_probe(struct device_d *dev)
 {
-	struct device_node *nprop;
 	struct caam_job_ring __iomem *ctrl;
 	struct caam_drv_private_jr *jrpriv;
 	static int total_jobrs;
@@ -303,7 +302,6 @@ int caam_jr_probe(struct device_d *dev)
 	/* save ring identity relative to detection */
 	jrpriv->ridx = total_jobrs++;
 
-	nprop = dev->device_node;
 	/* Get configuration properties from device tree */
 	/* First, get register page */
 	ctrl = dev_get_mem_region(dev, 0);
-- 
2.30.2



