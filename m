Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SUPBe-0003qJ-E6
 for barebox@lists.infradead.org; Tue, 15 May 2012 21:21:43 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Tue, 15 May 2012 23:21:17 +0200
Message-Id: <1337116877-17657-6-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1337116877-17657-1-git-send-email-robert.jarzmik@free.fr>
References: <1337116877-17657-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 5/5] arch/arm: mioa701 improve barebox_update script
To: barebox@lists.infradead.org

Add a check to verify if /barebox.BIP0 exists, and if so,
unlock the protection area, flash barebox, and reprotect the
area.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/boards/mioa701/env/bin/barebox_update |    5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boards/mioa701/env/bin/barebox_update b/arch/arm/boards/mioa701/env/bin/barebox_update
index 564549b..b544563 100644
--- a/arch/arm/boards/mioa701/env/bin/barebox_update
+++ b/arch/arm/boards/mioa701/env/bin/barebox_update
@@ -3,3 +3,8 @@
 # Page+OOB specific partitions
 addpart /dev/mtdraw0 1081344@3649536(msipl)
 addpart /dev/mtdraw0 270336@3649536(barebox)
+
+if [ -r /barebox.BIP0 ]; then
+	erase /dev/mtdraw0.barebox
+	cp -v /barebox.BIP0 /dev/mtdraw0.barebox
+fi
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
