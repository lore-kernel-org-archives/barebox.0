Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipSFY-0005f8-4A
 for barebox@lists.infradead.org; Thu, 09 Jan 2020 07:29:01 +0000
Received: by mail-lj1-x243.google.com with SMTP id y4so6049008ljj.9
 for <barebox@lists.infradead.org>; Wed, 08 Jan 2020 23:28:59 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  9 Jan 2020 10:28:51 +0300
Message-Id: <20200109072855.14154-2-antonynpavlov@gmail.com>
In-Reply-To: <20200109072855.14154-1-antonynpavlov@gmail.com>
References: <20200109072855.14154-1-antonynpavlov@gmail.com>
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
Subject: [RFC 1/5] WIP: MIPS: configure ebase according CONFIG_MMU
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Peter Mamonov <pmamonov@gmail.com>

From: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boot/main_entry.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/mips/boot/main_entry.c b/arch/mips/boot/main_entry.c
index 2c18bc81c3..41350aad18 100644
--- a/arch/mips/boot/main_entry.c
+++ b/arch/mips/boot/main_entry.c
@@ -34,7 +34,11 @@ static void trap_init(void)
 
 	unsigned long ebase;
 
+#ifdef CONFIG_MMU
+	ebase = CKSEG0;
+#else
 	ebase = CKSEG1;
+#endif
 
 	/*
 	 * Copy the generic exception handlers to their final destination.
@@ -56,6 +60,7 @@ static void trap_init(void)
 	/* FIXME: handle tlb */
 	memcpy((void *)(ebase), &except_vec3_generic, 0x80);
 
+	write_c0_ebase(ebase);
 	/* unset BOOT EXCEPTION VECTOR bit */
 	write_c0_status(read_c0_status() & ~ST0_BEV);
 }
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
