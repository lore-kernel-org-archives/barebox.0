Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TXrGS-0007fo-NA
 for barebox@lists.infradead.org; Mon, 12 Nov 2012 10:29:13 +0000
Received: by mail-bk0-f49.google.com with SMTP id j4so2266553bkw.36
 for <barebox@lists.infradead.org>; Mon, 12 Nov 2012 02:29:10 -0800 (PST)
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Mon, 12 Nov 2012 11:29:07 +0100
Message-Id: <1352716147-13515-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: [PATCH] ARM pbl: add generated file zbarebox.map to .gitignore
To: barebox@lists.infradead.org

Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
---
 arch/arm/pbl/.gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/pbl/.gitignore b/arch/arm/pbl/.gitignore
index 3384d8b..d71bb7c 100644
--- a/arch/arm/pbl/.gitignore
+++ b/arch/arm/pbl/.gitignore
@@ -3,3 +3,4 @@ piggy.lzo
 zbarebox
 zbarebox.bin
 zbarebox.lds
+zbarebox.map
-- 
1.8.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
