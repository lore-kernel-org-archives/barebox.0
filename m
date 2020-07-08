Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jt4nw-00032v-NE
 for barebox@lists.infradead.org; Wed, 08 Jul 2020 07:47:45 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  8 Jul 2020 09:47:38 +0200
Message-Id: <20200708074739.359-5-a.fatoum@pengutronix.de>
In-Reply-To: <20200708074739.359-1-a.fatoum@pengutronix.de>
References: <20200708074739.359-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/5] commands: dhrystone: remove unneeded and out-of-place
 <stdbool.h>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Our bool definitions come out of <linux/types.h>. <stdbool.h> shouldn't
be used for normal barebox code. We already include <linux/types.h> by
means of <common.h> above. So drop the <stdbool.h>

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/dhrystone.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/commands/dhrystone.c b/commands/dhrystone.c
index c839b0c04351..154910e5d079 100644
--- a/commands/dhrystone.c
+++ b/commands/dhrystone.c
@@ -17,7 +17,6 @@
 #include <clock.h>
 #include <asm-generic/div64.h>
 #include <malloc.h>
-#include <stdbool.h>
 #include <stdio.h> /* for strcpy, strcmp */
 
 enum idents {ident_1, ident_2, ident_3, ident_4, ident_5};
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
