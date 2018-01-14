Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eapkL-0005te-Dw
 for barebox@lists.infradead.org; Sun, 14 Jan 2018 21:23:20 +0000
Received: by mail-lf0-x243.google.com with SMTP id h137so11169335lfe.8
 for <barebox@lists.infradead.org>; Sun, 14 Jan 2018 13:23:09 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 15 Jan 2018 00:22:50 +0300
Message-Id: <20180114212252.29682-6-antonynpavlov@gmail.com>
In-Reply-To: <20180114212252.29682-1-antonynpavlov@gmail.com>
References: <20180114212252.29682-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 5/7] include/parseopt.h: add guard macro
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/parseopt.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/parseopt.h b/include/parseopt.h
index abf3be3f35..becc734c2b 100644
--- a/include/parseopt.h
+++ b/include/parseopt.h
@@ -1,2 +1,7 @@
+#ifndef __PARSEOPT_H__
+#define __PARSEOPT_H__
+
 void parseopt_b(const char *options, const char *opt, bool *val);
 void parseopt_hu(const char *options, const char *opt, unsigned short *val);
+
+#endif /* __PARSEOPT_H__ */
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
