Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp06.smtpout.orange.fr ([80.12.242.128]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y6lzP-0004sw-T5
 for barebox@lists.infradead.org; Thu, 01 Jan 2015 20:05:00 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu,  1 Jan 2015 21:04:23 +0100
Message-Id: <1420142663-6243-3-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1420142663-6243-1-git-send-email-robert.jarzmik@free.fr>
References: <1420142663-6243-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH] net: smc1111: move print_packet function
To: barebox@lists.infradead.org

Fix for a compiler complaint, because print_packet is needed by a
function before it is declared.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/net/smc91111.c | 75 +++++++++++++++++++++++++-------------------------
 1 file changed, 37 insertions(+), 38 deletions(-)

diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 91bb845..100688c 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -583,6 +583,43 @@ static inline void SMC_SELECT_BANK(struct smc91c111_priv *p, int bank)
 	SMC_outw(p, bank, BANK_SELECT);
 }
 
+#if SMC_DEBUG > 2
+static void print_packet( unsigned char * buf, int length )
+{
+	int i;
+	int remainder;
+	int lines;
+
+	printf("Packet of length %d \n", length );
+
+#if SMC_DEBUG > 3
+	lines = length / 16;
+	remainder = length % 16;
+
+	for ( i = 0; i < lines ; i ++ ) {
+		int cur;
+
+		for ( cur = 0; cur < 8; cur ++ ) {
+			unsigned char a, b;
+
+			a = *(buf ++ );
+			b = *(buf ++ );
+			printf("%02x%02x ", a, b );
+		}
+		printf("\n");
+	}
+	for ( i = 0; i < remainder/2 ; i++ ) {
+		unsigned char a, b;
+
+		a = *(buf ++ );
+		b = *(buf ++ );
+		printf("%02x%02x ", a, b );
+	}
+	printf("\n");
+#endif
+}
+#endif
+
 /* note: timeout in seconds */
 static int poll4int(struct smc91c111_priv *priv, unsigned char mask,
 			int timeout)
@@ -1281,44 +1318,6 @@ static void smc_dump_mii_stream (unsigned char * bits, int size)
 }
 #endif
 
-
-#if SMC_DEBUG > 2
-static void print_packet( unsigned char * buf, int length )
-{
-	int i;
-	int remainder;
-	int lines;
-
-	printf("Packet of length %d \n", length );
-
-#if SMC_DEBUG > 3
-	lines = length / 16;
-	remainder = length % 16;
-
-	for ( i = 0; i < lines ; i ++ ) {
-		int cur;
-
-		for ( cur = 0; cur < 8; cur ++ ) {
-			unsigned char a, b;
-
-			a = *(buf ++ );
-			b = *(buf ++ );
-			printf("%02x%02x ", a, b );
-		}
-		printf("\n");
-	}
-	for ( i = 0; i < remainder/2 ; i++ ) {
-		unsigned char a, b;
-
-		a = *(buf ++ );
-		b = *(buf ++ );
-		printf("%02x%02x ", a, b );
-	}
-	printf("\n");
-#endif
-}
-#endif
-
 static int smc91c111_init_dev(struct eth_device *edev)
 {
 	return 0;
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
