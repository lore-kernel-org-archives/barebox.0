Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abDko-00025f-DR
 for barebox@lists.infradead.org; Wed, 02 Mar 2016 20:52:19 +0000
Received: from antimon.Speedport_W_504V_Typ_A (p54831D4B.dip0.t-ipconnect.de
 [84.131.29.75]) by lynxeye.de (Postfix) with ESMTPA id 2DC2F26C2003
 for <barebox@lists.infradead.org>; Wed,  2 Mar 2016 21:51:25 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed,  2 Mar 2016 21:50:37 +0100
Message-Id: <1456951837-20843-5-git-send-email-dev@lynxeye.de>
In-Reply-To: <1456951837-20843-1-git-send-email-dev@lynxeye.de>
References: <1456951837-20843-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 5/5] ratp: use proper defines for BAREBOX_CMD
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 common/ratp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/ratp.c b/common/ratp.c
index 2fef3cc..edd20dc 100644
--- a/common/ratp.c
+++ b/common/ratp.c
@@ -410,7 +410,7 @@ static int do_ratp_close(int argc, char *argv[])
 
 BAREBOX_CMD_START(ratp_close)
 	.cmd	= do_ratp_close,
-};
+BAREBOX_CMD_END
 
 int barebox_ratp_fs_call(struct ratp_bb_pkt *tx, struct ratp_bb_pkt **rx)
 {
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
