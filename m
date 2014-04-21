Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WcEdG-0000Xq-2l
 for barebox@lists.infradead.org; Mon, 21 Apr 2014 13:51:39 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p54831C5A.dip0.t-ipconnect.de [84.131.28.90])
 by lynxeye.de (Postfix) with ESMTPA id 5D66D18B4247
 for <barebox@lists.infradead.org>; Mon, 21 Apr 2014 15:50:40 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 21 Apr 2014 15:50:35 +0200
Message-Id: <1398088235-13933-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1398088235-13933-1-git-send-email-dev@lynxeye.de>
References: <1398088235-13933-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 2/2] commands: uimage: remove redundant error message
To: barebox@lists.infradead.org

uimage_verify already prints an error message if the CRC
is wrong. Romove the never reached redundant message in
the caller.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 commands/uimage.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/commands/uimage.c b/commands/uimage.c
index 345e49600c81..bdc74448d9e5 100644
--- a/commands/uimage.c
+++ b/commands/uimage.c
@@ -62,12 +62,9 @@ static int do_uimage(int argc, char *argv[])
 	if (verify) {
 		printf("verifying data crc... ");
 		ret = uimage_verify(handle);
-		if (ret) {
+		if (ret)
 			goto err;
-			printf("Bad Data CRC\n");
-		} else {
-			printf("ok\n");
-		}
+		printf("ok\n");
 	}
 
 	if (extract) {
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
