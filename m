Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x235.google.com ([2a00:1450:4010:c07::235])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSnv3-0008Je-08
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 17:16:56 +0000
Received: by mail-lf0-x235.google.com with SMTP id h22so138291701lfk.3
 for <barebox@lists.infradead.org>; Wed, 05 Jul 2017 10:16:34 -0700 (PDT)
From: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Date: Wed,  5 Jul 2017 20:18:07 +0300
Message-Id: <20170705171813.17527-5-andrey.gusakov@cogentembedded.com>
In-Reply-To: <20170705171813.17527-1-andrey.gusakov@cogentembedded.com>
References: <20170705171813.17527-1-andrey.gusakov@cogentembedded.com>
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
Subject: [PATCH v1 04/10] video: tc358767: fix AUXDATAn registers access
 during write
To: barebox@lists.infradead.org
Cc: andrey.gusakov@cogentembedded.com

First four bytes should go to DP0_AUXWDATA0. Due to bug if
len > 4 first four bytes was writen to DP0_AUXWDATA1 and all
data get shifted by 4 bytes. Fix it.

Signed-off-by: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
---
 drivers/video/tc358767.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
index cc6a35e70..4d311c464 100644
--- a/drivers/video/tc358767.c
+++ b/drivers/video/tc358767.c
@@ -388,7 +388,7 @@ static int tc_aux_write(struct tc_data *tc, int reg, char *data, int size)
 		i++;
 		if (((i % 4) == 0) ||
 		    (i == size)) {
-			tc_write(DP0_AUXWDATA(i >> 2), tmp);
+			tc_write(DP0_AUXWDATA((i - 1) >> 2), tmp);
 			tmp = 0;
 		}
 	}
@@ -476,7 +476,7 @@ static int tc_aux_i2c_write(struct tc_data *tc, struct i2c_msg *msg)
 		i++;
 		if (((i % 4) == 0) ||
 		    (i == msg->len)) {
-			tc_write(DP0_AUXWDATA(i >> 2), tmp);
+			tc_write(DP0_AUXWDATA((i - 1) >> 2), tmp);
 			tmp = 0;
 		}
 	}
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
