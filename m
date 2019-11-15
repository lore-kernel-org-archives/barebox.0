Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVVo9-00060G-T8
 for barebox@lists.infradead.org; Fri, 15 Nov 2019 07:14:19 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 15 Nov 2019 08:13:59 +0100
Message-Id: <20191115071359.16798-1-ahmad@a3f.at>
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
Subject: [PATCH] MIPS: ath79: art: fix typo in SPDX-License-Identifier
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

There's no GPL-2. SPDX identifier. Change it to GPL-2.0 instead.

Cc: Oleksij Rempel <linux@rempel-privat.de>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/mips/mach-ath79/art.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/mach-ath79/art.c b/arch/mips/mach-ath79/art.c
index 2a2099e9f561..4a8a3e1fe6b1 100644
--- a/arch/mips/mach-ath79/art.c
+++ b/arch/mips/mach-ath79/art.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (c) 2018 Oleksij Rempel <linux@rempel-privat.de>
  */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
