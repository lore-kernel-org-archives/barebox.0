Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.reverze.net ([82.161.88.7] helo=fsm.reverze.net)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WSPHb-0000rM-R2
 for barebox@lists.infradead.org; Tue, 25 Mar 2014 11:12:40 +0000
Message-ID: <5331648C.9030506@reverze.net>
Date: Tue, 25 Mar 2014 12:12:12 +0100
From: Michel Stam <michel@reverze.net>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/3] x86: Most systems support a second serial port. Add it.
To: barebox@lists.infradead.org

---
  arch/x86/boards/x86_generic/generic_pc.c | 1 +
  1 file changed, 1 insertion(+)

diff --git a/arch/x86/boards/x86_generic/generic_pc.c 
b/arch/x86/boards/x86_generic/generic_pc.c
index 6152afc..4031a7e 100644
--- a/arch/x86/boards/x86_generic/generic_pc.c
+++ b/arch/x86/boards/x86_generic/generic_pc.c
@@ -150,6 +150,7 @@ static int pc_console_init(void)
   	/* Register the serial port */
  	add_ns16550_device(DEVICE_ID_DYNAMIC, 0x3f8, 8, 0, &serial_plat);
+	add_ns16550_device(DEVICE_ID_DYNAMIC, 0x2f8, 8, 0, &serial_plat);
   	return 0;
  }
-- 
1.8.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
