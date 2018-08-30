Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvKSQ-0000Eq-L5
 for barebox@lists.infradead.org; Thu, 30 Aug 2018 10:45:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 Aug 2018 12:45:23 +0200
Message-Id: <20180830104527.4057-2-s.hauer@pengutronix.de>
In-Reply-To: <20180830104527.4057-1-s.hauer@pengutronix.de>
References: <20180830104527.4057-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] fs: tftp: overhaul debugging
To: Barebox List <barebox@lists.infradead.org>

- use pr_* instead of debug()
- use pr_vdebug for the less interesting messages
- use pr_err for error messages
- print state as clear text and not as number

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/tftp.c | 35 +++++++++++++++++++++++++----------
 1 file changed, 25 insertions(+), 10 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index cc30c5eb8f..025edbfb86 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -16,6 +16,9 @@
  * GNU General Public License for more details.
  *
  */
+
+#define pr_fmt(fmt) "tftp: " fmt
+
 #include <common.h>
 #include <command.h>
 #include <net.h>
@@ -54,6 +57,7 @@
 #define TFTP_ERROR	5
 #define TFTP_OACK	6
 
+#define STATE_INVALID	0
 #define STATE_RRQ	1
 #define STATE_WRQ	2
 #define STATE_RDATA	3
@@ -94,6 +98,18 @@ static int tftp_truncate(struct device_d *dev, FILE *f, ulong size)
 	return 0;
 }
 
+static char *tftp_states[] = {
+	[STATE_INVALID] = "INVALID",
+	[STATE_RRQ] = "RRQ",
+	[STATE_WRQ] = "WRQ",
+	[STATE_RDATA] = "RDATA",
+	[STATE_WDATA] = "WDATA",
+	[STATE_OACK] = "OACK",
+	[STATE_WAITACK] = "WAITACK",
+	[STATE_LAST] = "LAST",
+	[STATE_DONE] = "DONE",
+};
+
 static int tftp_send(struct file_priv *priv)
 {
 	unsigned char *xp;
@@ -102,7 +118,7 @@ static int tftp_send(struct file_priv *priv)
 	unsigned char *pkt = net_udp_get_payload(priv->tftp_con);
 	int ret;
 
-	debug("%s: state %d\n", __func__, priv->state);
+	pr_vdebug("%s: state %s\n", __func__, tftp_states[priv->state]);
 
 	switch (priv->state) {
 	case STATE_RRQ:
@@ -206,7 +222,7 @@ static void tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
 
 	pkt[len - 1] = 0;
 
-	debug("got OACK\n");
+	pr_debug("got OACK\n");
 #ifdef DEBUG
 	memory_display(pkt, 0, len, 1, 0);
 #endif
@@ -222,7 +238,7 @@ static void tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
 			priv->filesize = simple_strtoul(val, NULL, 10);
 		if (!strcmp(opt, "blksize"))
 			priv->blocksize = simple_strtoul(val, NULL, 10);
-		debug("OACK opt: %s val: %s\n", opt, val);
+		pr_debug("OACK opt: %s val: %s\n", opt, val);
 		s = val + strlen(val) + 1;
 	}
 }
@@ -247,7 +263,7 @@ static void tftp_recv(struct file_priv *priv,
 	len -= 2;
 	pkt += 2;
 
-	debug("%s: opcode 0x%04x\n", __func__, opcode);
+	pr_vdebug("%s: opcode 0x%04x\n", __func__, opcode);
 
 	switch (opcode) {
 	case TFTP_RRQ:
@@ -260,7 +276,7 @@ static void tftp_recv(struct file_priv *priv,
 
 		priv->block = ntohs(*(uint16_t *)pkt);
 		if (priv->block != priv->last_block) {
-			debug("ack %d != %d\n", priv->block, priv->last_block);
+			pr_vdebug("ack %d != %d\n", priv->block, priv->last_block);
 			break;
 		}
 
@@ -303,7 +319,7 @@ static void tftp_recv(struct file_priv *priv,
 			priv->last_block = 0;
 
 			if (priv->block != 1) {	/* Assertion */
-				printf("error: First block is not block 1 (%d)\n",
+				pr_err("error: First block is not block 1 (%d)\n",
 					priv->block);
 				priv->err = -EINVAL;
 				priv->state = STATE_DONE;
@@ -330,8 +346,7 @@ static void tftp_recv(struct file_priv *priv,
 		break;
 
 	case TFTP_ERROR:
-		debug("\nTFTP error: '%s' (%d)\n",
-				pkt + 2, ntohs(*(uint16_t *)pkt));
+		pr_err("error: '%s' (%d)\n", pkt + 2, ntohs(*(uint16_t *)pkt));
 		switch (ntohs(*(uint16_t *)pkt)) {
 		case 1:
 			priv->err = -ENOENT;
@@ -512,7 +527,7 @@ static int tftp_write(struct device_d *_dev, FILE *f, const void *inbuf,
 	size_t size, now;
 	int ret;
 
-	debug("%s: %zu\n", __func__, insize);
+	pr_vdebug("%s: %zu\n", __func__, insize);
 
 	size = insize;
 
@@ -547,7 +562,7 @@ static int tftp_read(struct device_d *dev, FILE *f, void *buf, size_t insize)
 	size_t outsize = 0, now;
 	int ret;
 
-	debug("%s %zu\n", __func__, insize);
+	pr_vdebug("%s %zu\n", __func__, insize);
 
 	while (insize) {
 		now = kfifo_get(priv->fifo, buf, insize);
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
