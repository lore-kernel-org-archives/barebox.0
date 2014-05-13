Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22b.google.com ([2a00:1450:4013:c00::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wk814-0001wJ-DX
 for barebox@lists.infradead.org; Tue, 13 May 2014 08:24:51 +0000
Received: by mail-ee0-f43.google.com with SMTP id d17so128005eek.2
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 01:24:32 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 13 May 2014 10:28:55 +0200
Message-Id: <1399969739-10355-16-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 15/19] commands: introduce CMD_HOST
To: barebox@lists.infradead.org

... because NET_RESOLV can be used alone to turn on the functionality
of resolv().

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 commands/Kconfig |    9 +++++++++
 net/dns.c        |    3 ++-
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 2f24cd5..966d5fd 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1052,6 +1052,15 @@ if NET
 
 menu "Network"
 
+config CMD_HOST
+	tristate
+	select NET_RESOLV
+	prompt "host"
+	help
+	  Resolv a hostname.
+
+	  Usage: host DESTINATION
+
 config CMD_MIITOOL
 	tristate
 	depends on PHYLIB
diff --git a/net/dns.c b/net/dns.c
index 4506baf..0a8ce8b 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -241,6 +241,7 @@ IPaddr_t resolv(char *host)
 	return dns_ip;
 }
 
+#ifdef CONFIG_CMD_HOST
 static int do_host(int argc, char *argv[])
 {
 	IPaddr_t ip;
@@ -266,4 +267,4 @@ BAREBOX_CMD_START(host)
 	BAREBOX_CMD_OPTS("HOSTNAME")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 BAREBOX_CMD_END
-
+#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
