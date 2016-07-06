Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKsaD-00046i-Af
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 19:34:05 +0000
Received: from antimon.Speedport_W_504V_Typ_A (p5483101C.dip0.t-ipconnect.de
 [84.131.16.28]) by lynxeye.de (Postfix) with ESMTPA id C04E226C2004
 for <barebox@lists.infradead.org>; Wed,  6 Jul 2016 21:32:58 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed,  6 Jul 2016 21:32:51 +0200
Message-Id: <1467833572-26162-4-git-send-email-dev@lynxeye.de>
In-Reply-To: <1467833572-26162-1-git-send-email-dev@lynxeye.de>
References: <1467833572-26162-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 4/5] ubifs: fix potential NULL ptr dereference
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 fs/ubifs/ubifs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index 8062baa..bc1b521 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -479,7 +479,7 @@ out:
 		dbg_gen("cannot find next direntry, error %d", err);
 
 out_free:
-	if (file->private_data)
+	if (file && file->private_data)
 		kfree(file->private_data);
 	if (file)
 		free(file);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
