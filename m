Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJJRX-0002gW-6F
 for barebox@lists.infradead.org; Thu, 17 May 2018 13:59:44 +0000
Received: by mail-wm0-x243.google.com with SMTP id f8-v6so9321442wmc.4
 for <barebox@lists.infradead.org>; Thu, 17 May 2018 06:59:33 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Thu, 17 May 2018 16:58:44 +0300
Message-Id: <20180517135858.16202-2-pmamonov@gmail.com>
In-Reply-To: <20180517135858.16202-1-pmamonov@gmail.com>
References: <20180517135858.16202-1-pmamonov@gmail.com>
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
Subject: [RFC PATCH 01/15] FIXME: add t4..t7 definitions for MIPS64
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 arch/mips/include/asm/regdef.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/mips/include/asm/regdef.h b/arch/mips/include/asm/regdef.h
index 7c8ecb6b9..5a31ea022 100644
--- a/arch/mips/include/asm/regdef.h
+++ b/arch/mips/include/asm/regdef.h
@@ -66,12 +66,16 @@
 #define a3	$7
 #define a4	$8	/* arg reg 64 bit; caller saved in 32 bit */
 #define ta0	$8
+#define t4	$8
 #define a5	$9
 #define ta1	$9
+#define t5	$9
 #define a6	$10
 #define ta2	$10
+#define t6	$10
 #define a7	$11
 #define ta3	$11
+#define t7	$11
 #define t0	$12	/* caller saved */
 #define t1	$13
 #define t2	$14
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
