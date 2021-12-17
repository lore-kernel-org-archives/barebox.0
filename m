Delivery-date: Fri, 17 Dec 2021 19:48:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myIHY-009iiS-Lt
	for lore@lore.pengutronix.de; Fri, 17 Dec 2021 19:48:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myIHW-0001wM-Kw
	for lore@pengutronix.de; Fri, 17 Dec 2021 19:48:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6I9Q+6rZ+3fEUIp7t9QNzTYQlmA0lRTeVcHfqZq1YRs=; b=h1kSri6iceYYMq
	0626oytN8k4GgyECyigh0knxbMESGrP2xk3VO1gxQSpVSJmRRWYq1qErY/KPa7doQZBIg5wxC/b2N
	BN32ByWPdG2ijmXiBkhnupCJT+H9k5RShrniZpE/YDqafCZhBMXgyzbb2Ou+SfZ8Q8JYfDsV87PL3
	fXlCGtvVYGJ9imt4uq77RHzSOqdZBVb5BBI/ajrqNp6nkQ+tuBkqUS8Xyol4IAuXLxrOPGAKgmSAS
	azClKtSBC7LkaL3Z5RDE/iEb7pH1bEap+WUbjhT8CHtbuhdSqGXPXTKQ9ikPY/2IdZDYatIquQvkd
	2I3XeJJe3k7tSV+Fr9xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myIG8-00By1u-LO; Fri, 17 Dec 2021 18:47:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myHso-00Bnmc-PC
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 18:23:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1myHsk-0007xp-J6
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 19:23:02 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <mtr@pengutronix.de>) id 1myHsk-0054de-FN
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 19:23:01 +0100
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <mtr@pengutronix.de>) id 1myHsi-00FoIv-PE
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 19:23:00 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 17 Dec 2021 19:22:59 +0100
Message-Id: <20211217182300.3768235-5-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211217182300.3768235-1-m.tretter@pengutronix.de>
References: <20211217182300.3768235-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_102306_892120_34B77359 
X-CRM114-Status: GOOD (  10.76  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] video: ssd1307fb: use function pointer for write
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The function pointer is an abstraction the I2C accesses to be able to
add other bus protocols underneath the driver.

The functionality kind of reminds of regmap, but the driver does only
write data and does not actually use registers. Therefore, using regmap
with the register abstraction is not appropriate.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/video/ssd1307fb.c | 26 +++++++++++++++++---------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
index 1538a1b640a3..d0df073b8ef2 100644
--- a/drivers/video/ssd1307fb.c
+++ b/drivers/video/ssd1307fb.c
@@ -53,6 +53,16 @@ struct ssd1307fb_deviceinfo {
 	int need_chargepump;
 };
 
+struct ssd1307fb_array {
+	u8 type;
+	u8 data[0];
+};
+
+struct ssd1307fb_par;
+
+typedef int (*ssd1307fb_write_array)(struct ssd1307fb_par *par,
+				     struct ssd1307fb_array *array, u32 len);
+
 struct ssd1307fb_par {
 	u32 com_invdir;
 	u32 com_lrremap;
@@ -73,11 +83,8 @@ struct ssd1307fb_par {
 	u32 seg_remap;
 	u32 vcomh;
 	u32 width;
-};
 
-struct ssd1307fb_array {
-	u8 type;
-	u8 data[0];
+	ssd1307fb_write_array write_array;
 };
 
 static struct ssd1307fb_array *ssd1307fb_alloc_array(u32 len, u8 type)
@@ -93,8 +100,8 @@ static struct ssd1307fb_array *ssd1307fb_alloc_array(u32 len, u8 type)
 	return array;
 }
 
-static int ssd1307fb_write_array(struct ssd1307fb_par *par,
-				 struct ssd1307fb_array *array, u32 len)
+static int ssd1307fb_i2c_write_array(struct ssd1307fb_par *par,
+				     struct ssd1307fb_array *array, u32 len)
 {
 	struct i2c_client *client = par->client;
 	int ret;
@@ -121,7 +128,7 @@ static inline int ssd1307fb_write_cmd(struct ssd1307fb_par *par, u8 cmd)
 
 	array->data[0] = cmd;
 
-	ret = ssd1307fb_write_array(par, array, 1);
+	ret = par->write_array(par, array, 1);
 	kfree(array);
 
 	return ret;
@@ -182,7 +189,7 @@ static void ssd1307fb_update_display(struct ssd1307fb_par *par)
 		}
 	}
 
-	ssd1307fb_write_array(par, array, par->width * par->height / 8);
+	par->write_array(par, array, par->width * par->height / 8);
 	kfree(array);
 }
 
@@ -414,6 +421,7 @@ static int ssd1307fb_probe(struct device_d *dev)
 
 	par->client = to_i2c_client(dev);
 	i2c_set_clientdata(par->client, par);
+	par->write_array = ssd1307fb_i2c_write_array;
 
 	par->reset = of_get_named_gpio_flags(node,
 					 "reset-gpios", 0, &of_flags);
@@ -564,7 +572,7 @@ static int ssd1307fb_probe(struct device_d *dev)
 		}
 	}
 
-	ssd1307fb_write_array(par, array, par->width * par->height / 8);
+	par->write_array(par, array, par->width * par->height / 8);
 	kfree(array);
 
 	dev_info(dev,
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

