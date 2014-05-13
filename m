Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22a.google.com ([2a00:1450:4013:c00::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wk81A-00020S-1U
 for barebox@lists.infradead.org; Tue, 13 May 2014 08:24:56 +0000
Received: by mail-ee0-f42.google.com with SMTP id d49so128058eek.1
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 01:24:37 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 13 May 2014 10:28:58 +0200
Message-Id: <1399969739-10355-19-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 18/19] commands: move CMD_IFUP to commands/Kconfig
To: barebox@lists.infradead.org

* this places the command into the "Network commands"
  section of Kconfig
* while at it, improve Kconfig documention

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 commands/Kconfig |   17 +++++++++++++++++
 net/Kconfig      |    7 -------
 2 files changed, 17 insertions(+), 7 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index fa2e37a..e105b84 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1077,6 +1077,23 @@ config CMD_HOST
 
 	  Usage: host DESTINATION
 
+config NET_CMD_IFUP
+	bool
+	prompt "ifup"
+	help
+	  Bring up network interfaces based on config files.
+
+	  Usage: ifup [-af] [INTF]
+
+	  Each INTF must have a script /env/network/INTF that set the variables
+	  ip (to 'static' or 'dynamic'), ipaddr, netmask, gateway, serverip
+	  and/or ethaddr. A script /env/network/INTF-discover can contains for
+	  discovering the ethernet device, e.g. 'usb'.
+
+	  Options:
+	          -a      bring up all interfaces
+	          -f      Force. Configure even if ip already set
+
 config CMD_MIITOOL
 	tristate
 	depends on PHYLIB
diff --git a/net/Kconfig b/net/Kconfig
index d09ddee..918d776 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -22,11 +22,4 @@ config NET_IFUP
 	default y
 	bool
 
-config NET_CMD_IFUP
-	bool
-	prompt "ifup support"
-	help
-	  This enables the 'ifup' command which is used to bring up network
-	  interfaces based on config files under /env/network/<ethname>
-
 endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
