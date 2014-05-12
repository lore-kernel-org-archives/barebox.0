Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from fritzc.com ([2a01:4f8:d12:2c5::2])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wjsc4-0006s0-Ra
 for barebox@lists.infradead.org; Mon, 12 May 2014 15:58:01 +0000
Received: from anon-35-210.vpn.ipredator.se ([46.246.35.210])
 by fritzc.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.72) (envelope-from <chf@fritzc.com>) id 1Wjsbd-00052r-VJ
 for barebox@lists.infradead.org; Mon, 12 May 2014 17:57:34 +0200
From: Christoph Fritz <chf@fritzc.com>
Date: Mon, 12 May 2014 17:57:32 +0200
Message-ID: <1399910252.4918.8.camel@mars>
Mime-Version: 1.0
Reply-To: chf@fritzc.com
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
Subject: [PATCH] common: fix macro WARN
To: barebox@lists.infradead.org


Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 include/common.h |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/common.h b/include/common.h
index bfd3ce8..e7ab5fe 100644
--- a/include/common.h
+++ b/include/common.h
@@ -72,10 +72,11 @@
 #ifndef WARN
 #define WARN(condition, format...) ({					\
 	int __ret_warn_on = !!(condition);				\
-	if (unlikely(__ret_warn_on))					\
+	if (unlikely(__ret_warn_on)) {					\
 		__WARN();						\
 		puts("WARNING: ");					\
 		printf(format);						\
+	}								\
 	unlikely(__ret_warn_on);					\
 })
 #endif
-- 
1.7.10.4



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
