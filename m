Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuJE4-0005EM-54
 for barebox@lists.infradead.org; Mon, 27 Aug 2018 15:14:45 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 27 Aug 2018 17:14:28 +0200
Message-Id: <20180827151428.3032-6-mkl@pengutronix.de>
In-Reply-To: <20180827151428.3032-1-mkl@pengutronix.de>
References: <20180827151428.3032-1-mkl@pengutronix.de>
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
Subject: [PATCH 5/5] scripts imx-image: add support for newer versions of "cst"
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Older versions of "cst" want to read the CSF frm STDIN, while newer versions
want to read the CSF from a file. Sadly, the "-i" option doesn't understand
"-i -" to read from STDIN, so we give it "/dev/stdin" instead.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 scripts/imx/imx-image.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 452a544bc3eb..17d504586967 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -558,7 +558,21 @@ static int hab_sign(struct config_data *data)
 		}
 	}
 
-	ret = asprintf(&command, "%s -o %s", cst, csffile);
+	/*
+	 * Older versions of "cst" want to read the CSF frm STDIN,
+	 * while newer versions want to read the CSF from a
+	 * file. Sadly, the "-i" option doesn't understand "-i -" to
+	 * read from STDIN, so we give it "/dev/stdin" instead.
+	 */
+	ret = asprintf(&command,
+		       "if %s | grep 'Input CSF text filename'; then"
+		       "	%s -o %s -i /dev/stdin;"
+		       "else"
+		       "	%s -o %s;"
+		       "fi",
+		       cst,
+		       cst, csffile,
+		       cst, csffile);
 	if (ret < 0)
 		return -ENOMEM;
 
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
