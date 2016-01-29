Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1aP6XY-0003eA-6D
 for barebox@lists.infradead.org; Fri, 29 Jan 2016 10:44:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Jan 2016 11:43:59 +0100
Message-Id: <1454064243-26558-20-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454064243-26558-1-git-send-email-s.hauer@pengutronix.de>
References: <1454064243-26558-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 19/23] scripts: imx-image: pass config data to add_header_*
To: Barebox List <barebox@lists.infradead.org>

Now that we have a config data struct we can pass it to add_header_*
to reduce the argument count.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index cb3c242..4fc4994 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -73,11 +73,14 @@ static uint32_t bb_header[] = {
 	0x55555555,
 };
 
-static int add_header_v1(void *buf, int offset, uint32_t loadaddr, uint32_t imagesize)
+static int add_header_v1(struct config_data *data, void *buf)
 {
 	struct imx_flash_header *hdr;
 	int dcdsize = curdcd * sizeof(uint32_t);
 	uint32_t *psize = buf + ARM_HEAD_SIZE_OFFSET;
+	int offset = data->image_dcd_offset;
+	uint32_t loadaddr = data->image_load_addr;
+	uint32_t imagesize = data->load_size;
 
 	if (add_barebox_header) {
 		memcpy(buf, bb_header, sizeof(bb_header));
@@ -128,11 +131,14 @@ static int write_mem_v1(uint32_t addr, uint32_t val, int width)
  * ============================================================================
  */
 
-static int add_header_v2(void *buf, int offset, uint32_t loadaddr, uint32_t imagesize)
+static int add_header_v2(struct config_data *data, void *buf)
 {
 	struct imx_flash_header_v2 *hdr;
 	int dcdsize = curdcd * sizeof(uint32_t);
 	uint32_t *psize = buf + ARM_HEAD_SIZE_OFFSET;
+	int offset = data->image_dcd_offset;
+	uint32_t loadaddr = data->image_load_addr;
+	uint32_t imagesize = data->load_size;
 
 	if (add_barebox_header)
 		memcpy(buf, bb_header, sizeof(bb_header));
@@ -424,10 +430,10 @@ int main(int argc, char *argv[])
 
 	switch (data.header_version) {
 	case 1:
-		add_header_v1(buf, data.image_dcd_offset, data.image_load_addr, load_size);
+		add_header_v1(&data, buf);
 		break;
 	case 2:
-		add_header_v2(buf, data.image_dcd_offset, data.image_load_addr, load_size);
+		add_header_v2(&data, buf);
 		break;
 	default:
 		fprintf(stderr, "Congratulations! You're welcome to implement header version %d\n",
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
