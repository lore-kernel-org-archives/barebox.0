Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h01j2-0007Py-Aq
 for barebox@lists.infradead.org; Sat, 02 Mar 2019 10:18:38 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Sat,  2 Mar 2019 11:18:13 +0100
Message-Id: <20190302101813.13998-1-m.olbrich@pengutronix.de>
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
Subject: [PATCH] i.MX habv3: add missing includes and make locally used
 function static
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Without this building fails with:

drivers/hab/habv3.c:80:12: error: static declaration of 'imx25_hab_get_status' follows non-static declaration
In file included from drivers/hab/habv3.c:14:
include/hab.h:39:5: note: previous declaration of 'imx25_hab_get_status' was here
drivers/hab/habv3.c:87:1: warning: data definition has no type or storage class
drivers/hab/habv3.c:87:1: warning: type defaults to 'int' in declaration of 'postmmu_initcall' [-Wimplicit-int]
drivers/hab/habv3.c:87:1: warning: parameter names (without types) in function declaration
drivers/hab/habv3.c:80:12: warning: 'imx25_hab_get_status' defined but not used [-Wunused-function]

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 drivers/hab/habv3.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/hab/habv3.c b/drivers/hab/habv3.c
index 47d3caf864ec..f3f94bc44c8c 100644
--- a/drivers/hab/habv3.c
+++ b/drivers/hab/habv3.c
@@ -10,9 +10,11 @@
  */
 #define pr_fmt(fmt) "HABv3: " fmt
 
+#include <init.h>
 #include <common.h>
 #include <hab.h>
 #include <io.h>
+#include <mach/generic.h>
 
 struct hab_status {
 	u8 value;
@@ -55,7 +57,7 @@ static struct hab_status hab_status[] = {
 	{ 0x8e, "algorithm type is either invalid or ortherwise unsupported" },
 };
 
-int imx_habv3_get_status(uint32_t status)
+static int imx_habv3_get_status(uint32_t status)
 {
 	int i;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
