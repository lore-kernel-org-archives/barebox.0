Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NZJRA-0005qE-Kz
	for barebox@lists.infradead.org; Mon, 25 Jan 2010 07:32:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jan 2010 08:32:29 +0100
Message-Id: <1264404750-11596-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1264404750-11596-11-git-send-email-s.hauer@pengutronix.de>
References: <1264404750-11596-1-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-2-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-3-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-4-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-5-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-6-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-7-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-8-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-9-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-10-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-11-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/12] add armv6 support to the konfig system
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Kconfig |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index cbec793..be01f3d 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -35,6 +35,11 @@ config CPU_ARM926T
 	  Say Y if you want support for the ARM926T processor.
 	  Otherwise, say N.
 
+# ARMv6
+config CPU_V6
+	bool
+	select CPU_32v6
+
 # ARMv7
 config CPU_V7
 	bool
@@ -48,6 +53,9 @@ config CPU_32v4T
 config CPU_32v5
 	bool
 
+config CPU_32v6
+	bool
+
 config CPU_32v7
 	bool
 
-- 
1.6.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
