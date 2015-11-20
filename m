Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x229.google.com ([2a00:1450:400c:c09::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zzk8X-0005v0-8s
 for barebox@lists.infradead.org; Fri, 20 Nov 2015 11:45:54 +0000
Received: by wmww144 with SMTP id w144so17598553wmw.0
 for <barebox@lists.infradead.org>; Fri, 20 Nov 2015 03:45:31 -0800 (PST)
Received: from gmail.com (p578a7230.dip0.t-ipconnect.de. [87.138.114.48])
 by smtp.gmail.com with ESMTPSA id wh10sm12267582wjb.45.2015.11.20.03.45.30
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Fri, 20 Nov 2015 03:45:30 -0800 (PST)
Date: Fri, 20 Nov 2015 12:45:25 +0100
From: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
Message-ID: <20151120114515.GA3731@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH] readline: Kconfig: fix typo
To: barebox@lists.infradead.org

Signed-off-by: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
---
 commands/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 0853ffd..1743670 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1493,9 +1493,9 @@ config CMD_SPLASH
 
 config CMD_READLINE
 	tristate
-	prompt "Readline"
+	prompt "readline"
 	help
-	  rompt for user input
+	  Prompt for user input
 
 	  Usage: readline PROMPT VAR
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
