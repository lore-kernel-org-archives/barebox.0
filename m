Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aJNUn-0004JC-SG
 for barebox@lists.infradead.org; Wed, 13 Jan 2016 15:38:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Jan 2016 16:37:33 +0100
Message-Id: <1452699456-1025-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1452699456-1025-1-git-send-email-s.hauer@pengutronix.de>
References: <1452699456-1025-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/15] input: Add device tree parsing support for matrix keymap
To: Barebox List <barebox@lists.infradead.org>

Add support for parsing the "linux,keymap" property.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/input/imx_keypad.c    |  4 +++-
 drivers/input/matrix-keymap.c | 49 ++++++++++++++++++++++++++++++++++++++++++-
 include/input/matrix_keypad.h |  6 +++---
 3 files changed, 54 insertions(+), 5 deletions(-)

diff --git a/drivers/input/imx_keypad.c b/drivers/input/imx_keypad.c
index bc74d7d..d3b5a85 100644
--- a/drivers/input/imx_keypad.c
+++ b/drivers/input/imx_keypad.c
@@ -396,8 +396,10 @@ static int __init imx_keypad_probe(struct device_d *dev)
 	dev_dbg(dev, "enabled rows mask: %x\n", keypad->rows_en_mask);
 	dev_dbg(dev, "enabled cols mask: %x\n", keypad->cols_en_mask);
 
-	matrix_keypad_build_keymap(keymap_data, MATRIX_ROW_SHIFT,
+	ret = matrix_keypad_build_keymap(dev, keymap_data, MATRIX_ROW_SHIFT,
 				keypad->keycodes);
+	if (ret)
+		return ret;
 
 	imx_keypad_config(keypad);
 
diff --git a/drivers/input/matrix-keymap.c b/drivers/input/matrix-keymap.c
index d56eccc..288b6a4 100644
--- a/drivers/input/matrix-keymap.c
+++ b/drivers/input/matrix-keymap.c
@@ -12,6 +12,47 @@
 #include <common.h>
 #include <input/matrix_keypad.h>
 
+static int matrix_keypad_parse_of_keymap(struct device_d *dev,
+					 unsigned int row_shift,
+					 unsigned short *keymap)
+{
+	unsigned int proplen, i, size;
+	const __be32 *prop;
+	struct device_node *np = dev->device_node;
+	const char *propname = "linux,keymap";
+
+	prop = of_get_property(np, propname, &proplen);
+	if (!prop) {
+		dev_err(dev, "OF: %s property not defined in %s\n",
+			propname, np->full_name);
+		return -ENOENT;
+	}
+
+	if (proplen % sizeof(u32)) {
+		dev_err(dev, "OF: Malformed keycode property %s in %s\n",
+			propname, np->full_name);
+		return -EINVAL;
+	}
+
+	size = proplen / sizeof(u32);
+
+	for (i = 0; i < size; i++) {
+		unsigned int key = be32_to_cpup(prop + i);
+
+		unsigned int row = KEY_ROW(key);
+		unsigned int col = KEY_COL(key);
+		unsigned short code = KEY_VAL(key);
+
+		if (row >= MATRIX_MAX_ROWS || col >= MATRIX_MAX_COLS) {
+			dev_err(dev, "rows/cols out of range\n");
+			continue;
+		}
+
+		keymap[MATRIX_SCAN_CODE(row, col, row_shift)] = code;
+	}
+
+	return 0;
+}
 /**
  * matrix_keypad_build_keymap - convert platform keymap into matrix keymap
  * @keymap_data: keymap supplied by the platform code
@@ -23,12 +64,18 @@
  * an array of keycodes that is suitable for using in a standard matrix
  * keyboard driver that uses row and col as indices.
  */
-int matrix_keypad_build_keymap(const struct matrix_keymap_data *keymap_data,
+int matrix_keypad_build_keymap(struct device_d *dev, const struct matrix_keymap_data *keymap_data,
 			   unsigned int row_shift,
 			   unsigned short *keymap)
 {
 	int i;
 
+	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node)
+		return matrix_keypad_parse_of_keymap(dev, row_shift, keymap);
+
+	if (!keymap_data)
+		return -EINVAL;
+
 	for (i = 0; i < keymap_data->keymap_size; i++) {
 		unsigned int key = keymap_data->keymap[i];
 		unsigned int row = KEY_ROW(key);
diff --git a/include/input/matrix_keypad.h b/include/input/matrix_keypad.h
index 77b00c0..03d963a 100644
--- a/include/input/matrix_keypad.h
+++ b/include/input/matrix_keypad.h
@@ -28,8 +28,8 @@ struct matrix_keymap_data {
 	unsigned int	keymap_size;
 };
 
-int matrix_keypad_build_keymap(const struct matrix_keymap_data *keymap_data,
-			   unsigned int row_shift,
-			   unsigned short *keymap);
+int matrix_keypad_build_keymap(struct device_d *dev,
+			       const struct matrix_keymap_data *keymap_data,
+			       unsigned int row_shift, unsigned short *keymap);
 
 #endif /* _MATRIX_KEYPAD_H */
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
