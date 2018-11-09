Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gL3TI-0002hU-Br
 for barebox@lists.infradead.org; Fri, 09 Nov 2018 09:53:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Nov 2018 10:52:39 +0100
Message-Id: <20181109095246.15068-14-s.hauer@pengutronix.de>
In-Reply-To: <20181109095246.15068-1-s.hauer@pengutronix.de>
References: <20181109095246.15068-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/20] imx-bbu-nand: Make locally used functions static
To: Barebox List <barebox@lists.infradead.org>

To avoid missing prototypes warning.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 8842ba6c58..8c276a43c0 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -204,7 +204,7 @@ static void encode_bch_ecc(void *buf, struct fcb_block *fcb, int eccbits)
 	free_bch(bch);
 }
 
-struct fcb_block *read_fcb_bch(void *rawpage, int eccbits)
+static struct fcb_block *read_fcb_bch(void *rawpage, int eccbits)
 {
 	int i, j, ret, errbit, m = 13;
 	int blocksize = 128;
@@ -308,7 +308,7 @@ static uint32_t calc_chksum(void *buf, size_t size)
 	return ~chksum;
 }
 
-struct fcb_block *read_fcb_hamming_13_8(void *rawpage)
+static struct fcb_block *read_fcb_hamming_13_8(void *rawpage)
 {
 	int i;
 	int bitflips = 0, bit_to_flip;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
