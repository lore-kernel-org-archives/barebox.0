Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TRcwm-0008PQ-HB
 for barebox@lists.infradead.org; Fri, 26 Oct 2012 05:59:09 +0000
Received: by mail-la0-f49.google.com with SMTP id z14so2151175lag.36
 for <barebox@lists.infradead.org>; Thu, 25 Oct 2012 22:59:08 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 26 Oct 2012 09:58:55 +0400
Message-Id: <1351231135-17324-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1351231135-17324-1-git-send-email-antonynpavlov@gmail.com>
References: <1351231135-17324-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC 3/3] readline: fix the 'new blank line at EOF' typo
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 lib/readline.c |    1 -
 1 file changed, 1 deletion(-)

diff --git a/lib/readline.c b/lib/readline.c
index 37566c3..3fb620e 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -353,4 +353,3 @@ int readline(const char *prompt, char *buf, int len)
 
 	return rc < 0 ? rc : len;
 }
-
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
