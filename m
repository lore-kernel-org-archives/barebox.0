Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x234.google.com ([2607:f8b0:400e:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a5qcZ-0003vp-Az
 for barebox@lists.infradead.org; Mon, 07 Dec 2015 07:54:09 +0000
Received: by pacdm15 with SMTP id dm15so121027813pac.3
 for <barebox@lists.infradead.org>; Sun, 06 Dec 2015 23:53:45 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  6 Dec 2015 23:52:39 -0800
Message-Id: <1449474763-14099-3-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1449474763-14099-1-git-send-email-andrew.smirnov@gmail.com>
References: <1449474763-14099-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/7] i2c: Port two utility functions from Linux kernel
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/i2c/i2c.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index 33a4791..cf784ca 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -194,6 +194,21 @@ extern s32 i2c_smbus_read_word_data(const struct i2c_client *client,
 extern s32 i2c_smbus_write_word_data(const struct i2c_client *client,
 				     u8 command, u16 value);

+static inline s32
+i2c_smbus_read_word_swapped(const struct i2c_client *client, u8 command)
+{
+	s32 value = i2c_smbus_read_word_data(client, command);
+
+	return (value < 0) ? value : swab16(value);
+}
+
+static inline s32
+i2c_smbus_write_word_swapped(const struct i2c_client *client,
+			     u8 command, u16 value)
+{
+	return i2c_smbus_write_word_data(client, command, swab16(value));
+}
+
 /* Returns the number of read bytes */
 extern s32 i2c_smbus_read_i2c_block_data(const struct i2c_client *client,
 					 u8 command, u8 length, u8 *values);
--
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
