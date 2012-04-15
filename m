Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJPTH-0006KR-Uo
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 13:26:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 15 Apr 2012 15:26:16 +0200
Message-Id: <1334496380-4091-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334496380-4091-1-git-send-email-s.hauer@pengutronix.de>
References: <1334496380-4091-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] net: use static string in string_to_ip
To: barebox@lists.infradead.org

Simplify usage of ip_to_string by using a static string.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h   |    2 +-
 lib/parameter.c |    6 +-----
 net/net.c       |   14 ++++++--------
 net/tftp.c      |    3 +--
 4 files changed, 9 insertions(+), 16 deletions(-)

diff --git a/include/net.h b/include/net.h
index 3f2187e..01e4b22 100644
--- a/include/net.h
+++ b/include/net.h
@@ -274,7 +274,7 @@ static inline void net_copy_uint32(uint32_t *to, uint32_t *from)
 }
 
 /* Convert an IP address to a string */
-char *ip_to_string (IPaddr_t x, char *s);
+char *ip_to_string (IPaddr_t x);
 
 /* Convert a string to ip address */
 int string_to_ip(const char *s, IPaddr_t *ip);
diff --git a/lib/parameter.c b/lib/parameter.c
index 379a057..5a7ae1a 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -74,11 +74,7 @@ IPaddr_t dev_get_param_ip(struct device_d *dev, char *name)
 
 int dev_set_param_ip(struct device_d *dev, char *name, IPaddr_t ip)
 {
-	char ipstr[sizeof("xxx.xxx.xxx.xxx")];
-
-	ip_to_string(ip, ipstr);
-
-	return dev_set_param(dev, name, ipstr);
+	return dev_set_param(dev, name, ip_to_string(ip));
 }
 #endif
 
diff --git a/net/net.c b/net/net.c
index 046ddd4..d164992 100644
--- a/net/net.c
+++ b/net/net.c
@@ -85,8 +85,10 @@ uint16_t net_checksum(unsigned char *ptr, int len)
 	return xsum & 0xffff;
 }
 
-char *ip_to_string (IPaddr_t x, char *s)
+char *ip_to_string (IPaddr_t x)
 {
+	static char s[sizeof("xxx.xxx.xxx.xxx")];
+
 	x = ntohl (x);
 	sprintf (s, "%d.%d.%d.%d",
 		 (int) ((x >> 24) & 0xff),
@@ -146,9 +148,9 @@ IPaddr_t getenv_ip_dns(const char *name, int dns)
 
 int setenv_ip(const char *name, IPaddr_t ip)
 {
-	char str[sizeof("xxx.xxx.xxx.xxx")];
+	const char *str;
 
-	ip_to_string(ip, str);
+	str = ip_to_string(ip);
 
 	setenv(name, str);
 
@@ -157,11 +159,7 @@ int setenv_ip(const char *name, IPaddr_t ip)
 
 void print_IPaddr (IPaddr_t x)
 {
-	char tmp[16];
-
-	ip_to_string (x, tmp);
-
-	puts (tmp);
+	puts(ip_to_string(x));
 }
 
 int string_to_ethaddr(const char *str, char *enetaddr)
diff --git a/net/tftp.c b/net/tftp.c
index fc33c94..ca12638 100644
--- a/net/tftp.c
+++ b/net/tftp.c
@@ -273,7 +273,6 @@ static void tftp_handler(void *ctx, char *packet, unsigned len)
 static int do_tftpb(int argc, char *argv[])
 {
 	char *localfile, *remotefile, *file1, *file2;
-	char ip1[16];
 	int opt;
 	struct stat s;
 	unsigned long flags;
@@ -328,7 +327,7 @@ static int do_tftpb(int argc, char *argv[])
 
 	printf("TFTP %s server %s ('%s' -> '%s')\n",
 			tftp_push ? "to" : "from",
-			ip_to_string(net_get_serverip(), ip1),
+			ip_to_string(net_get_serverip()),
 			file1, file2);
 
 	init_progression_bar(tftp_push ? s.st_size : 0);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
