Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cxTX9-0006w1-3t
 for barebox@lists.infradead.org; Mon, 10 Apr 2017 07:14:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 10 Apr 2017 09:14:13 +0200
Message-Id: <20170410071420.26884-4-s.hauer@pengutronix.de>
In-Reply-To: <20170410071420.26884-1-s.hauer@pengutronix.de>
References: <20170410071420.26884-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/10] lib: implement simple_strtoll
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/kernel.h | 1 +
 lib/strtox.c           | 8 ++++++++
 2 files changed, 9 insertions(+)

diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 945e063f02..b4d2f09081 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -92,6 +92,7 @@ void __noreturn panic(const char *fmt, ...);
 extern unsigned long simple_strtoul(const char *,char **,unsigned int);
 extern long simple_strtol(const char *,char **,unsigned int);
 extern unsigned long long simple_strtoull(const char *,char **,unsigned int);
+extern long long simple_strtoll(const char *,char **,unsigned int);
 
 /*
  * min()/max()/clamp() macros that also do
diff --git a/lib/strtox.c b/lib/strtox.c
index cfe61240cc..ba183c1dd3 100644
--- a/lib/strtox.c
+++ b/lib/strtox.c
@@ -65,3 +65,11 @@ unsigned long long simple_strtoull (const char *cp, char **endp, unsigned int ba
 	return result;
 }
 EXPORT_SYMBOL(simple_strtoull);
+
+long long simple_strtoll(const char *cp,char **endp,unsigned int base)
+{
+	if(*cp=='-')
+		return -simple_strtoull(cp + 1, endp, base);
+	return simple_strtoull(cp, endp, base);
+}
+EXPORT_SYMBOL(simple_strtoll);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
