Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([212.27.42.3])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1OGWFi-0000sp-Gr
	for barebox@lists.infradead.org; Mon, 24 May 2010 11:55:27 +0000
From: =?utf-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Mon, 24 May 2010 13:55:14 +0200
Message-Id: <1274702114-11772-3-git-send-email-eric@eukrea.com>
In-Reply-To: <1274702114-11772-2-git-send-email-eric@eukrea.com>
References: <1274702114-11772-1-git-send-email-eric@eukrea.com>
	<1274702114-11772-2-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 3/3] i2c: implement i2c_get_adapter()
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/i2c.c |   24 +++++++++++++++++++++++-
 include/i2c/i2c.h |    1 +
 2 files changed, 24 insertions(+), 1 deletions(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 32fd026..1fa114a 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -39,7 +39,7 @@ struct boardinfo {
 };
 
 static LIST_HEAD(board_list);
-
+static LIST_HEAD(adapter_list);
 
 /**
  * i2c_transfer - execute a single or combined I2C message
@@ -327,6 +327,23 @@ static void scan_boardinfo(struct i2c_adapter *adapter)
 }
 
 /**
+ *
+ * i2c_get_adapter - get an i2c adapter from its busnum
+ *
+ * @param	busnum	the desired bus number
+ *
+ */
+struct i2c_adapter *i2c_get_adapter(int busnum)
+{
+	struct i2c_adapter *adap;
+
+	list_for_each_entry(adap, &adapter_list, list)
+		if (adap->nr == busnum)
+			return adap;
+	return NULL;
+}
+
+/**
  * i2c_register_master - register I2C master controller
  *
  * @param	master	initialized master, originally from i2c_alloc_master()
@@ -345,6 +362,11 @@ static void scan_boardinfo(struct i2c_adapter *adapter)
  */
 int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 {
+	if (i2c_get_adapter(adapter->nr))
+		return -EBUSY;
+
+	list_add_tail(&adapter_list, &adapter->list);
+
 	/* populate children from any i2c device tables */
 	scan_boardinfo(adapter);
 
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index 0760fdc..802f553 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -66,6 +66,7 @@ struct i2c_adapter {
 	struct device_d		*dev;	/* ptr to device */
 	int			nr;	/* bus number */
 	int (*master_xfer)(struct i2c_adapter *adap, struct i2c_msg *msgs, int num);
+	struct list_head	list;
 };
 
 
-- 
1.6.3.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
