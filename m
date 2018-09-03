Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwoxv-0002pC-PH
 for barebox@lists.infradead.org; Mon, 03 Sep 2018 13:32:29 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon,  3 Sep 2018 15:32:12 +0200
Message-Id: <20180903133212.17771-1-mkl@pengutronix.de>
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
Subject: [PATCH v2] scripts imx-image: add support for newer versions of "cst"
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Older versions of "cst" want to read the CSF from STDIN, while newer versions
want to read the CSF from a file. Sadly, the "-i" option doesn't understand
"-i -" to read from STDIN, so we give it "/dev/stdin" instead.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 scripts/imx/imx-image.c | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index b241e8c4b68e..ffde8149650f 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -546,7 +546,28 @@ static int hab_sign(struct config_data *data)
 		}
 	}
 
-	ret = asprintf(&command, "%s -o %s", cst, csffile);
+	/*
+	 * Older versions of "cst" want to read the CSF from STDIN,
+	 * while newer versions want to read the CSF from a
+	 * file. Sadly, the "-i" option doesn't understand "-i -" to
+	 * read from STDIN, so we give it "/dev/stdin" instead.
+	 */
+	ret = asprintf(&command,
+		       "%s | grep 'Input CSF text filename'",
+		       cst);
+	if (ret < 0)
+		return -ENOMEM;
+
+	ret = system(command);
+	free(command);
+	if (ret == -1)
+		return -EINVAL;
+	else if (ret == 0)
+		ret = asprintf(&command, "%s -o %s -i /dev/stdin",
+			       cst, csffile);
+	else
+		ret = asprintf(&command, "%s -o %s;",
+			       cst, csffile);
 	if (ret < 0)
 		return -ENOMEM;
 
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
