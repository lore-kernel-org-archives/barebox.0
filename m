Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJC1P-0004MU-GT
 for barebox@lists.infradead.org; Fri, 18 Sep 2020 08:45:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Sep 2020 10:45:25 +0200
Message-Id: <20200918084532.2794-3-s.hauer@pengutronix.de>
In-Reply-To: <20200918084532.2794-1-s.hauer@pengutronix.de>
References: <20200918084532.2794-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/9] Add _RET_IP_ macro
To: Barebox List <barebox@lists.infradead.org>

Use in KAsan code, so added for barebox

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/kernel.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 23c23a73f5..787571a5a0 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -229,6 +229,8 @@ extern long long simple_strtoll(const char *,char **,unsigned int);
 }							\
 )
 
+#define _RET_IP_             (unsigned long)__builtin_return_address(0)
+
 extern const char hex_asc[];
 #define hex_asc_lo(x)	hex_asc[((x) & 0x0f)]
 #define hex_asc_hi(x)	hex_asc[((x) & 0xf0) >> 4]
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
