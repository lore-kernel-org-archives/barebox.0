Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22e.google.com ([2a00:1450:4013:c00::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wk814-0001vK-Hr
 for barebox@lists.infradead.org; Tue, 13 May 2014 08:24:51 +0000
Received: by mail-ee0-f46.google.com with SMTP id t10so123982eei.33
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 01:24:31 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 13 May 2014 10:28:54 +0200
Message-Id: <1399969739-10355-15-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
References: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 14/19] commands: let all network commands depend on NET
To: barebox@lists.infradead.org

... by using an "if NET" ... "endif" clause.

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 commands/Kconfig |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index a8f081e..2f24cd5 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1048,6 +1048,7 @@ endmenu
 
 
 
+if NET
 
 menu "Network"
 
@@ -1083,6 +1084,9 @@ config CMD_TFTP
 # end Network commands
 endmenu
 
+# end if NET
+endif
+
 
 
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
