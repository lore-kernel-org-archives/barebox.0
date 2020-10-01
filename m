Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNtFb-00024H-Ei
 for barebox@lists.infradead.org; Thu, 01 Oct 2020 07:43:41 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  1 Oct 2020 09:43:37 +0200
Message-Id: <20201001074337.23430-5-a.fatoum@pengutronix.de>
In-Reply-To: <20201001074337.23430-1-a.fatoum@pengutronix.de>
References: <20201001074337.23430-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 5/5] scripts: kwbimage: fix wrong return values on some errors
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Coccinelle detected that bootfrom and nandeccmode are unsigned, but
check to be less than zero. Both are only used to hold the return value
of functions that either return up to 0xFF on success and a negative
error code otherwise. It's thus safe to make them signed. Do so.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/kwbimage.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
index 26eb07fa81bc..75c9e9cda9c2 100644
--- a/scripts/kwbimage.c
+++ b/scripts/kwbimage.c
@@ -186,7 +186,7 @@ struct image_cfg_element {
 	} type;
 	union {
 		unsigned int version;
-		unsigned int bootfrom;
+		int bootfrom;
 		struct {
 			char *file;
 			unsigned int args[BINARY_MAX_ARGS];
@@ -197,7 +197,7 @@ struct image_cfg_element {
 		unsigned int execaddr;
 		unsigned int nandblksz;
 		unsigned int nandbadblklocation;
-		unsigned int nandeccmode;
+		int nandeccmode;
 		unsigned int nandpagesz;
 		struct ext_hdr_v0_reg regdata;
 	};
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
