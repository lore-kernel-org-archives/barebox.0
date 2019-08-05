Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZE9-0004Iw-Ej
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 09:24:27 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon,  5 Aug 2019 11:23:53 +0200
Message-Id: <b1f6bc4810a79f033b5319983817f2bf918fa231.1564997015.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.b9d503ab98014278972f6bd84931035a5ef27967.1564997015.git-series.r.czerwinski@pengutronix.de>
References: <cover.b9d503ab98014278972f6bd84931035a5ef27967.1564997015.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v2 14/16] mach-imx: add gencsf header for i.MX8MQ
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Add the required gencsf header for i.MX8MQ.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h | 59 +++++++++++++++-
 1 file changed, 59 insertions(+)
 create mode 100644 arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h

diff --git a/arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h b/arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h
new file mode 100644
index 0000000..34039ee
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h
@@ -0,0 +1,59 @@
+/*
+ * This snippet can be included from a i.MX flash header configuration
+ * file for generating signed images. The necessary keys/certificates
+ * are expected in these config variables:
+ *
+ * CONFIG_HABV4_TABLE_BIN
+ * CONFIG_HABV4_CSF_CRT_PEM
+ * CONFIG_HABV4_IMG_CRT_PEM
+ */
+#if defined(CONFIG_HABV4) && defined(CONFIG_CPU_64)
+hab [Header]
+hab Version = 4.3
+hab Hash Algorithm = sha256
+hab Engine Configuration = 0
+hab Certificate Format = X509
+hab Signature Format = CMS
+hab Engine = CAAM
+
+hab [Install SRK]
+hab File = CONFIG_HABV4_TABLE_BIN
+hab # SRK index within SRK-Table 0..3
+hab Source index = 0
+
+hab [Install CSFK]
+/* target key index in keystore 1 */
+hab File = CONFIG_HABV4_CSF_CRT_PEM
+
+hab [Authenticate CSF]
+
+hab [Unlock]
+hab Engine = CAAM
+hab Features = RNG
+
+hab [Install Key]
+/* verification key index in key store (0, 2...4) */
+hab Verification index = 0
+/* target key index in key store (2...4) */
+hab Target index = 2
+hab File = CONFIG_HABV4_IMG_CRT_PEM
+
+hab [Authenticate Data]
+/* verification key index in key store (2...4) */
+hab Verification index = 2
+
+hab_blocks
+
+hab_encrypt [Install Secret Key]
+hab_encrypt Verification index = 0
+hab_encrypt Target index = 0
+hab_encrypt_key
+hab_encrypt_key_length 256
+hab_encrypt_blob_address
+
+hab_encrypt [Decrypt Data]
+hab_encrypt Verification index = 0
+hab_encrypt Mac Bytes = 16
+
+hab_encrypt_blocks
+#endif
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
