Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z9FJb-0001t3-JC
 for barebox@lists.infradead.org; Sun, 28 Jun 2015 16:20:20 +0000
Received: by lacny3 with SMTP id ny3so100883981lac.3
 for <barebox@lists.infradead.org>; Sun, 28 Jun 2015 09:20:00 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 28 Jun 2015 19:19:40 +0300
Message-Id: <1435508380-21284-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1435508380-21284-1-git-send-email-antonynpavlov@gmail.com>
References: <1435508380-21284-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/3] tftp_recv(): handle opcode field in a more natural way
To: barebox@lists.infradead.org

RFC1350 uses the 'opcode' term for the first 2-bytes field
of TFTP packet. But the U-boot tftp code uses the 'proto' term
for the same thing.

The patch takes back original term and makes opcode calculation
more clear.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 fs/tftp.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index e36c1c8..0de215e 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -256,22 +256,21 @@ static void tftp_timer_reset(struct file_priv *priv)
 static void tftp_recv(struct file_priv *priv,
 			uint8_t *pkt, unsigned len, uint16_t uh_sport)
 {
-	uint16_t proto;
-	uint16_t *s;
+	uint16_t opcode;
 
 	/* according to RFC1350 minimal tftp packet length is 4 bytes */
 	if (len < 4)
 		return;
 
-	len -= 2;
+	opcode = ntohs(*(uint16_t *)pkt);
 
-	s = (uint16_t *)pkt;
-	proto = *s++;
-	pkt = (unsigned char *)s;
+	/* skip tftp opcode 2-byte field */
+	len -= 2;
+	pkt += 2;
 
-	debug("%s: proto 0x%04x\n", __func__, proto);
+	debug("%s: opcode 0x%04x\n", __func__, opcode);
 
-	switch (ntohs(proto)) {
+	switch (opcode) {
 	case TFTP_RRQ:
 	case TFTP_WRQ:
 	default:
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
