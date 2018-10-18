Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD2GZ-0003LW-AG
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 06:58:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Oct 2018 08:58:21 +0200
Message-Id: <20181018065827.19973-15-s.hauer@pengutronix.de>
In-Reply-To: <20181018065827.19973-1-s.hauer@pengutronix.de>
References: <20181018065827.19973-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/20] ARM: legacy Linux support: Make locally used functions
 static
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib32/armlinux.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/lib32/armlinux.c b/arch/arm/lib32/armlinux.c
index 2520fe210c..c970f029c5 100644
--- a/arch/arm/lib32/armlinux.c
+++ b/arch/arm/lib32/armlinux.c
@@ -57,7 +57,7 @@ void armlinux_set_architecture(int architecture)
 	armlinux_architecture = architecture;
 }
 
-int armlinux_get_architecture(void)
+static int armlinux_get_architecture(void)
 {
 	getenv_uint("armlinux_architecture", &armlinux_architecture);
 
@@ -70,7 +70,7 @@ void armlinux_set_revision(unsigned int rev)
 	armlinux_system_rev = rev;
 }
 
-unsigned int armlinux_get_revision(void)
+static unsigned int armlinux_get_revision(void)
 {
 	getenv_uint("armlinux_system_rev", &armlinux_system_rev);
 
@@ -83,7 +83,7 @@ void armlinux_set_serial(u64 serial)
 	armlinux_system_serial = serial;
 }
 
-u64 armlinux_get_serial(void)
+static u64 armlinux_get_serial(void)
 {
 	getenv_ull("armlinux_system_serial", &armlinux_system_serial);
 
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
