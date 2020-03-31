Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLvJ-0005wy-2O
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 18:47:42 +0000
Received: by mail-pl1-x642.google.com with SMTP id a23so8464640plm.1
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2020 11:47:40 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 Mar 2020 11:47:04 -0700
Message-Id: <20200331184722.22707-6-andrew.smirnov@gmail.com>
In-Reply-To: <20200331184722.22707-1-andrew.smirnov@gmail.com>
References: <20200331184722.22707-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 05/23] i2c: Port of_find_i2c_device_by_node() from Linux
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of_find_i2c_device_by_node() from Linux in order to allow looking
i2c_client up by corresponding DT node. Useful for interacting with
identical raw/driverless I2C devices that are not found on the same
bus between board variants.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/i2c/i2c.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index a694e4ab2..7eaa97dde 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -281,6 +281,14 @@ static inline int i2c_register_board_info(int busnum,
 extern int i2c_add_numbered_adapter(struct i2c_adapter *adapter);
 struct i2c_adapter *i2c_get_adapter(int busnum);
 struct i2c_adapter *of_find_i2c_adapter_by_node(struct device_node *node);
+static inline struct i2c_client *
+of_find_i2c_device_by_node(struct device_node *node)
+{
+	struct device_d *dev = of_find_device_by_node(node);
+
+	return dev ? to_i2c_client(dev) : NULL;
+}
+
 
 void i2c_parse_fw_timings(struct device_d *dev, struct i2c_timings *t, bool use_defaults);
 
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
