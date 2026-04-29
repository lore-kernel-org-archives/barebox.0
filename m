Delivery-date: Wed, 29 Apr 2026 12:20:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wI222-0004Cr-2G
	for lore@lore.pengutronix.de;
	Wed, 29 Apr 2026 12:20:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wI222-0005Vz-2r
	for lore@pengutronix.de; Wed, 29 Apr 2026 12:20:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iUWno0ky54WD2gfxMLTULjMNcnU81UyFaOen5ANQj2o=; b=hA49LHbnYzRJ7gPRKgabxF30E4
	Gn+HUKIid+iaZqOmJYBl5VfVzBbyZ/J/BomEawkbrAO6mN1nMC8IW+M2hIj61/rTno6/oAOqHlqlf
	6gzF2FRCDghUdX1pXOVRvN1BWR7Dglz0Q+8S57hU+I3kZJIoAOIV5KuiAsgdWTimmz1VwfcAFfPnh
	eYrkiLCuYXxDk0CZ7ZjdareMIIsY1qeWJm+VdnBb/zEd9r1MjvpzScbn6Y665iaZvByR2UBdL/hcu
	9qSXcn8Jv6K89+q153YxQ83iL+Tv9bE0fXHdRC32bIAl8zC3U5ntPwsqFDjZdeeo0A7kAzUMW0Re6
	jBipdo1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wI21T-00000003ROs-0qrQ;
	Wed, 29 Apr 2026 10:20:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wI21Q-00000003RNn-1MQA
	for barebox@lists.infradead.org;
	Wed, 29 Apr 2026 10:20:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wI21M-000577-F2; Wed, 29 Apr 2026 12:19:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wI21M-007psI-0n;
	Wed, 29 Apr 2026 12:19:56 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wI21M-00000000qpg-0dRu;
	Wed, 29 Apr 2026 12:19:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 29 Apr 2026 12:19:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260429-rkimage-resign-v1-3-1478086c369e@pengutronix.de>
References: <20260429-rkimage-resign-v1-0-1478086c369e@pengutronix.de>
In-Reply-To: <20260429-rkimage-resign-v1-0-1478086c369e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777457996; l=2663;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=LHvcg2gjDNgkM+7hJm58L2o5YLyIlaIOGbuQkjrg7W4=;
 b=a9k2vM9xIFiMbtS+1sgeAEiE5BbjrCDuCapTysnMLIDe+e50jkOpoPU1nZFZpXLg5LkjvlmvQ
 h8PrUMcw+faByAdauXSh4+vZAi3Abl32EzoLPic9BTwWl20HMAnSs68
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260429_032000_374631_6BDF3E4E 
X-CRM114-Status: GOOD (  14.89  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] rkimage: add support for re-signing an existing image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds the -r <file> option to add a signature to an existing image
or to replace the signature in an existing image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/rkimage.c | 60 +++++++++++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 58 insertions(+), 2 deletions(-)

diff --git a/scripts/rkimage.c b/scripts/rkimage.c
index 2dd5fceab3..2dc67f499b 100644
--- a/scripts/rkimage.c
+++ b/scripts/rkimage.c
@@ -394,6 +394,43 @@ static int sign_newidb(struct newidb *idb, const char *path)
 }
 #endif
 
+static int re_sign_image(const char *infile, const char *outfile, const char *key)
+{
+	void *buf;
+	size_t size;
+	int ret;
+
+	if (!key) {
+		fprintf(stderr, "Can't resign without key\n");
+		exit(1);
+	}
+
+	buf = read_file(infile, &size);
+	if (!buf) {
+		fprintf(stderr, "Cannot read %s\n", infile);
+		exit(1);
+	}
+
+	if (!has_magic(buf)) {
+		fprintf(stderr, "%s is not a rockchip image\n", infile);
+		exit(1);
+	}
+
+	ret = sign_newidb(buf, key);
+	if (ret) {
+		fprintf(stderr, "Cannot sign image: %s: %s\n", infile, strerror(-ret));
+		exit(1);
+	}
+
+	ret = write_file(outfile, buf, size);
+	if (ret) {
+		fprintf(stderr, "Cannot write %s: %s\n", outfile, strerror(errno));
+		exit(1);
+	}
+
+	return 0;
+}
+
 struct option cbootcmd[] = {
 	{"help", 0, NULL, 'h'},
 	{"o", 1, NULL, 'o'},
@@ -412,18 +449,20 @@ static void usage(const char *prgname)
 "Options:\n"
 "  -o <file>   Output image to <file>\n"
 "  -k <key>    Sign the image with <key> as PEM file or PKCS#11 uri\n"
+"  -r <file>   Re-sign the image\n"
 "  -h          This help\n",
 	prgname);
 }
 
 int main(int argc, char *argv[])
 {
-	int opt, i, fd;
+	int opt, i, fd, ret;
 	const char *outfile = NULL;
 	const char *key = NULL;
+	const char *re_sign = NULL;
 	struct newidb idb = {};
 
-	while ((opt = getopt_long(argc, argv, "ho:k:", cbootcmd, NULL)) > 0) {
+	while ((opt = getopt_long(argc, argv, "hr:o:k:", cbootcmd, NULL)) > 0) {
 		switch (opt) {
 		case 'o':
 			outfile = optarg;
@@ -431,6 +470,9 @@ int main(int argc, char *argv[])
 		case 'k':
 			key = optarg;
 			break;
+		case 'r':
+			re_sign = optarg;
+			break;
 		case 'h':
 			usage(argv[0]);
 			exit(0);
@@ -438,6 +480,20 @@ int main(int argc, char *argv[])
 	}
 
 	n_code = argc - optind;
+
+	if (re_sign) {
+		if (n_code) {
+			fprintf(stderr, "unhandled non-opt arguments\n");
+			exit(1);
+		}
+
+		ret = re_sign_image(re_sign, outfile, key);
+		if (ret)
+			exit(1);
+		else
+			exit(0);
+	}
+
 	if (!n_code) {
 		usage(argv[0]);
 		exit(1);

-- 
2.47.3



