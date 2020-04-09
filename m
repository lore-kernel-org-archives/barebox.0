Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oln040092065011.outbound.protection.outlook.com
 ([40.92.65.11] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYLK-00044z-VJ
 for barebox@lists.infradead.org; Thu, 09 Apr 2020 14:39:48 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
Date: Thu, 9 Apr 2020 14:39:44 +0000
Message-ID: <DB7PR02MB433206871367AB145225BB20ABC10@DB7PR02MB4332.eurprd02.prod.outlook.com>
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
Subject: [PATCH v2] remove-compiler-warning-in-mkimage
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Fixes a warning while compiling zynq_mkimage.c
scripts/zynq_mkimage.c:312:2: warning: ignoring return value of =91fread=92=
, declared with attribute warn_unused_result [-Wunused-result]
fread returns the number bytes read, if it is not equal to st_size some err=
or has happend

Signed-off-by: Michael Graichen <michael.graichen@hotmail.com>
---
 scripts/zynq_mkimage.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/scripts/zynq_mkimage.c b/scripts/zynq_mkimage.c
index 0a1c06947..a211b79c2 100644
--- a/scripts/zynq_mkimage.c
+++ b/scripts/zynq_mkimage.c
@@ -241,7 +241,7 @@ int main(int argc, char *argv[])
 	char *buf;
 	const char *infile =3D NULL, *outfile =3D NULL, *cfgfile =3D NULL;
 	struct stat st;
-	int opt;
+	int opt, ret;

 	prgname =3D argv[0];

@@ -309,7 +309,12 @@ int main(int argc, char *argv[])
 		exit(EXIT_FAILURE);
 	}

-	fread(buf + IMAGE_OFFSET, sizeof(char), st.st_size, ifile);
+	ret =3D fread(buf + IMAGE_OFFSET, sizeof(char), st.st_size, ifile);
+
+	if(ret !=3D st.st_size) {
+		fprintf(stderr, "Error while reading %s\n", infile);
+		exit(EXIT_FAILURE);
+	}

 	add_header(buf, st.st_size);

--
2.17.1
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
