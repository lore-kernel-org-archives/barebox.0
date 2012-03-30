Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo3.mail-out.ovh.net ([188.165.43.173]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDZTo-0004jE-Rk
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 10:54:53 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id D16FEFF87A1
 for <barebox@lists.infradead.org>; Fri, 30 Mar 2012 12:55:20 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 30 Mar 2012 12:39:50 +0200
Message-Id: <1333103990-15011-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120330042713.GX444@game.jcrosoft.org>
References: <20120330042713.GX444@game.jcrosoft.org>
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
Subject: [PATCH 7/8 v2] net: env: getenv_ip use resolv
To: barebox@lists.infradead.org

Introduce getenv_ip_dns to be able to do not do the resolv when using it in
resolv for the nameserver (Do not loop).

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
v2:

	replace PATCH 7/8] net: dns: export resolved ip to var resolved_ip

	update git

The following changes since commit 485cee59cf64b5019c5a294074007b93509b83e0:

  Merge branch 'work/imx51-babbage-clk' into next (2012-03-23 21:22:14 +0100)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git net

for you to fetch changes up to 561566cab8df8a5146590a0bd9186fbf7aa05a7c:

  defaultenv: add support of etherboot_file (2012-03-30 18:50:30 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (8):
      net: dhcp: reset env variable before do a dhcp request
      net: dhcp: add support of tftp name server
      net: dhcp: add support of tftp server ip or Etherboot file (option 150)
      net: dhcp: allow to set transmitted client id
      net: dhcp: allow to set transmitted client uuid
      net: dhcp: allow to set transmitted user class
      net: env: getenv_ip use resolv
      defaultenv: add support of etherboot_file

 defaultenv/bin/boot |    4 ++
 include/net.h       |    6 ++-
 net/dhcp.c          |  118 ++++++++++++++++++++++++++++++++++++++++++++-------
 net/dns.c           |    2 +-
 net/net.c           |    9 +++-
 5 files changed, 118 insertions(+), 21 deletions(-)
Best Regards,
J.

 include/net.h |    6 +++++-
 net/dns.c     |    2 +-
 net/net.c     |    9 ++++++---
 3 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/include/net.h b/include/net.h
index 2eec47f..0ebe198 100644
--- a/include/net.h
+++ b/include/net.h
@@ -277,7 +277,11 @@ char *ip_to_string (IPaddr_t x, char *s);
 /* Convert a string to ip address */
 int string_to_ip(const char *s, IPaddr_t *ip);
 
-IPaddr_t getenv_ip(const char *name);
+IPaddr_t getenv_ip_dns(const char *name, int dns);
+static inline IPaddr_t getenv_ip(const char *name)
+{
+	return getenv_ip_dns(name, 0);
+}
 int setenv_ip(const char *name, IPaddr_t ip);
 
 int string_to_ethaddr(const char *str, char *enetaddr);
diff --git a/net/dns.c b/net/dns.c
index 3c7aa5f..fb1178a 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -205,7 +205,7 @@ IPaddr_t resolv(char *host)
 
 	dns_state = STATE_INIT;
 
-	ip = getenv_ip("nameserver");
+	ip = getenv_ip_dns("nameserver", 0);
 	if (!ip)
 		return 0;
 
diff --git a/net/net.c b/net/net.c
index 2752884..39db75e 100644
--- a/net/net.c
+++ b/net/net.c
@@ -127,7 +127,7 @@ int string_to_ip(const char *s, IPaddr_t *ip)
 	return 0;
 }
 
-IPaddr_t getenv_ip(const char *name)
+IPaddr_t getenv_ip_dns(const char *name, int dns)
 {
 	IPaddr_t ip;
 	const char *var = getenv(name);
@@ -135,10 +135,13 @@ IPaddr_t getenv_ip(const char *name)
 	if (!var)
 		return 0;
 
-	if (string_to_ip(var, &ip))
+	if (!string_to_ip(var, &ip))
+		return ip;
+
+	if (!dns)
 		return 0;
 
-	return ip;
+	return resolv((char*)var);
 }
 
 int setenv_ip(const char *name, IPaddr_t ip)
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
