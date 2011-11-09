Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gy0-f177.google.com ([209.85.160.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ROFrd-00036Y-IE
 for barebox@lists.infradead.org; Wed, 09 Nov 2011 21:39:22 +0000
Received: by gyf1 with SMTP id 1so2605074gyf.36
 for <barebox@lists.infradead.org>; Wed, 09 Nov 2011 13:39:20 -0800 (PST)
From: Lucas De Marchi <lucas.demarchi@profusion.mobi>
Date: Wed,  9 Nov 2011 19:39:55 -0200
Message-Id: <1320874797-14270-3-git-send-email-lucas.demarchi@profusion.mobi>
In-Reply-To: <1320874797-14270-1-git-send-email-lucas.demarchi@profusion.mobi>
References: <1320874797-14270-1-git-send-email-lucas.demarchi@profusion.mobi>
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
Subject: [PATCH 2/4] Add setupmbr to gitignore
To: barebox@lists.infradead.org

Signed-off-by: Lucas De Marchi <lucas.demarchi@profusion.mobi>
---
 scripts/setupmbr/.gitignore |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)
 create mode 100644 scripts/setupmbr/.gitignore

diff --git a/scripts/setupmbr/.gitignore b/scripts/setupmbr/.gitignore
new file mode 100644
index 0000000..a7301f9
--- /dev/null
+++ b/scripts/setupmbr/.gitignore
@@ -0,0 +1 @@
+setupmbr
-- 
1.7.7.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
