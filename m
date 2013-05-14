Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcC0H-0001YM-0R
 for barebox@lists.infradead.org; Tue, 14 May 2013 09:58:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 14 May 2013 11:58:16 +0200
Message-Id: <1368525497-4413-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] net: dhcp: Fix return value on ctrl-c
To: barebox@lists.infradead.org

the dhcp command will return with 0 when ctrl-c is pressed. Fix this to
-EINTR instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/dhcp.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 8233ec3..7324c94 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -767,8 +767,10 @@ static int do_dhcp(int argc, char *argv[])
 		goto out1;
 
 	while (dhcp_state != BOUND) {
-		if (ctrlc())
-			break;
+		if (ctrlc()) {
+			ret = -EINTR;
+			goto out1;
+		}
 		if (!retries) {
 			ret = -ETIMEDOUT;
 			goto out1;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
