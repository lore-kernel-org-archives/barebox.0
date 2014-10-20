Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XgHPa-0007pt-0w
 for barebox@lists.infradead.org; Mon, 20 Oct 2014 18:10:30 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id 2CB7A26C2004
 for <barebox@lists.infradead.org>; Mon, 20 Oct 2014 20:09:12 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 20 Oct 2014 20:15:59 +0200
Message-Id: <1413828961-12605-5-git-send-email-dev@lynxeye.de>
In-Reply-To: <1413828961-12605-1-git-send-email-dev@lynxeye.de>
References: <1413828961-12605-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 5/7] sha2: fix invalid length check
To: barebox@lists.infradead.org

length is unsigned an thus can never be <0.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 crypto/sha2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/crypto/sha2.c b/crypto/sha2.c
index 26162e8..e495313 100644
--- a/crypto/sha2.c
+++ b/crypto/sha2.c
@@ -208,7 +208,7 @@ static void sha2_update(sha2_context * ctx, const uint8_t * input, size_t length
 	size_t fill;
 	uint32_t left;
 
-	if (length <= 0)
+	if (length = 0)
 		return;
 
 	left = ctx->total[0] & 0x3F;
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
