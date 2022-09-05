Delivery-date: Mon, 05 Sep 2022 12:58:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9no-007PO0-31
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 12:58:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9nk-0000Lt-T0
	for lore@pengutronix.de; Mon, 05 Sep 2022 12:58:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hVWb43a5wlmRztMyRIQ+Nd/HWkBS9CAWshwPzCNiHrs=; b=hdPzMkYu+65YIKxF1QGSdreX/A
	4iK297hsOMWfCGQYgmlDs067y2MjBp75nrcQmgsX80O/aOhKsAumx0p/03lD73zIFhY2GvPHuo8Hl
	R8BnB5pZzwXvOMhkQUotLkDA524HkEJ8Qgc72cXOkr+LUG3h2qU4wh+8vux5wei0tlDdGCW91z5gB
	LE/G4WQNnE96GvbmcjgqUWurQpoC3P9ZQ05RaGTogb+HKPXRJawBsfTjzLpO1ulzpZMs9YT30q2y0
	TQsSG4ZAH3QCu6vGX8maXXVV/v71WbDNcwtxllWU3BYukGvdS8SFWVmVIvVTc4r4YEHBlV8lEMz6V
	judlAAOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9h9-000fg1-6w; Mon, 05 Sep 2022 10:51:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8qH-00H4Kn-FI
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 09:56:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=hVWb43a5wlmRztMyRIQ+Nd/HWkBS9CAWshwPzCNiHrs=; b=dkWYk9tbC3nEQEXt2yIc2CWK4O
	VQ7mXCzGmzyPjRnzyzqfru9hvy2kw/jkHxzgblz3IvGcGdP1luH082q5kHpxMkmuM3WwPQ1vWDQu1
	GN3OsH56+gQgaggv+SDdzc1RX+esskFdNlK+ayLq4LJJwprAJP1Rkf60DL6wR6y0oi79y+aa4ZJd/
	l4pb+QPxMvnzQoI7UZ7qeiwRONGy2maexqGY4bUq+06FawFPDVwWTHAtFWFtI/RvYY42/q8836vog
	Xc0iq1xScdWj5fKtf+WEc4LQF3W745TMQiEWEYY6QK9vcdVqwFaljUPJL3h2c1S+CvHpxib8BsJb8
	GqKaiuFA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q1-009UjE-TL
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pq-0008FZ-AY; Mon, 05 Sep 2022 11:56:06 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pn-0042GF-Hv; Mon, 05 Sep 2022 11:56:05 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pl-002Wdr-Us; Mon, 05 Sep 2022 11:56:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:30 +0200
Message-Id: <20220905095557.596891-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_105618_613630_8A168FC3 
X-CRM114-Status: GOOD (  12.36  )
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
Subject: [PATCH 05/32] mci: core: drop useless assignment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

rc is never read afterwards anyway, so no point in setting it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 8c08a4f61f63..a1e27b954375 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1722,8 +1722,8 @@ static int mci_register_partition(struct mci_part *part)
 
 	rc = parse_partition_table(&part->blk);
 	if (rc != 0) {
+		/* Lack of partition table is unusual, but not a failure */
 		dev_warn(&mci->dev, "No partition table found\n");
-		rc = 0; /* it's not a failure */
 	}
 
 	if (np) {
-- 
2.30.2



