Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFShd-0000Pa-6U
 for barebox@lists.infradead.org; Wed, 04 Apr 2012 16:04:58 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Wed,  4 Apr 2012 18:04:41 +0200
Message-Id: <1333555484-32635-4-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1333555484-32635-1-git-send-email-w.sang@pengutronix.de>
References: <1333555484-32635-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 3/6] net: tftp: check for error when retrying
To: barebox@lists.infradead.org

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 net/tftp.c |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/net/tftp.c b/net/tftp.c
index 45ac7ad..243ad0a 100644
--- a/net/tftp.c
+++ b/net/tftp.c
@@ -345,7 +345,9 @@ static int do_tftpb(int argc, char *argv[])
 		net_poll();
 		if (is_timeout(tftp_timer_start, SECOND)) {
 			show_progress(-1);
-			tftp_send();
+			tftp_err = tftp_send();
+			if (tftp_err)
+				goto out_unreg;
 		}
 	}
 out_unreg:
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
