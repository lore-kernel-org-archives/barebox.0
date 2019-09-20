Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBDoN-0001P5-55
 for barebox@lists.infradead.org; Fri, 20 Sep 2019 07:58:41 +0000
Received: from geraet.fritz.box (muedsl-82-207-195-051.citykom.de
 [82.207.195.51]) (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id AC711200006
 for <barebox@lists.infradead.org>; Fri, 20 Sep 2019 07:58:21 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 20 Sep 2019 09:58:11 +0200
Message-Id: <20190920075813.22471-2-ahmad@a3f.at>
In-Reply-To: <20190920075813.22471-1-ahmad@a3f.at>
References: <20190920075813.22471-1-ahmad@a3f.at>
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
Subject: [PATCH v1 2/4] input: set console input name as input
To: barebox@lists.infradead.org

The input console is usually called /dev/cs0 and devinfo doesn't yield
any extra information what this device is about. Rename it for clarity.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/input/input.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/input/input.c b/drivers/input/input.c
index 14e44d137826..1e8f6e178e0d 100644
--- a/drivers/input/input.c
+++ b/drivers/input/input.c
@@ -195,6 +195,8 @@ static int input_init(void)
 	ic->console.tstc = input_console_tstc;
 	ic->console.getc = input_console_getc;
 	ic->console.f_active = CONSOLE_STDIN;
+	ic->console.devid = DEVICE_ID_DYNAMIC;
+	ic->console.devname = "input";
 
 	ic->fifo = kfifo_alloc(32);
 	ic->notifier.notify = input_console_notify;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
