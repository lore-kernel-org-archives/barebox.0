Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QnpL6-0008Rp-Hu
	for barebox@lists.infradead.org; Mon, 01 Aug 2011 10:03:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  1 Aug 2011 12:03:02 +0200
Message-Id: <1312192983-1423-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1312192983-1423-1-git-send-email-s.hauer@pengutronix.de>
References: <1312192983-1423-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] remove unused DECLARE_GLOBAL_DATA_PTR
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-netx/netx-cm.c |    1 -
 commands/loads.c             |    2 --
 2 files changed, 0 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-netx/netx-cm.c b/arch/arm/mach-netx/netx-cm.c
index 58b2042..ebf9901 100644
--- a/arch/arm/mach-netx/netx-cm.c
+++ b/arch/arm/mach-netx/netx-cm.c
@@ -245,7 +245,6 @@ unsigned short crc16(unsigned short crc, unsigned int data)
 
 int netx_cm_init(void)
 {
-	DECLARE_GLOBAL_DATA_PTR;
 	int i;
 	char buf[MAX_USER_ZONE_SIZE];
 	struct netx_cm_userarea *area;
diff --git a/commands/loads.c b/commands/loads.c
index 6e0dc7f..c6617a4 100644
--- a/commands/loads.c
+++ b/commands/loads.c
@@ -31,8 +31,6 @@
 #include <exports.h>
 #include <xyzModem.h>
 
-DECLARE_GLOBAL_DATA_PTR;
-
 static ulong load_serial (ulong offset);
 static int read_record (char *buf, ulong len);
 static int do_echo = 1;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
