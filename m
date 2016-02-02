Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1aQcG2-0004iX-6j
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:48:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Feb 2016 15:48:07 +0100
Message-Id: <1454424497-7157-25-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
References: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 24/34] scripts: imx-image: Support adding a Super Root Key to
 the image
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig |   7 +++
 scripts/imx/Makefile      |   4 ++
 scripts/imx/imx-image.c   | 130 ++++++++++++++++++++++++++++++++++++++++++++++
 scripts/imx/imx.h         |   1 +
 4 files changed, 142 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index c5ac90f..c631c33 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -66,6 +66,12 @@ config ARCH_IMX_IMXIMAGE
 	help
 	  if enabled the imx-image tool is compiled
 
+config ARCH_IMX_IMXIMAGE_SSL_SUPPORT
+	bool
+	help
+	  This enables SSL support for the imx-image tool. This is required
+	  for created images for HABv3. This adds openssl to the build dependencies
+
 config ARCH_IMX_XLOAD
 	bool
 	depends on ARCH_IMX51
@@ -742,6 +748,7 @@ endif
 config HABV3
 	tristate "HABv3 support"
 	select HAB
+	select ARCH_IMX_IMXIMAGE_SSL_SUPPORT
 	depends on ARCH_IMX25
 	help
 	  High Assurance Boot, as found on i.MX25.
diff --git a/scripts/imx/Makefile b/scripts/imx/Makefile
index 6883659..d9f0c51 100644
--- a/scripts/imx/Makefile
+++ b/scripts/imx/Makefile
@@ -7,6 +7,10 @@ HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0`
 HOSTLOADLIBES_imx-usb-loader  = `pkg-config --libs libusb-1.0`
 
 HOSTCFLAGS_imx-image.o = -I$(srctree)
+ifdef CONFIG_ARCH_IMX_IMXIMAGE_SSL_SUPPORT
+HOSTCFLAGS_imx-image.o += -DIMXIMAGE_SSL_SUPPORT
+HOSTLOADLIBES_imx-image  = `pkg-config --libs openssl`
+endif
 
 imx-usb-loader-objs := imx-usb-loader.o imx.o
 imx-image-objs := imx-image.o imx.o
diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index d804ab4..b627b8c 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -72,6 +72,130 @@ static uint32_t bb_header[] = {
 	0x55555555,
 };
 
+struct hab_rsa_public_key {
+	uint8_t rsa_exponent[4]; /* RSA public exponent */
+	uint32_t rsa_modulus; /* RSA modulus pointer */
+	uint16_t exponent_size; /* Exponent size in bytes */
+	uint16_t modulus_size; /* Modulus size in bytes*/
+	uint8_t init_flag; /* Indicates if key initialized */
+};
+
+#ifdef IMXIMAGE_SSL_SUPPORT
+#define PUBKEY_ALGO_LEN 2048
+
+#include <openssl/x509v3.h>
+#include <openssl/bn.h>
+#include <openssl/asn1.h>
+#include <openssl/x509.h>
+#include <openssl/x509_vfy.h>
+#include <openssl/pem.h>
+#include <openssl/bio.h>
+
+static int extract_key(const char *certfile, uint8_t **modulus, int *modulus_len,
+	uint8_t **exponent, int *exponent_len)
+{
+	char buf[PUBKEY_ALGO_LEN];
+	int pubkey_algonid;
+	const char *sslbuf;
+	EVP_PKEY *pkey;
+	FILE *fp;
+	X509 *cert;
+	RSA *rsa_key;
+
+	fp = fopen(certfile, "r");
+	if (!fp) {
+		fprintf(stderr, "unable to open certfile: %s\n", certfile);
+		return -errno;
+	}
+
+	cert = PEM_read_X509(fp, NULL, NULL, NULL);
+	if (!cert) {
+		fprintf(stderr, "unable to parse certificate in: %s\n", certfile);
+		fclose(fp);
+		return -errno;
+	}
+
+	fclose(fp);
+
+	pubkey_algonid = OBJ_obj2nid(cert->cert_info->key->algor->algorithm);
+	if (pubkey_algonid == NID_undef) {
+		fprintf(stderr, "unable to find specified public key algorithm name.\n");
+		return -EINVAL;
+	}
+
+	if (pubkey_algonid != NID_rsaEncryption)
+		return -EINVAL;
+
+	sslbuf = OBJ_nid2ln(pubkey_algonid);
+	strncpy(buf, sslbuf, PUBKEY_ALGO_LEN);
+
+	pkey = X509_get_pubkey(cert);
+	if (!pkey) {
+		fprintf(stderr, "unable to extract public key from certificate");
+		return -EINVAL;
+	}
+
+	rsa_key = pkey->pkey.rsa;
+	if (!rsa_key) {
+		fprintf(stderr, "unable to extract RSA public key");
+		return -EINVAL;
+	}
+
+	*modulus_len = BN_num_bytes(rsa_key->n);
+	*modulus = malloc(*modulus_len);
+	BN_bn2bin(rsa_key->n, *modulus);
+
+	*exponent_len = BN_num_bytes(rsa_key->e);
+	*exponent = malloc(*exponent_len);
+	BN_bn2bin(rsa_key->e, *exponent);
+
+	EVP_PKEY_free(pkey);
+	X509_free(cert);
+
+	return 0;
+}
+
+static int add_srk(void *buf, int offset, uint32_t loadaddr, const char *srkfile)
+{
+	struct imx_flash_header *hdr = buf + offset;
+	struct hab_rsa_public_key *key = buf + 0xc00;
+	uint8_t *exponent = NULL, *modulus = NULL, *modulus_dest;
+	int exponent_len = 0, modulus_len = 0;
+	int ret;
+
+	hdr->super_root_key = loadaddr + 0xc00;
+
+	key->init_flag = 1;
+	key->exponent_size = htole16(3);
+
+	ret = extract_key(srkfile, &modulus, &modulus_len, &exponent, &exponent_len);
+	if (ret)
+		return ret;
+
+	modulus_dest = (void *)(key + 1);
+
+	memcpy(modulus_dest, modulus, modulus_len);
+
+	key->modulus_size = htole16(modulus_len);
+	key->rsa_modulus = htole32(hdr->super_root_key + sizeof(*key));
+
+	if (exponent_len > 4)
+		return -EINVAL;
+
+	key->exponent_size = exponent_len;
+	memcpy(&key->rsa_exponent, exponent, key->exponent_size);
+
+	return 0;
+}
+#else
+static int add_srk(void *buf, int offset, uint32_t loadaddr, const char *srkfile)
+{
+	fprintf(stderr, "This version of imx-image is compiled without SSL support\n");
+
+	return -EINVAL;
+}
+#endif /* IMXIMAGE_SSL_SUPPORT */
+
 static int add_header_v1(struct config_data *data, void *buf)
 {
 	struct imx_flash_header *hdr;
@@ -430,6 +554,12 @@ int main(int argc, char *argv[])
 	switch (data.header_version) {
 	case 1:
 		add_header_v1(&data, buf);
+		if (data.srkfile) {
+			ret = add_srk(buf, data.image_dcd_offset, data.image_load_addr,
+				      data.srkfile);
+			if (ret)
+				exit(1);
+		}
 		break;
 	case 2:
 		add_header_v2(&data, buf);
diff --git a/scripts/imx/imx.h b/scripts/imx/imx.h
index 6e2f43b..bc7d4ee 100644
--- a/scripts/imx/imx.h
+++ b/scripts/imx/imx.h
@@ -57,6 +57,7 @@ struct config_data {
 	uint32_t image_size;
 	uint32_t load_size;
 	char *outfile;
+	char *srkfile;
 	int header_version;
 	int cpu_type;
 	int (*check)(struct config_data *data, uint32_t cmd, uint32_t addr, uint32_t mask);
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
