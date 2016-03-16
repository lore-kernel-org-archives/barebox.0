Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x234.google.com ([2607:f8b0:400e:c00::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ag2EI-0007eg-Gb
 for barebox@lists.infradead.org; Wed, 16 Mar 2016 03:34:40 +0000
Received: by mail-pf0-x234.google.com with SMTP id x3so56151999pfb.1
 for <barebox@lists.infradead.org>; Tue, 15 Mar 2016 20:34:18 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 15 Mar 2016 20:33:46 -0700
Message-Id: <1458099232-9050-11-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1458099232-9050-1-git-send-email-andrew.smirnov@gmail.com>
References: <1458099232-9050-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 11/16] ARM: Add errata 845369 workaround
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/include/asm/errata.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/include/asm/errata.h b/arch/arm/include/asm/errata.h
index 9525823..98137b5 100644
--- a/arch/arm/include/asm/errata.h
+++ b/arch/arm/include/asm/errata.h
@@ -77,3 +77,12 @@ static inline void enable_arm_errata_794072_war(void)
 		"mcr	p15, 0, r0, c15, c0, 1\n"
 	);
 }
+
+static inline void enable_arm_errata_845369_war(void)
+{
+	__asm__ __volatile__ (
+		"mrc	p15, 0, r0, c15, c0, 1\n"
+		"orr	r0, r0, #1 << 22\n"
+		"mcr	p15, 0, r0, c15, c0, 1\n"
+	);
+}
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
