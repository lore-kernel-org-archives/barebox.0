Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lC6Y0-0007LO-OV
 for barebox@lists.infradead.org; Tue, 16 Feb 2021 20:02:13 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Feb 2021 21:02:07 +0100
Message-Id: <20210216200208.5275-8-a.fatoum@pengutronix.de>
In-Reply-To: <20210216200208.5275-1-a.fatoum@pengutronix.de>
References: <20210216200208.5275-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 7/8] show_progress: change HASHES_PER_LINE from 65 to 64 to
 avoid division
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Decreasing the progress bar length by one won't change visuals much,
but will allow the compiler to optimize a multiplication and a modulo
into bitwise operations.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/show_progress.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/show_progress.c b/lib/show_progress.c
index 259fb7ab190c..d0d7b31303dc 100644
--- a/lib/show_progress.c
+++ b/lib/show_progress.c
@@ -19,7 +19,7 @@
 #include <progress.h>
 #include <linux/math64.h>
 
-#define HASHES_PER_LINE	65
+#define HASHES_PER_LINE	64
 
 static int printed;
 static int progress_max;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
