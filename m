Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bn069-0002Eg-Ej
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 09:15:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Sep 2016 11:14:46 +0200
Message-Id: <1474535686-7608-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1474535686-7608-1-git-send-email-s.hauer@pengutronix.de>
References: <1474535686-7608-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] globalvar: introduce globalvar_add_simple_bitmask
To: Barebox List <barebox@lists.infradead.org>

Using the just introduced param_bitmask this adds the corresponding
globalvar convenience function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/globalvar.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/include/globalvar.h b/include/globalvar.h
index 1cd8d21..e503207 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -74,6 +74,20 @@ static inline int globalvar_add_simple_enum(const char *name,
 	return 0;
 }
 
+static inline int globalvar_add_simple_bitmask(const char *name,
+		unsigned long *value, const char * const *names, int max)
+{
+	struct param_d *p;
+
+	p = dev_add_param_bitmask(&global_device, name, NULL, NULL,
+		value, names, max, NULL);
+
+	if (IS_ERR(p))
+		return PTR_ERR(p);
+
+	return 0;
+}
+
 static inline int globalvar_add_simple_ip(const char *name,
 		IPaddr_t *ip)
 {
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
