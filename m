Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1akpMp-00065Y-Ul
 for barebox@lists.infradead.org; Tue, 29 Mar 2016 08:51:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Mar 2016 10:50:49 +0200
Message-Id: <1459241454-21155-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1459241454-21155-1-git-send-email-s.hauer@pengutronix.de>
References: <1459241454-21155-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/7] imd: string returned from imd_string_data should be const
To: Barebox List <barebox@lists.infradead.org>

imd_string_data() returns the original data, so the string should be
const.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imd.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/common/imd.c b/common/imd.c
index acaa23f..9bd1563 100644
--- a/common/imd.c
+++ b/common/imd.c
@@ -193,7 +193,7 @@ static uint32_t imd_name_to_type(const char *name)
 	return IMD_TYPE_INVALID;
 }
 
-static char *imd_string_data(struct imd_header *imd, int index)
+static const char *imd_string_data(struct imd_header *imd, int index)
 {
 	int i, total = 0, l = 0;
 	int len = imd_read_length(imd);
@@ -306,10 +306,15 @@ int imd_command(int argc, char *argv[])
 		}
 
 		if (imd_is_string(type)) {
-			if (strno >= 0)
-				str = imd_string_data(imd, strno);
-			else
+			if (strno >= 0) {
+				const char *s = imd_string_data(imd, strno);
+				if (s)
+					str = strdup(s);
+				else
+					str = NULL;
+			} else {
 				str = imd_concat_strings(imd);
+			}
 
 			if (!str)
 				return -ENODATA;
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
