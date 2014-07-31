Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0a-00176a03.pphosted.com ([67.231.149.52])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCqML-0002yj-Oz
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 13:25:32 +0000
Received: from pps.filterd (m0048275.ppops.net [127.0.0.1])
 by m0048275.ppops.net-00176a03. (8.14.7/8.14.7) with SMTP id s6VDOY2Z046714
 for <barebox@lists.infradead.org>; Thu, 31 Jul 2014 09:25:04 -0400
Received: from alpmlip10.e2k.ad.ge.com (n165-156-000-000.static.ge.com
 [165.156.5.1] (may be forged))
 by m0048275.ppops.net-00176a03. with ESMTP id 1nfp1g06u2-1
 (version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=NOT)
 for <barebox@lists.infradead.org>; Thu, 31 Jul 2014 09:25:04 -0400
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 31 Jul 2014 14:24:05 +0100
Message-Id: <1406813045-5185-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH] ppc: DA923RC: 16-bit Product Data EEPROM read access
To: barebox@lists.infradead.org

Change Product Data validity checking to ensure that support can
be provided for 8-bit and 16-bit EEPROM devices.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/boards/geip-da923rc/product_data.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/ppc/boards/geip-da923rc/product_data.c b/arch/ppc/boards/geip-da923rc/product_data.c
index 09cd84d..0c46006 100644
--- a/arch/ppc/boards/geip-da923rc/product_data.c
+++ b/arch/ppc/boards/geip-da923rc/product_data.c
@@ -20,12 +20,20 @@
 #include <mach/fsl_i2c.h>
 #include "product_data.h"

+static int ge_pd_header_check(unsigned short header)
+{
+	if (header != 0xa5a5)
+		return -1;
+	else
+		return 0;
+}
+
 static int ge_is_data_valid(struct ge_product_data *v)
 {
 	int crc, ret = 0;
 	const unsigned char *p = (const unsigned char *)v;

-	if (v->v1.pdh.tag != 0xa5a5)
+	if (ge_pd_header_check(v->v1.pdh.tag))
 		return -1;

 	switch (v->v1.pdh.version) {
@@ -51,12 +59,20 @@ int ge_get_product_data(struct ge_product_data *productp)
 {
 	struct i2c_adapter *adapter;
 	struct i2c_client client;
+	unsigned int width = 0;
 	int ret;

 	adapter = i2c_get_adapter(0);
 	client.addr = 0x51;
 	client.adapter = adapter;
 	ret = i2c_read_reg(&client, 0, (uint8_t *) productp,
+			   sizeof(unsigned short));
+
+	/* If there is no valid header, it may be a 16-bit eeprom. */
+	if (ge_pd_header_check(productp->v1.pdh.tag))
+		width = I2C_ADDR_16_BIT;
+
+	ret = i2c_read_reg(&client, width, (uint8_t *) productp,
 			   sizeof(struct ge_product_data));

 	if (ret == sizeof(struct ge_product_data))
--
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
