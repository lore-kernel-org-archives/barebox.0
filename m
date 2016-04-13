Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webbox1416.server-home.net ([77.236.96.61])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqFM6-0002cG-RR
 for barebox@lists.infradead.org; Wed, 13 Apr 2016 07:36:56 +0000
Received: from imapserver.systec-electronic.com (unknown [212.185.67.146])
 by webbox1416.server-home.net (Postfix) with ESMTPA id 4B57827A5D4
 for <barebox@lists.infradead.org>; Wed, 13 Apr 2016 09:36:24 +0200 (CEST)
From: Alexander Stein <alexander.stein@systec-electronic.com>
Date: Wed, 13 Apr 2016 09:36:05 +0200
Message-Id: <1460532965-19072-1-git-send-email-alexander.stein@systec-electronic.com>
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
Subject: [PATCH 1/1] scripts: imx-image: Fix image size in flash header for
 i.MX35
To: barebox@lists.infradead.org
Cc: Daniel Krueger <daniel.krueger@systec-electronic.com>, Alexander Stein <alexander.stein@systec-electronic.com>

The i.MX35 needs additional 0x1000 byte. This quirk moved to the wrong
location during refactoring of imx-image for v2016.03.0.

Fixes: adade597593442 ""scripts: imx: Allow to create signed images")
Signed-off-by: Daniel Krueger <daniel.krueger@systec-electronic.com>
Signed-off-by: Alexander Stein <alexander.stein@systec-electronic.com>
---
 scripts/imx/imx.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 82ef97f..ca65389 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -221,6 +221,10 @@ static int do_soc(struct config_data *data, int argc, char *argv[])
 		if (!strcmp(socs[i].name, soc)) {
 			data->header_version = socs[i].header_version;
 			data->cpu_type = socs[i].cpu_type;
+
+			if (data->cpu_type == 35)
+				data->load_size += HEADER_LEN;
+
 			return 0;
 		}
 	}
@@ -230,9 +234,6 @@ static int do_soc(struct config_data *data, int argc, char *argv[])
 		fprintf(stderr, "%s ", socs[i].name);
 	fprintf(stderr, "\n");
 
-	if (data->cpu_type == 35)
-		data->load_size += HEADER_LEN;
-
 	return -EINVAL;
 }
 
-- 
2.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
