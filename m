Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f43.google.com ([74.125.83.43])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U8SLX-0001Kd-SJ
 for barebox@lists.infradead.org; Thu, 21 Feb 2013 09:21:44 +0000
Received: by mail-ee0-f43.google.com with SMTP id c50so4720848eek.16
 for <barebox@lists.infradead.org>; Thu, 21 Feb 2013 01:21:42 -0800 (PST)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Thu, 21 Feb 2013 10:21:14 +0100
Message-Id: <1361438474-28008-2-git-send-email-h.feurstein@gmail.com>
In-Reply-To: <1361438474-28008-1-git-send-email-h.feurstein@gmail.com>
References: <1361438474-28008-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH 2/2] net: imx_fec: fix RMII support for i.MX6
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 drivers/net/fec_imx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 6dfb093..80fb2ce 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -309,7 +309,7 @@ static int fec_init(struct eth_device *dev)
 	}
 
 	if (fec->xcv_type == RMII) {
-		if (fec_is_imx28(fec)) {
+		if (fec_is_imx28(fec) || fec_is_imx6(fec)) {
 			rcntl |= FEC_R_CNTRL_RMII_MODE | FEC_R_CNTRL_FCE |
 				FEC_R_CNTRL_NO_LGTH_CHECK;
 		} else {
-- 
1.8.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
