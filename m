Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtRkH-0007Mr-Ki
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 06:40:45 +0000
Received: by mail-pl1-x641.google.com with SMTP id bj4so815802plb.7
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2019 22:40:41 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 11 Feb 2019 22:40:21 -0800
Message-Id: <20190212064022.26154-8-andrew.smirnov@gmail.com>
In-Reply-To: <20190212064022.26154-1-andrew.smirnov@gmail.com>
References: <20190212064022.26154-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 7/8] include: Import min_not_zero() macro from Linux
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Import min_not_zero() macro from Linux used by some kernel code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/linux/kernel.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index ee0b48e08..849c079d0 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -135,6 +135,16 @@ extern long long simple_strtoll(const char *,char **,unsigned int);
 	_max1 > _max2 ? (_max1 > _max3 ? _max1 : _max3) :	\
 		(_max2 > _max3 ? _max2 : _max3); })
 
+/**
+ * min_not_zero - return the minimum that is _not_ zero, unless both are zero
+ * @x: value1
+ * @y: value2
+ */
+#define min_not_zero(x, y) ({			\
+	typeof(x) __x = (x);			\
+	typeof(y) __y = (y);			\
+	__x == 0 ? __y : ((__y == 0) ? __x : min(__x, __y)); })
+
 /**
  * clamp - return a value clamped to a given range with strict typechecking
  * @val: current value
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
