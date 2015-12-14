Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a8RXn-0001LE-Jj
 for barebox@lists.infradead.org; Mon, 14 Dec 2015 11:43:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Dec 2015 12:43:26 +0100
Message-Id: <1450093411-13885-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/7] hwclock command: forward return value of rtc_set_time
To: Barebox List <barebox@lists.infradead.org>

rtc_set_time can fail, forward the error to the user.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/hwclock.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/commands/hwclock.c b/commands/hwclock.c
index 49569a9..3f89cce 100644
--- a/commands/hwclock.c
+++ b/commands/hwclock.c
@@ -124,8 +124,7 @@ static int do_hwclock(int argc, char *argv[])
 		return PTR_ERR(r);
 
 	if (set) {
-		rtc_set_time(r, &stm);
-		return 0;
+		return rtc_set_time(r, &stm);
 	}
 
 	rtc_read_time(r, &tm);
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
