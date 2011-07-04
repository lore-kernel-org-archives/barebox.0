Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.98.mail-out.ovh.net ([46.105.36.74] helo=98.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qdeza-0004Dc-QI
	for barebox@lists.infradead.org; Mon, 04 Jul 2011 08:59:00 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by 98.mail-out.ovh.net (Postfix) with SMTP id F259C54F080
	for <barebox@lists.infradead.org>;
	Mon,  4 Jul 2011 10:58:29 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  4 Jul 2011 10:43:21 +0200
Message-Id: <1309769001-29221-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] mach-versatile: switch debug_ll.h to GPLv2 or later
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Acked-by: Bahadir Balban <bbalban@b-labs.com>
---
 arch/arm/mach-versatile/include/mach/debug_ll.h |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-versatile/include/mach/debug_ll.h b/arch/arm/mach-versatile/include/mach/debug_ll.h
index 514fcfb..1f6162b 100644
--- a/arch/arm/mach-versatile/include/mach/debug_ll.h
+++ b/arch/arm/mach-versatile/include/mach/debug_ll.h
@@ -4,7 +4,7 @@
  *
  * barebox is free software: you can redistribute it and/or modify
  * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation, either version 3 of the License, or
+ * the Free Software Foundation, either version 2 of the License, or
  * (at your option) any later version.
  *
  * barebox is distributed in the hope that it will be useful,
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
