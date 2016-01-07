Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x236.google.com ([2607:f8b0:400e:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aH3ux-00077F-Hb
 for barebox@lists.infradead.org; Thu, 07 Jan 2016 06:19:28 +0000
Received: by mail-pa0-x236.google.com with SMTP id qh10so94436pab.2
 for <barebox@lists.infradead.org>; Wed, 06 Jan 2016 22:19:07 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Jan 2016 22:17:35 -0800
Message-Id: <1452147455-26524-6-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1452147455-26524-1-git-send-email-andrew.smirnov@gmail.com>
References: <1452147455-26524-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 6/6] commands/hwclock: Check return value of rtc_read_time()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

It is possible for rtc_read_time() to fill struct rtc_time it returns
with invalid values, so we have to check for its return value before
using returned time.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/hwclock.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/commands/hwclock.c b/commands/hwclock.c
index 7633132..737df11 100644
--- a/commands/hwclock.c
+++ b/commands/hwclock.c
@@ -93,11 +93,12 @@ static int do_hwclock(int argc, char *argv[])
 	char *env_name = NULL;
 	int opt;
 	int set = 0;
+	int ret;
 	int ntp_to_hw = 0;
 	char *ntpserver = NULL;

 	while ((opt = getopt(argc, argv, "f:s:e:n:")) > 0) {
-		int ret;
+

 		switch (opt) {
 		case 'f':
@@ -151,7 +152,9 @@ static int do_hwclock(int argc, char *argv[])
 		return rtc_set_time(r, &stm);
 	}

-	rtc_read_time(r, &tm);
+	ret = rtc_read_time(r, &tm);
+	if (ret < 0)
+		return ret;

 	if (env_name) {
 		unsigned long time;
--
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
