Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo1.mail-out.ovh.net ([178.32.97.215]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tb6KJ-00015J-FL
 for barebox@lists.infradead.org; Wed, 21 Nov 2012 09:10:36 +0000
Received: from mail174.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 97A47FFA230
 for <barebox@lists.infradead.org>; Wed, 21 Nov 2012 10:21:53 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 21 Nov 2012 10:07:46 +0100
Message-Id: <1353488867-24020-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <87boesdjk4.fsf@free.fr>
References: <87boesdjk4.fsf@free.fr>
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
Subject: [PATCH 1/2] splash: init struct allocated the stack to 0
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/splash.c |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/commands/splash.c b/commands/splash.c
index 65dd530..4cc463e 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -19,6 +19,10 @@ static int do_splash(int argc, char *argv[])
 	u32 bg_color = 0x00000000;
 	bool do_bg = false;
 
+	memset(&s, 0, sizeof(s));
+	memset(&sc, 0, sizeof(sc));
+	memset(&info, 0, sizeof(info));
+
 	s.x = -1;
 	s.y = -1;
 	s.width = -1;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
