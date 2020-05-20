Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbKKq-0004mU-Bc
 for barebox@lists.infradead.org; Wed, 20 May 2020 08:44:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 May 2020 10:44:02 +0200
Message-Id: <20200520084402.24585-2-s.hauer@pengutronix.de>
In-Reply-To: <20200520084402.24585-1-s.hauer@pengutronix.de>
References: <20200520084402.24585-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ratp: Test if console exists before using it
To: Barebox List <barebox@lists.infradead.org>

Consoles can be unregistered, this happens for example when barebox
implements the barebox serial USB gadget. Before using the console
we have to explicitly test if the pointer is still valid each time.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/ratp/ratp.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/common/ratp/ratp.c b/common/ratp/ratp.c
index ca751a30eb..def1ceb020 100644
--- a/common/ratp/ratp.c
+++ b/common/ratp/ratp.c
@@ -97,11 +97,24 @@ static int init_ratp_command_list(void)
 
 late_initcall(init_ratp_command_list);
 
+static bool console_exists(struct console_device *cdev)
+{
+	struct console_device *cs;
+
+	list_for_each_entry(cs, &console_list, list)
+		if (cs == cdev)
+			return true;
+	return false;
+}
+
 static int console_recv(struct ratp *r, uint8_t *data)
 {
 	struct ratp_ctx *ctx = container_of(r, struct ratp_ctx, ratp);
 	struct console_device *cdev = ctx->cdev;
 
+	if (!console_exists(cdev))
+		return -ENODEV;
+
 	if (ctx->have_synch) {
 		ctx->have_synch = 0;
 		*data = 0x01;
@@ -123,6 +136,9 @@ static int console_send(struct ratp *r, void *pkt, int len)
 	const uint8_t *buf = pkt;
 	int i;
 
+	if (!console_exists(cdev))
+		return -ENODEV;
+
 	for (i = 0; i < len; i++)
 		cdev->putc(cdev, buf[i]);
 
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
