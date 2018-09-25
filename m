Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g4iFe-0000Ih-K1
 for barebox@lists.infradead.org; Tue, 25 Sep 2018 07:59:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Sep 2018 09:58:47 +0200
Message-Id: <20180925075847.4585-4-s.hauer@pengutronix.de>
In-Reply-To: <20180925075847.4585-1-s.hauer@pengutronix.de>
References: <20180925075847.4585-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] imx-bbu-nand-fcb: Workaround ROM checking fingerprint
 before correcting bitflips
To: Barebox List <barebox@lists.infradead.org>

The FCB block is protected with a ECC code which can correct 1bit errors
and detect 2bit errors. This works fine for all fields except the
fingerprint marker (Containing "FCB") which is used by the ROM to detect
if a FCB is present on that block or not. Here the ROM chooses to check
for the fingerprint *before* running the ECC correction. Thus a FCB is
not used by the ROM anymore when it has a bitflip in the fingerprint
marker. For us this means we have to rewrite the FCB in this case, so
reject the faulty FCB in read_fcb_hamming_13_8() which triggers a
rewrite during the check operation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 15ddf5d7b0..aaa796bc81 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -318,6 +318,16 @@ struct fcb_block *read_fcb_hamming_13_8(void *rawpage)
 	fcb = rawpage + 12;
 	ecc = rawpage + 512 + 12;
 
+	/*
+	 * The ROM does the check for the correct fingerprint before correcting
+	 * bitflips. This means we cannot allow bitflips in the fingerprint and
+	 * bail out with an error if it's not correct.
+	 * This is currently done in the i.MX6qdl path. It needs to be checked if
+	 * the same happens in the BCH encoded variants (i.MX6ul(l)) aswell.
+	 */
+	if (((struct fcb_block *)fcb)->FingerPrint != 0x20424346)
+		return ERR_PTR(-EINVAL);
+
 	for (i = 0; i < 512; i++) {
 		parity = ecc[i];
 		np = calculate_parity_13_8(fcb[i]);
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
