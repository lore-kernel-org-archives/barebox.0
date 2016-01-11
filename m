Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aIQpI-0003KU-OE
 for barebox@lists.infradead.org; Mon, 11 Jan 2016 00:59:18 +0000
Received: by mail-pf0-x244.google.com with SMTP id e65so3009853pfe.0
 for <barebox@lists.infradead.org>; Sun, 10 Jan 2016 16:58:53 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 10 Jan 2016 16:58:11 -0800
Message-Id: <1452473892-19791-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1452473892-19791-1-git-send-email-andrew.smirnov@gmail.com>
References: <1452473892-19791-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/3] ARM: mmu: Add VBAR setup
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code to make sure that normal vector exception table, when it is
used due to unavailability of the high vector table, was not re-mapped
from 0x0 via VBAR by someone else before us.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
Changes since v1 (http://lists.infradead.org/pipermail/barebox/2015-December/025685.html):

	- Check CPU architecture at runtime
---

 arch/arm/cpu/mmu.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 784221c..bc5325f 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -302,6 +302,16 @@ static void vectors_init(void)
 		 * live without being able to catch NULL pointer dereferences
 		 */
 		exc = arm_create_pte(0x0);
+
+		if (cpu_architecture() >= CPU_ARCH_ARMv7) {
+			/*
+			 * ARMv7 CPUs allow to remap low vectors from
+			 * 0x0 to an arbitrary address using VBAR
+			 * register, so let's make sure we have it
+			 * pointing to the correct address
+			 */
+			set_vbar(0x0);
+		}
 	}

 	arm_fixup_vectors();
--
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
