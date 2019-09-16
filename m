Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9vtF-0004NQ-4G
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 18:38:26 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Sep 2019 20:38:16 +0200
Message-Id: <20190916183816.20300-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] libfile: null-terminate buffer as expected
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

strim calls strlen on buf internally which is undefined because buf
is not null-terminated. Fix this.

Accessing buf+size is safe, because read_file_2 always allocates a
1 byte bigger buffer than the required (non-null-terminated) size.

This leading to errors can be observed by increasing the alignment of
the buffer allocated in read_file_2. This would lead to

	ERROR: Cannot init param from global: ... : Invalid argument

messages whenever nvvar_load is executed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/libfile.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/lib/libfile.c b/lib/libfile.c
index 172602377fc0..92f8fc2608e5 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -136,6 +136,8 @@ char *read_file_line(const char *fmt, ...)
 	if (!buf)
 		goto out;
 
+	buf[size] = '\0';
+
 	line = strim(buf);
 
 	line = xstrdup(line);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
