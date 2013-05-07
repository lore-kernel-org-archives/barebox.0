Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo5.mail-out.ovh.net ([87.98.174.144]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZo4S-0003Xi-Su
 for barebox@lists.infradead.org; Tue, 07 May 2013 20:01:09 +0000
Received: from mail419.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 6B5ECFF9211
 for <barebox@lists.infradead.org>; Tue,  7 May 2013 22:00:47 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  7 May 2013 21:56:25 +0200
Message-Id: <1367956585-2471-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/1] qt1070: drop non used buf
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/input/qt1070.c |    1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/input/qt1070.c b/drivers/input/qt1070.c
index 7f51da0..ada330a 100644
--- a/drivers/input/qt1070.c
+++ b/drivers/input/qt1070.c
@@ -215,7 +215,6 @@ static int qt1070_probe(struct device_d *dev)
 	struct qt1070_data *data;
 	u8 fw_version, chip_id;
 	int ret;
-	char buf[6];
 
 	data = xzalloc(sizeof(*data));
 	data->client = to_i2c_client(dev);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
