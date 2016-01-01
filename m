Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22b.google.com ([2607:f8b0:400e:c00::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aEskY-0008Ai-4U
 for barebox@lists.infradead.org; Fri, 01 Jan 2016 05:59:43 +0000
Received: by mail-pf0-x22b.google.com with SMTP id q63so128530638pfb.0
 for <barebox@lists.infradead.org>; Thu, 31 Dec 2015 21:59:21 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 31 Dec 2015 21:58:34 -0800
Message-Id: <1451627918-31967-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1451627918-31967-1-git-send-email-andrew.smirnov@gmail.com>
References: <1451627918-31967-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/6] ARM: mmu: Add VBAR setup
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code to make sure that normal vector exception table, when it is
used due to unavailability of the high vector table, was not re-mapped
from 0x0 via VBAR by someone else before us.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 784221c..e32523b 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -302,6 +302,12 @@ static void vectors_init(void)
 		 * live without being able to catch NULL pointer dereferences
 		 */
 		exc = arm_create_pte(0x0);
+
+		/*
+		  Make sure that vecotrs are not re-mapped from 0x0
+		  via VBAR (no-op on non-ARMv7)
+		 */
+		set_vbar(0x0);
 	}

 	arm_fixup_vectors();
--
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
