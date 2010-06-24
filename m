Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORmRu-0005v4-JJ
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 13:26:35 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Thu, 24 Jun 2010 16:26:16 +0300
Message-Id: <ed04cb68b50f6426c0f154e489cf6436877e4b7a.1277385845.git.baruch@tkos.co.il>
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
Subject: [PATCH net-pu] tftp: fix get
To: barebox@lists.infradead.org

With this patch tftp start requesting block 0 instead of 1. This fixes
tftp get on i.MX25 based board with tftpd-hpa server.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---

tftp push isn't working though. I get:

error frame: 0x83705178 0x00000882

from the fec driver. I'll investigate this if I have time.

 net/tftp.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/net/tftp.c b/net/tftp.c
index c0d3278..14d9b5e 100644
--- a/net/tftp.c
+++ b/net/tftp.c
@@ -320,7 +320,7 @@ static int do_tftpb(struct command *cmdtp, int argc, char *argv[])
 
 	tftp_timer_start = get_time_ns();
 	tftp_state = tftp_put ? STATE_WRQ : STATE_RRQ;
-	tftp_block = 1;
+	tftp_block = 0;
 
 	tftp_err = tftp_send();
 	if (tftp_err)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
