Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a02:8b8:656::164] (helo=bar.sig21.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SgdFq-0007hM-I0
 for barebox@lists.infradead.org; Mon, 18 Jun 2012 14:48:35 +0000
Received: from p5099b351.dip0.t-ipconnect.de ([80.153.179.81] helo=zzz.local)
 by bar.sig21.net with esmtpsa (TLS1.0:RSA_ARCFOUR_SHA1:16)
 (Exim 4.72) (envelope-from <js@sig21.net>) id 1SgdFM-0008C5-8f
 for barebox@lists.infradead.org; Mon, 18 Jun 2012 16:48:11 +0200
Received: from js by zzz.local with local (Exim 4.80)
 (envelope-from <js@sig21.net>) id 1SgdFL-0002fk-JY
 for barebox@lists.infradead.org; Mon, 18 Jun 2012 16:48:03 +0200
From: Johannes Stezenbach <js@sig21.net>
Date: Mon, 18 Jun 2012 16:47:59 +0200
Message-Id: <1340030880-10062-6-git-send-email-js@sig21.net>
In-Reply-To: <1340030880-10062-1-git-send-email-js@sig21.net>
References: <1340030880-10062-1-git-send-email-js@sig21.net>
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
Subject: [PATCH 5/6] eth: eth MAC addresses are six bytes
To: barebox@lists.infradead.org

Reduce confusion by making clear six bytes are passed,
not a string.

Signed-off-by: Johannes Stezenbach <js@sig21.net>
---
 include/net.h |    8 ++++----
 net/eth.c     |    2 +-
 net/net.c     |    4 ++--
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/include/net.h b/include/net.h
index 08f897e..9152943 100644
--- a/include/net.h
+++ b/include/net.h
@@ -38,8 +38,8 @@ struct eth_device {
 	int  (*send) (struct eth_device*, void *packet, int length);
 	int  (*recv) (struct eth_device*);
 	void (*halt) (struct eth_device*);
-	int  (*get_ethaddr) (struct eth_device*, unsigned char *adr);
-	int  (*set_ethaddr) (struct eth_device*, unsigned char *adr);
+	int  (*get_ethaddr) (struct eth_device*, u8 adr[6]);
+	int  (*set_ethaddr) (struct eth_device*, u8 adr[6]);
 
 	struct eth_device *next;
 	void *priv;
@@ -287,8 +287,8 @@ int string_to_ip(const char *s, IPaddr_t *ip);
 IPaddr_t getenv_ip(const char *name);
 int setenv_ip(const char *name, IPaddr_t ip);
 
-int string_to_ethaddr(const char *str, char *enetaddr);
-void ethaddr_to_string(const unsigned char *enetaddr, char *str);
+int string_to_ethaddr(const char *str, u8 enetaddr[6]);
+void ethaddr_to_string(const u8 enetaddr[6], char *str);
 
 #ifdef CONFIG_NET_RESOLV
 IPaddr_t resolv(char *host);
diff --git a/net/eth.c b/net/eth.c
index 2b492ad..30d347a 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -169,7 +169,7 @@ int eth_rx(void)
 static int eth_set_ethaddr(struct device_d *dev, struct param_d *param, const char *val)
 {
 	struct eth_device *edev = dev_to_edev(dev);
-	char ethaddr[sizeof("xx:xx:xx:xx:xx:xx")];
+	u8 ethaddr[6];
 
 	if (!val)
 		return dev_param_set_generic(dev, param, NULL);
diff --git a/net/net.c b/net/net.c
index c803c48..54d8c25 100644
--- a/net/net.c
+++ b/net/net.c
@@ -159,7 +159,7 @@ void print_IPaddr (IPaddr_t x)
 	puts(ip_to_string(x));
 }
 
-int string_to_ethaddr(const char *str, char *enetaddr)
+int string_to_ethaddr(const char *str, u8 enetaddr[6])
 {
 	int reg;
 	char *e;
@@ -181,7 +181,7 @@ int string_to_ethaddr(const char *str, char *enetaddr)
 	return 0;
 }
 
-void ethaddr_to_string(const unsigned char *enetaddr, char *str)
+void ethaddr_to_string(const u8 enetaddr[6], char *str)
 {
 	sprintf(str, "%02X:%02X:%02X:%02X:%02X:%02X",
 		 enetaddr[0], enetaddr[1], enetaddr[2], enetaddr[3],
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
