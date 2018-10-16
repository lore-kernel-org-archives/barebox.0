Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gCVMR-0002lQ-1c
 for barebox@lists.infradead.org; Tue, 16 Oct 2018 19:50:36 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 16 Oct 2018 21:50:21 +0200
Message-Id: <20181016195022.24904-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v1 1/2] ratp: fix compile warnings
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 common/ratp/ratp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/ratp/ratp.c b/common/ratp/ratp.c
index fae9cec5b9..9aea1786d6 100644
--- a/common/ratp/ratp.c
+++ b/common/ratp/ratp.c
@@ -72,7 +72,7 @@ int register_ratp_command(struct ratp_command *cmd)
 }
 EXPORT_SYMBOL(register_ratp_command);
 
-struct ratp_command *find_ratp_request(uint16_t request_id)
+static struct ratp_command *find_ratp_request(uint16_t request_id)
 {
 	struct ratp_command *cmdtp;
 
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
