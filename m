Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ab9KB-0003D9-J7
 for barebox@lists.infradead.org; Wed, 02 Mar 2016 16:08:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  2 Mar 2016 17:07:43 +0100
Message-Id: <1456934863-30990-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1456934863-30990-1-git-send-email-s.hauer@pengutronix.de>
References: <1456934863-30990-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/7] ARM: i.MX: karo-tx6: add pr_fmt
To: Barebox List <barebox@lists.infradead.org>

Add pr_fmt to print tx6 specific messages with a proper prefix.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx6x/board.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/karo-tx6x/board.c b/arch/arm/boards/karo-tx6x/board.c
index 6cb4689..31c1c3a 100644
--- a/arch/arm/boards/karo-tx6x/board.c
+++ b/arch/arm/boards/karo-tx6x/board.c
@@ -16,6 +16,8 @@
  * GNU General Public License for more details.
  */
 
+#define pr_fmt(fmt) "Karo-tx6: " fmt
+
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
