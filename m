Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBh7e-0007rA-QD
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 08:49:19 +0000
Received: from tellur.localdomain (p57B5E0F6.dip0.t-ipconnect.de
 [87.181.224.246]) by lynxeye.de (Postfix) with ESMTPA id B5D1418B4263
 for <barebox@lists.infradead.org>; Fri,  7 Feb 2014 09:47:36 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri,  7 Feb 2014 09:48:49 +0100
Message-Id: <1391762936-2747-8-git-send-email-dev@lynxeye.de>
In-Reply-To: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
References: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 07/14] comamnds: uimage: actually print error message
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 commands/uimage.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/uimage.c b/commands/uimage.c
index 345e496..4b0ed4d 100644
--- a/commands/uimage.c
+++ b/commands/uimage.c
@@ -63,8 +63,8 @@ static int do_uimage(int argc, char *argv[])
 		printf("verifying data crc... ");
 		ret = uimage_verify(handle);
 		if (ret) {
-			goto err;
 			printf("Bad Data CRC\n");
+			goto err;
 		} else {
 			printf("ok\n");
 		}
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
