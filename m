Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLf4s-0005DN-2l
	for barebox@lists.infradead.org; Fri, 18 Dec 2009 15:49:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Dec 2009 16:48:01 +0100
Message-Id: <1261151305-18627-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1261151305-18627-12-git-send-email-s.hauer@pengutronix.de>
References: <1261151305-18627-1-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-2-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-3-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-4-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-5-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-6-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-7-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-8-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-9-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-10-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-11-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-12-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/36] i2c: Add a no-op i2c_register_board_info if i2c is
	disabled
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/i2c/i2c.h |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)

diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index 991dd5b..3e9d2b4 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -110,7 +110,15 @@ struct i2c_board_info {
 #define I2C_BOARD_INFO(dev_type, dev_addr) \
 	.type = dev_type, .addr = (dev_addr)
 
+#ifdef CONFIG_I2C
 extern int i2c_register_board_info(int busnum, struct i2c_board_info const *info, unsigned n);
+#else
+static inline int i2c_register_board_info(int busnum,
+		struct i2c_board_info const *info, unsigned n)
+{
+	return 0;
+}
+#endif
 extern int i2c_add_numbered_adapter(struct i2c_adapter *adapter);
 
 extern int i2c_transfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num);
-- 
1.6.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
