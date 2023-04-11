Delivery-date: Tue, 11 Apr 2023 09:17:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pm8FS-00HIAj-Qe
	for lore@lore.pengutronix.de; Tue, 11 Apr 2023 09:17:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pm8FH-0001js-QP
	for lore@pengutronix.de; Tue, 11 Apr 2023 09:17:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BXGkI0HR43yPGmsma7wKeIbBhYAOCkiefyvDYxNV+OQ=; b=rbtCWpUE1FbcgBVz2Q2FlvKVYD
	Xz5sMpgWi8mFjWnxyg5yJ0JS6FMwjY45ZA3qVGQRyCdj1wIYswzirxN73TicUuAEddmRDUjrix46n
	GBrlpz2G2R1ZK3wUTB65ga6bfDAqmB/hIYNqABUnfha/giJsshwNXKm0cAEhsZ81rTRT0KP39r5XO
	wn/nHE24dniflVq/dwtE7MP0/uKc4jTUtX+LD3BCuqd4HMXnk+A/NYST8SFdlqCYwAXXhxDsiX7yh
	rCmw2xwtVQ+ariDKA1NYrFHgpEh45ZTBNovx2XypoKAOGd14GRLyasrDj3bjovG5oFoL5RzU7UA9o
	YYzyVw3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pm8DQ-00Gg4W-2H;
	Tue, 11 Apr 2023 07:14:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pm8DH-00GfxX-3B
	for barebox@lists.infradead.org;
	Tue, 11 Apr 2023 07:14:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DF-0000sB-9G; Tue, 11 Apr 2023 09:14:45 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DE-00ARvk-KM; Tue, 11 Apr 2023 09:14:44 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DB-006qNY-OC; Tue, 11 Apr 2023 09:14:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Apr 2023 09:14:26 +0200
Message-Id: <20230411071436.1630752-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230411071436.1630752-1-a.fatoum@pengutronix.de>
References: <20230411071436.1630752-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_001448_020903_9D00DC11 
X-CRM114-Status: GOOD (  11.72  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 04/14] video: qemu-ramfb: reduce -ENODEV lo level to debug
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It's perfectly normal for fw_cfg to be available, but ramfb not being
configured. Driver core handles -ENODEV silently to accommodate this
case. The initcall calling ramfb_probe does too, but ramfb_probe itself
prints an error. Replace that with a debug print.

Fixes: 1db52e5a1039 ("video: add support for QEMU ramfb")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/ramfb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/ramfb.c b/drivers/video/ramfb.c
index 26e01196fc02..3442e81b9e51 100644
--- a/drivers/video/ramfb.c
+++ b/drivers/video/ramfb.c
@@ -131,7 +131,7 @@ static int ramfb_probe(struct device *parent_dev, int fd)
 
 	ret = fw_cfg_find_file(parent_dev, fd, "etc/ramfb");
 	if (ret < 0) {
-		dev_err(parent_dev, "ramfb: fw_cfg (etc/ramfb) file not found\n");
+		dev_dbg(parent_dev, "ramfb: fw_cfg (etc/ramfb) file not found\n");
 		return -ENODEV;
 	}
 
-- 
2.39.2



