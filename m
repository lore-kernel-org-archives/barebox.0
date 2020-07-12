Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jul51-0005f9-1Y
 for barebox@lists.infradead.org; Sun, 12 Jul 2020 23:08:19 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Jul 2020 01:08:14 +0200
Message-Id: <20200712230814.7207-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200712230814.7207-1-a.fatoum@pengutronix.de>
References: <20200712230814.7207-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/3] scripts: imx-image: throw descriptive error on
 encountering dcdofs
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

With dcdofs renamed to ivtofs, out-of-tree boards will start to fail.
Make the migration easier by suggesting what needs to be changed on
stderr.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/imx/imx.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 4d2f65af9bc8..1fb3922fcf34 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -221,6 +221,12 @@ static int do_ivt_offset(struct config_data *data, int argc, char *argv[])
 	return 0;
 }
 
+static int do_dcdofs_error(struct config_data *data, int argc, char *argv[])
+{
+	fprintf(stderr, "ERROR: misnomer dcdofs has been renamed to ivtofs. imxcfg must be adapted.\n");
+	return -EINVAL;
+}
+
 struct soc_type {
 	char *name;
 	int header_version;
@@ -588,6 +594,9 @@ struct command cmds[] = {
 	}, {
 		.name = "ivtofs",
 		.parse = do_ivt_offset,
+	}, {
+		.name = "dcdofs",
+		.parse = do_dcdofs_error,
 	}, {
 		.name = "soc",
 		.parse = do_soc,
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
