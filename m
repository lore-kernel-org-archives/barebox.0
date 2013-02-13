Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3.mail.ru ([94.100.176.131])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5aiq-0007BL-ME
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 11:41:57 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 13 Feb 2013 15:41:39 +0400
Message-Id: <1360755704-24105-4-git-send-email-shc_work@mail.ru>
In-Reply-To: <1360755704-24105-1-git-send-email-shc_work@mail.ru>
References: <1360755704-24105-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH v2 4/9] ARM: clps711x: Remove unused "start" declaration from
 reset.c
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-clps711x/reset.c |    2 --
 1 files changed, 0 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-clps711x/reset.c b/arch/arm/mach-clps711x/reset.c
index 4a42ef4..67c9c8b 100644
--- a/arch/arm/mach-clps711x/reset.c
+++ b/arch/arm/mach-clps711x/reset.c
@@ -9,8 +9,6 @@
 
 #include <common.h>
 
-extern void start(void);
-
 void __noreturn reset_cpu(unsigned long addr)
 {
 	arch_shutdown();
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
