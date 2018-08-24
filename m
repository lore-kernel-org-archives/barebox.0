Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2J1-00028d-AX
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:58:36 +0000
Received: by mail-pf1-x441.google.com with SMTP id j8-v6so3811450pff.6
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:58:25 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:58:12 -0700
Message-Id: <20180824025814.20886-4-andrew.smirnov@gmail.com>
In-Reply-To: <20180824025814.20886-1-andrew.smirnov@gmail.com>
References: <20180824025814.20886-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/5] log2: Use fls_long() in __roundup_pow_of_two()
To: barebox@lists.infradead.org
Cc: andrew.smirnov@gmail.com

Convert __roundup_pow_of_two() to use fls_long() instead of fls() so
the code would be identical to that found in Linux. This fix also
allowed next patch(taken from Linux kernel verbatim) to apply cleanly.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/linux/log2.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/log2.h b/include/linux/log2.h
index 919a22790..c373295f3 100644
--- a/include/linux/log2.h
+++ b/include/linux/log2.h
@@ -54,7 +54,7 @@ bool is_power_of_2(unsigned long n)
 static inline __attribute__((const))
 unsigned long __roundup_pow_of_two(unsigned long n)
 {
-	return 1UL << fls(n - 1);
+	return 1UL << fls_long(n - 1);
 }
 
 /*
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
