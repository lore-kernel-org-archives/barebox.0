Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1REMjy-0004kl-30
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 14:58:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Oct 2011 16:58:28 +0200
Message-Id: <1318517909-21205-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1318517909-21205-1-git-send-email-s.hauer@pengutronix.de>
References: <1318517909-21205-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: use arm_system_rev from environment
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/armlinux.c |   11 +++++++++++
 1 files changed, 11 insertions(+), 0 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index e3a74f4..f636f12 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -198,7 +198,14 @@ void armlinux_set_architecture(int architecture)
 
 void armlinux_set_revision(unsigned int rev)
 {
+	char *revstr = asprintf("%d", rev);
+
 	system_rev = rev;
+
+	setenv("arm_system_rev", revstr);
+	export("arm_system_rev");
+
+	kfree(revstr);
 }
 
 void armlinux_set_serial(u64 serial)
@@ -209,6 +216,10 @@ void armlinux_set_serial(u64 serial)
 void start_linux(void *adr, int swap, struct image_data *data)
 {
 	void (*kernel)(int zero, int arch, void *params) = adr;
+	const char *revstr = getenv("arm_system_rev");
+
+	if (revstr)
+		system_rev = simple_strtoul(revstr, NULL, 0);
 
 	setup_tags(data, swap);
 
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
