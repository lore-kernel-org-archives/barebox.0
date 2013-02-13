Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5fxF-0000Sj-4L
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 17:17:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Feb 2013 18:16:59 +0100
Message-Id: <1360775819-5411-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1360774211-10983-1-git-send-email-maxime.ripard@free-electrons.com>
References: <1360774211-10983-1-git-send-email-maxime.ripard@free-electrons.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Add warning above get_ram_size
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/memsize.c |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/memsize.c b/common/memsize.c
index d149e41..ef6381b 100644
--- a/common/memsize.c
+++ b/common/memsize.c
@@ -33,6 +33,9 @@
  * Check memory range for valid RAM. A simple memory test determines
  * the actually available RAM size between addresses `base' and
  * `base + maxsize'.
+ *
+ * This function modifies the RAM. Do not use it if you're running from
+ * the RAM you are going to detect!
  */
 long get_ram_size(volatile long *base, long maxsize)
 {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
