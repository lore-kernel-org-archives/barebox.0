Delivery-date: Mon, 16 Jan 2023 14:47:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPpX-00Dbug-9X
	for lore@lore.pengutronix.de; Mon, 16 Jan 2023 14:47:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPpV-0000Cf-9K
	for lore@pengutronix.de; Mon, 16 Jan 2023 14:47:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0b3uEgISkOIMs/ZvhC2qEWXQbygobb+ilI+XTqGTJHs=; b=uylAPB9UU2mevhMmn6s5qEXNx9
	qbe/zx0Djn/080WnlnjDwXbVOr8mbsaJRlPTLg6eKrYWooflJAZFhlninJkTRc/75ESXXuNMknOtZ
	HzPB8XMvhnjjcoN+sGREAmy0J1YAGRRyC5z0CKljfpkV+Df/zxAW/3jUbAAm1HksAQQLB0D4FXTd4
	4cwzKTxS5P6vkOwUYNCUq7tLauZ+ioSamspfdBtQivC7IxgPNDOzwg0g70bvoqGqjrE4AiY2+x6Ex
	QYIefoqZt5VY7c9wtq2VSC016mKcvXX1v5iOLlm8zS05UCh+QB5KDb4dhvyPPJQyFxxfcth2UvjrY
	5tqCALsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPo8-00AYOL-M6; Mon, 16 Jan 2023 13:45:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPnZ-00AY8Q-68
	for barebox@lists.infradead.org; Mon, 16 Jan 2023 13:45:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnQ-00080D-DC; Mon, 16 Jan 2023 14:45:08 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnP-006SKS-QF; Mon, 16 Jan 2023 14:45:07 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnN-008Py8-P9; Mon, 16 Jan 2023 14:45:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Jan 2023 14:44:53 +0100
Message-Id: <20230116134501.2006391-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230116134501.2006391-1-a.fatoum@pengutronix.de>
References: <20230116134501.2006391-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_054517_348021_7BF6EA13 
X-CRM114-Status: UNSURE (   9.80  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/9] driver: alias of_match_ptr and DRV_OF_COMPAT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux calls our DRV_OF_COMPAT of_match_ptr. Support both names for
a while with the intention of removing DRV_OF_COMPAT

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/driver.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/driver.h b/include/driver.h
index 0f0cf1bbb046..b878bf4b785d 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -608,9 +608,11 @@ struct devfs_partition {
 int devfs_create_partitions(const char *devname,
 		const struct devfs_partition partinfo[]);
 
-#define DRV_OF_COMPAT(compat) \
+#define of_match_ptr(compat) \
 	IS_ENABLED(CONFIG_OFDEVICE) ? (compat) : NULL
 
+#define DRV_OF_COMPAT(compat) of_match_ptr(compat)
+
 /**
  * dev_get_drvdata - get driver match data associated with device
  * @dev: device instance
-- 
2.30.2



