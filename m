Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dIEuS-0002it-1s
 for barebox@lists.infradead.org; Tue, 06 Jun 2017 13:52:38 +0000
Received: by mail-wm0-x243.google.com with SMTP id x3so7799100wme.0
 for <barebox@lists.infradead.org>; Tue, 06 Jun 2017 06:52:15 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Tue,  6 Jun 2017 15:52:10 +0200
Message-Id: <20170606135210.28846-1-aleksander@aleksander.es>
In-Reply-To: <20170606053910.bqxqopk7ceirgldp@pengutronix.de>
References: <20170606053910.bqxqopk7ceirgldp@pengutronix.de>
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
Subject: [PATCH] ratp: only allow bidirectional consoles
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

Ignore requests to switch to RATP mode in input-only or output-only
consoles.

This actually also avoids segfaulting later on:

    #0  0x0000000000000000 in ?? ()
    #1  0x000000000040b2a4 in console_send (r=<optimized out>, pkt=0x7fffffffd8ec, len=4) at common/ratp.c:102
    #2  0x000000000042ab99 in ratp_behaviour_a (pkt=0x7ffff7298780, ri=0x7ffff72766d0) at lib/ratp.c:530
    #3  ratp_state_machine (pkt=0x7ffff7298780, ri=0x7ffff72766d0) at lib/ratp.c:1384
    #4  ratp_poll (ratp=0x7ffff7277ed8) at lib/ratp.c:1561
    #5  0x000000000042b2ab in ratp_establish (ratp=ratp@entry=0x7ffff7277ed8, active=active@entry=false, timeout_ms=timeout_ms@entry=100) at lib/ratp.c:1645
    #6  0x000000000040b888 in barebox_ratp (cdev=cdev@entry=0x7ffff7212bd0) at common/ratp.c:470
    #7  0x00000000004046c3 in getc_raw () at common/console.c:416
    ...

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 common/ratp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/ratp.c b/common/ratp.c
index e879e2b3c..7be86d49a 100644
--- a/common/ratp.c
+++ b/common/ratp.c
@@ -443,6 +443,9 @@ int barebox_ratp(struct console_device *cdev)
 	struct ratp_ctx *ctx;
 	struct ratp *ratp;

+	if (!cdev->getc || !cdev->putc)
+		return -EINVAL;
+
 	if (ratp_command_ctx) {
 		ctx = ratp_command_ctx;
 	} else {
--
2.12.2

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
