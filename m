Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBJ3t-0004gT-K0
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 05:31:08 +0000
Received: by weyr3 with SMTP id r3so70671wey.36
 for <barebox@lists.infradead.org>; Mon, 10 Sep 2012 22:31:00 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Tue, 11 Sep 2012 07:31:57 +0200
Message-Id: <1347341518-2779-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 1/2] libbb: remove vi tabwidth setting
To: barebox@lists.infradead.org

Remove vi tabwidth and tabstop setting.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 lib/libbb.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/lib/libbb.c b/lib/libbb.c
index 9a0a60b..e0d7481 100644
--- a/lib/libbb.c
+++ b/lib/libbb.c
@@ -1,4 +1,3 @@
-/* vi: set sw=8 ts=8: */
 /*
  * Utility routines.
  *
-- 
1.7.12


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
