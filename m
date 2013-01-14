Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo5.mail-out.ovh.net ([178.33.107.29]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tun2c-0007FX-0m
 for barebox@lists.infradead.org; Mon, 14 Jan 2013 16:37:45 +0000
Received: from mail439.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 532D4FF9442
 for <barebox@lists.infradead.org>; Mon, 14 Jan 2013 17:47:13 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 14 Jan 2013 17:36:12 +0100
Message-Id: <1358181372-24547-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1358181372-24547-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130114163253.GD22953@game.jcrosoft.org>
 <1358181372-24547-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/5] qt1070: init default key code first
To: barebox@lists.infradead.org

So the key code provided by platform_data are not overwrited

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/input/qt1070.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/input/qt1070.c b/drivers/input/qt1070.c
index c66189e..ebe2b81 100644
--- a/drivers/input/qt1070.c
+++ b/drivers/input/qt1070.c
@@ -244,6 +244,8 @@ static int qt1070_probe(struct device_d *dev)
 	sprintf(buf, "0x%x", chip_id);
 	dev_add_param_fixed(dev, "chip_ip", buf);
 
+	memcpy(data->code, default_code, sizeof(int) * ARRAY_SIZE(default_code));
+
 	ret = qt1070_pdata_init(dev, data);
 	if (ret) {
 		dev_err(dev, "can not get pdata (%d)\n", ret);
@@ -258,7 +260,6 @@ static int qt1070_probe(struct device_d *dev)
 	}
 	data->start = get_time_ns();
 
-	memcpy(data->code, default_code, sizeof(int) * ARRAY_SIZE(default_code));
 
 	data->fifo_size = 50;
 	data->recv_fifo = kfifo_alloc(data->fifo_size);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
