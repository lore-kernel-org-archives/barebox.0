Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vi1eur05olkn2086.outbound.protection.outlook.com
 ([40.92.90.86] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJvK9-0000us-TA
 for barebox@lists.infradead.org; Thu, 02 Apr 2020 08:35:43 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
Date: Thu, 2 Apr 2020 08:19:49 +0000
Message-ID: <DB7PR02MB4332E1A61E6F52DA1555EEB2ABC60@DB7PR02MB4332.eurprd02.prod.outlook.com>
Content-Language: de-DE
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/7] Zedboard fix compiler warning 
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Fixes a warning while compiling zynq_mkimage.c
scripts/zynq_mkimage.c:312:2: warning: ignoring return value of =91fread=92=
, declared with attribute warn_unused_result [-Wunused-result]
fread returns the number bytes read, if it is not equal to st_size some err=
or has happend

diff --git a/scripts/zynq_mkimage.c b/scripts/zynq_mkimage.c
index 0a1c06947..22bd40b7e 100644
--- a/scripts/zynq_mkimage.c
+++ b/scripts/zynq_mkimage.c
@@ -241,7 +241,7 @@ int main(int argc, char *argv[])
 	char *buf;
 	const char *infile =3D NULL, *outfile =3D NULL, *cfgfile =3D NULL;
 	struct stat st;
-	int opt;
+	int opt, ret;
 =

 	prgname =3D argv[0];
 =

@@ -309,7 +309,12 @@ int main(int argc, char *argv[])
 		exit(EXIT_FAILURE);
 	}
 =

-	fread(buf + IMAGE_OFFSET, sizeof(char), st.st_size, ifile);
+	ret =3D fread(buf + IMAGE_OFFSET, sizeof(char), st.st_size, ifile);
+    =

+    if(ret !=3D st.st_size) {
+        fprintf(stderr, "Error while reading %s\n", infile);
+        exit(EXIT_FAILURE);
+    }
 =

 	add_header(buf, st.st_size);
 =

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
