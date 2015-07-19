Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x234.google.com ([2a00:1450:4010:c04::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGusN-0007lg-0o
 for barebox@lists.infradead.org; Sun, 19 Jul 2015 20:07:55 +0000
Received: by lbbqi7 with SMTP id qi7so4571812lbb.3
 for <barebox@lists.infradead.org>; Sun, 19 Jul 2015 13:07:33 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 19 Jul 2015 23:07:09 +0300
Message-Id: <1437336443-8076-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1437336443-8076-1-git-send-email-antonynpavlov@gmail.com>
References: <1437336443-8076-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v2 02/16] fs/tftp.c: drop unused server_port variable
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 fs/tftp.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 0de215e..56d4365 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -75,7 +75,6 @@ struct file_priv {
 	uint16_t last_block;
 	int state;
 	int err;
-	int server_port;
 	const char *filename;
 	int filesize;
 	uint64_t resend_timeout;
@@ -299,7 +298,6 @@ static void tftp_recv(struct file_priv *priv,
 
 	case TFTP_OACK:
 		tftp_parse_oack(priv, pkt, len);
-		priv->server_port = ntohs(uh_sport);
 		priv->tftp_con->udp->uh_dport = uh_sport;
 
 		if (priv->push) {
@@ -322,7 +320,6 @@ static void tftp_recv(struct file_priv *priv,
 			/* first block received */
 			priv->state = STATE_RDATA;
 			priv->tftp_con->udp->uh_dport = uh_sport;
-			priv->server_port = ntohs(uh_sport);
 			priv->last_block = 0;
 
 			if (priv->block != 1) {	/* Assertion */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
