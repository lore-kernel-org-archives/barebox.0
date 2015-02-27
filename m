Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YRQVL-0005PB-TA
 for barebox@lists.infradead.org; Fri, 27 Feb 2015 19:23:20 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id A6C8F26C2002
 for <barebox@lists.infradead.org>; Fri, 27 Feb 2015 20:22:21 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 27 Feb 2015 20:22:15 +0100
Message-Id: <1425064938-11558-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1425064938-11558-1-git-send-email-dev@lynxeye.de>
References: <1425064938-11558-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/5] bbu: make bbu confirm a bit more verbose
To: barebox@lists.infradead.org

It is a lot more user friendly if we give a bit more feedback.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 common/bbu.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/bbu.c b/common/bbu.c
index e31f645..7fb154a 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -65,8 +65,10 @@ int bbu_confirm(struct bbu_data *data)
 
 	key = read_key();
 
-	if (key == 'y')
+	if (key == 'y') {
+		printf("updating barebox...\n");
 		return 0;
+	}
 
 	return -EINTR;
 }
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
