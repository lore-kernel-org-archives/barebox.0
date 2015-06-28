Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z9FJb-0001t2-J6
 for barebox@lists.infradead.org; Sun, 28 Jun 2015 16:20:20 +0000
Received: by lacny3 with SMTP id ny3so100883291lac.3
 for <barebox@lists.infradead.org>; Sun, 28 Jun 2015 09:19:57 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 28 Jun 2015 19:19:39 +0300
Message-Id: <1435508380-21284-3-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/3] tftp_recv(): according to RFC1350 minimal tftp packet
 length is 4 bytes
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 fs/tftp.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index d970c60..e36c1c8 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -259,7 +259,8 @@ static void tftp_recv(struct file_priv *priv,
 	uint16_t proto;
 	uint16_t *s;
 
-	if (len < 2)
+	/* according to RFC1350 minimal tftp packet length is 4 bytes */
+	if (len < 4)
 		return;
 
 	len -= 2;
@@ -315,8 +316,6 @@ static void tftp_recv(struct file_priv *priv,
 
 		break;
 	case TFTP_DATA:
-		if (len < 2)
-			return;
 		len -= 2;
 		priv->block = ntohs(*(uint16_t *)pkt);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
