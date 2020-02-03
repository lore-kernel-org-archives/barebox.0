Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyX0l-0007fM-Vu
 for barebox@lists.infradead.org; Mon, 03 Feb 2020 08:23:17 +0000
Received: from geraet.fritz.box (unknown [46.183.103.8])
 (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 9C3C8200008
 for <barebox@lists.infradead.org>; Mon,  3 Feb 2020 08:22:23 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon,  3 Feb 2020 09:21:59 +0100
Message-Id: <20200203082159.4455-1-ahmad@a3f.at>
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
Subject: [PATCH] acpi: include missing header in <acpi.h>
To: barebox@lists.infradead.org

acpi_sigcmp defined in the header uses memcmp, but no included headers
pull in memcmp, which can lead to compile errors in new code, depending
on include order. Fix this.

Reported-by: @healytpk, https://github.com/saschahauer/barebox/issues/7
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/acpi.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/acpi.h b/include/acpi.h
index 2d5fd3086a89..b8e73b35df99 100644
--- a/include/acpi.h
+++ b/include/acpi.h
@@ -6,6 +6,7 @@
 #ifndef __ACPI_H_
 #define __ACPI_H_
 
+#include <linux/string.h>
 #include <linux/types.h>
 #include <driver.h>
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
