Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YLpY2-0003lv-8D
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 08:55:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Feb 2015 09:54:28 +0100
Message-Id: <1423731274-9860-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
References: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/17] cmndlinepart: skip devname if partstr already contains
 it
To: Barebox List <barebox@lists.infradead.org>

When the partition name already starts with "devname." skip this
when adding the partition.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/cmdlinepart.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/lib/cmdlinepart.c b/lib/cmdlinepart.c
index df6f17a..d7d4441 100644
--- a/lib/cmdlinepart.c
+++ b/lib/cmdlinepart.c
@@ -61,7 +61,8 @@ int cmdlinepart_do_parse_one(const char *devname, const char *partstr,
 			return -EINVAL;
 		}
 
-		if (partition_flags & CMDLINEPART_ADD_DEVNAME)
+		if ((partition_flags & CMDLINEPART_ADD_DEVNAME) &&
+				strncmp(devname, partstr, strlen(devname)))
 			sprintf(buf, "%s.", devname);
 		memcpy(buf + strlen(buf), partstr, end - partstr);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
