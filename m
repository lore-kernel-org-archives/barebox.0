Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x236.google.com ([2607:f8b0:400e:c02::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YsjIq-0000KG-3n
 for barebox@lists.infradead.org; Thu, 14 May 2015 02:55:17 +0000
Received: by pdbqd1 with SMTP id qd1so70290361pdb.2
 for <barebox@lists.infradead.org>; Wed, 13 May 2015 19:54:52 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 13 May 2015 19:54:26 -0700
Message-Id: <1431572067-4038-9-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1431572067-4038-1-git-send-email-andrew.smirnov@gmail.com>
References: <1431572067-4038-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 09/10] pbl: Implement ctrlc() using getc_ll()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 pbl/console.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/pbl/console.c b/pbl/console.c
index a9859ad..e34633f 100644
--- a/pbl/console.c
+++ b/pbl/console.c
@@ -30,12 +30,19 @@ int pr_print(int level, const char *fmt, ...)

 	return i;
 }
-
+#ifdef CONFIG_DEBUG_LL_INPUT
 int ctrlc(void)
 {
+	if (tstc_ll() && getc_ll() == 3)
+		return 1;
 	return 0;
 }
-
+#else
+int ctrlc(void)
+{
+	return 0;
+}
+#endif
 void console_putc(unsigned int ch, char c)
 {
 	putc_ll(c);
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
