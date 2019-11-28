Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMfw-0004LV-Re
 for barebox@lists.infradead.org; Thu, 28 Nov 2019 16:29:53 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 28 Nov 2019 17:29:12 +0100
Message-Id: <20191128162911.25595-1-a.fatoum@pengutronix.de>
In-Reply-To: <20191128162556.23111-1-a.fatoum@pengutronix.de>
References: <20191128162556.23111-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! scripts: imx: report file where error occurred
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

It's called once only, so doesn't matter much. But let's lead by example.
:-)


---
 scripts/imx/imx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 8cefdee6ceec..c52f99112021 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -736,5 +736,6 @@ int parse_config(struct config_data *data, const char *_filename)
 
 cleanup:
 	fclose(f);
+	free(filename)
 	return ret;
 }
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
