Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Yxh-0006vQ-Uy
 for barebox@lists.infradead.org; Fri, 14 Feb 2020 11:16:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Feb 2020 12:16:41 +0100
Message-Id: <20200214111641.6350-4-s.hauer@pengutronix.de>
In-Reply-To: <20200214111641.6350-1-s.hauer@pengutronix.de>
References: <20200214111641.6350-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] copy_file: call discard_range on destination file
To: Barebox List <barebox@lists.infradead.org>

discard the range in the output file we are going to overwrite anyway.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/libfile.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/lib/libfile.c b/lib/libfile.c
index 5a1817e32a..dbeed12ccd 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -367,6 +367,8 @@ int copy_file(const char *src, const char *dst, int verbose)
 		goto out;
 	}
 
+	discard_range(dstfd, srcstat.st_size, 0);
+
 	if (verbose) {
 		if (stat(src, &srcstat) < 0)
 			srcstat.st_size = 0;
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
