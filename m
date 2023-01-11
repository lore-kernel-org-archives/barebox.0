Delivery-date: Wed, 11 Jan 2023 14:31:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFbCs-008r4n-8q
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 14:31:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFbCp-0002Rf-FN
	for lore@pengutronix.de; Wed, 11 Jan 2023 14:31:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aYVibNxbjdEkoA40CwHUnPxiORZKVAA/E12Wl33VKMU=; b=jybQgnIt5LQALJAr/aW/bpzAiF
	f1hTTqYUTGn9l6QDxRO4wvXZh38j+dOYtx/YBSypOtOgd+yNZsC+xAmiCpOIFBKzn9m+oe2p8Jmoy
	z7LHtr8uH6cVbtDMMmNoEod9T+Ln/OLMC0FVkETLOFmQLkdcQmIC4knVfE3hUujPLr1FjEuuNeRQl
	Dfa8LWrUTAL7P3mKsbPw2hiir7evyEZaGkrsAjNX6Th5miy5i9hDgkcIzilOQT5v7j0novxZeUYno
	kEJucNEXrg0wxTTIfuycDqcYL0Db1iNB5VZi0aB9zqD2vnDfTEVfHtINwR2T0QNLuRl3gux7T2Zu0
	Xtp+z4+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFbBT-00BZlR-Q4; Wed, 11 Jan 2023 13:30:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFbB7-00BZac-GA
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 13:30:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFbB4-0001hY-78; Wed, 11 Jan 2023 14:30:02 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFbB3-005JQL-CL; Wed, 11 Jan 2023 14:30:01 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFbB1-004roZ-D7; Wed, 11 Jan 2023 14:29:59 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 14:29:49 +0100
Message-Id: <20230111132956.1153359-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111132956.1153359-1-a.fatoum@pengutronix.de>
References: <20230111132956.1153359-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_053005_781461_FD83D2D2 
X-CRM114-Status: GOOD (  11.66  )
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
Subject: [PATCH v2 04/11] regmap: factor out regmap cdev size calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We will add a new user of this calculate in a follow-up commit, so
make it available as a global function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/regmap/regmap.c | 9 +++++++--
 include/regmap.h             | 2 ++
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index 19f5356105f6..da20dc05828d 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -401,6 +401,12 @@ static struct cdev_operations regmap_fops = {
 	.write	= regmap_cdev_write,
 };
 
+size_t regmap_size_bytes(struct regmap *map)
+{
+	return regmap_round_val_bytes(map) * (map->max_register + 1) /
+		map->reg_stride;
+}
+
 /*
  * regmap_register_cdev - register a devfs file for a regmap
  *
@@ -428,8 +434,7 @@ int regmap_register_cdev(struct regmap *map, const char *name)
 			map->cdev.name = xstrdup(dev_name(map->dev));
 	}
 
-	map->cdev.size = regmap_round_val_bytes(map) * (map->max_register + 1) /
-			map->reg_stride;
+	map->cdev.size = regmap_size_bytes(map);
 	map->cdev.dev = map->dev;
 	map->cdev.ops = &regmap_fops;
 
diff --git a/include/regmap.h b/include/regmap.h
index 8f191c87cfcb..986ed391ab28 100644
--- a/include/regmap.h
+++ b/include/regmap.h
@@ -204,6 +204,8 @@ static inline int regmap_clear_bits(struct regmap *map,
 	return regmap_update_bits(map, reg, bits, 0);
 }
 
+size_t regmap_size_bytes(struct regmap *map);
+
 /**
  * regmap_read_poll_timeout - Poll until a condition is met or a timeout occurs
  *
-- 
2.30.2



