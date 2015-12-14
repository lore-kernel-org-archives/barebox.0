Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a8RXn-0001LH-Jn
 for barebox@lists.infradead.org; Mon, 14 Dec 2015 11:43:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Dec 2015 12:43:27 +0100
Message-Id: <1450093411-13885-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1450093411-13885-1-git-send-email-s.hauer@pengutronix.de>
References: <1450093411-13885-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/7] rtc: Check time for validity before passing it to the rtc
 driver
To: Barebox List <barebox@lists.infradead.org>

So that rtc drivers do not get invalid times.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/rtc/class.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/rtc/class.c b/drivers/rtc/class.c
index 356707b..e87f5f7 100644
--- a/drivers/rtc/class.c
+++ b/drivers/rtc/class.c
@@ -46,6 +46,9 @@ EXPORT_SYMBOL(rtc_read_time);
 
 int rtc_set_time(struct rtc_device *rtc, struct rtc_time *tm)
 {
+	if (rtc_valid_tm(tm))
+		return -EINVAL;
+
 	return rtc->ops->set_time(rtc, tm);
 }
 EXPORT_SYMBOL(rtc_set_time);
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
