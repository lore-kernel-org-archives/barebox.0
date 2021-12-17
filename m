Delivery-date: Fri, 17 Dec 2021 19:48:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myIHP-009ihZ-76
	for lore@lore.pengutronix.de; Fri, 17 Dec 2021 19:48:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myIHN-0001uR-1y
	for lore@pengutronix.de; Fri, 17 Dec 2021 19:48:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LeDgtxy9U1lfQRYNiwO1HId+UBrh+3G6FK0zjyzDFTM=; b=leV45NCOtPu0IK
	u7NTsINjEqHDoScZcdeBZpRk2PR3M/P60SK95L3W/N1seHNK3rI+DwgNbk9EYgkVBBAOAWuyIbBLE
	lom8EAL05kiw8bAv8fB2LJgcMIcvv/mcPJXnenPbhjDhyoAvmmmISC14QAoQbV78Duur1OyeOtkr5
	p0CZByPyqYz63AJqVNS//CmZn1T0wkc+nW2l6D5PKe+t/fek1MIL/TGJ9nsJb3kTjnimTYZ0SfVty
	7lZAkGjRbuxHjycyeby3/Rjptvjkz8kCdfwDrtjLbRXQ3eAa3ANO4bOiI3yB1yM4ZzDqEpIm+Fjcb
	TlLqYXeUoqzPEpZAXLzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myIFe-00BxrP-Kl; Fri, 17 Dec 2021 18:46:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myHso-00Bnmd-KZ
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 18:23:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1myHsk-0007xn-K5
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 19:23:02 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <mtr@pengutronix.de>) id 1myHsk-0054da-Ej
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 19:23:01 +0100
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <mtr@pengutronix.de>) id 1myHsi-00FoIs-Om
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 19:23:00 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 17 Dec 2021 19:22:58 +0100
Message-Id: <20211217182300.3768235-4-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211217182300.3768235-1-m.tretter@pengutronix.de>
References: <20211217182300.3768235-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_102306_718403_15A19858 
X-CRM114-Status: GOOD (  12.29  )
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
Subject: [PATCH 3/5] video: ssd1307fb: move i2c setup to single place
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

By having the entire i2c dependent initialzation in a single place, it
is easier to make it optional later.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/video/ssd1307fb.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
index 88c88e3253cf..1538a1b640a3 100644
--- a/drivers/video/ssd1307fb.c
+++ b/drivers/video/ssd1307fb.c
@@ -387,7 +387,6 @@ static const struct of_device_id ssd1307fb_of_match[] = {
 
 static int ssd1307fb_probe(struct device_d *dev)
 {
-	struct i2c_client *client = to_i2c_client(dev);
 	struct fb_info *info;
 	struct device_node *node = dev->device_node;
 	const struct of_device_id *match =
@@ -410,10 +409,12 @@ static int ssd1307fb_probe(struct device_d *dev)
 
 	info->priv = par;
 	par->info = info;
-	par->client = client;
 
 	par->device_info = (struct ssd1307fb_deviceinfo *)match->data;
 
+	par->client = to_i2c_client(dev);
+	i2c_set_clientdata(par->client, par);
+
 	par->reset = of_get_named_gpio_flags(node,
 					 "reset-gpios", 0, &of_flags);
 	if (!gpio_is_valid(par->reset) && par->reset == -EPROBE_DEFER) {
@@ -519,8 +520,6 @@ static int ssd1307fb_probe(struct device_d *dev)
 	if (ret < 0)
 		goto reset_oled_error;
 
-	i2c_set_clientdata(client, info);
-
 	if (par->reset > 0) {
 		/* Reset the screen */
 		gpio_set_active(par->reset, 1);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

