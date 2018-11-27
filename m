Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRZ6D-0002A0-QS
 for barebox@lists.infradead.org; Tue, 27 Nov 2018 08:52:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Nov 2018 09:51:49 +0100
Message-Id: <20181127085149.21008-3-s.hauer@pengutronix.de>
In-Reply-To: <20181127085149.21008-1-s.hauer@pengutronix.de>
References: <20181127085149.21008-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] getopt: Add pr_fmt
To: Barebox List <barebox@lists.infradead.org>

To give the debug output more context.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/getopt.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/getopt.c b/lib/getopt.c
index 847830c22b..55852ba133 100644
--- a/lib/getopt.c
+++ b/lib/getopt.c
@@ -13,6 +13,7 @@
  * GNU General Public License for more details.
  *
  */
+#define pr_fmt(fmt) "getopt: " fmt
 
 #include <common.h>
 #include <module.h>
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
