Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R9HED-0002PX-9Y
	for barebox@lists.infradead.org; Thu, 29 Sep 2011 14:04:47 +0000
Received: by mail-bw0-f49.google.com with SMTP id t2so845778bka.36
	for <barebox@lists.infradead.org>; Thu, 29 Sep 2011 07:04:44 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 29 Sep 2011 18:04:34 +0400
Message-Id: <1317305076-3334-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1317305076-3334-1-git-send-email-antonynpavlov@gmail.com>
References: <1317305076-3334-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC PATCH 4/6] arm: cpuinfo: Cortex-A9 dirty hack
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/cpu/cpuinfo.c |   10 +++++++++-
 1 files changed, 9 insertions(+), 1 deletions(-)

diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
index e19b8de..25d2c3f 100644
--- a/arch/arm/cpu/cpuinfo.c
+++ b/arch/arm/cpu/cpuinfo.c
@@ -101,7 +101,15 @@ static int do_cpuinfo(struct command *cmdtp, int argc, char *argv[])
 			if (arch > 0 && arch < 8)
 				architecture = post_arm7_archs[arch - 1];
 			else
-				architecture = "Unknown";
+				/*
+				 * see Cortex-A9 Technical Reference Manual:
+				 *  Main ID Register value fixed to 0x411fc090
+				 */
+				if (mainid == 0x411fc090) {
+					architecture = "Cortex-A9";
+				} else {
+					architecture = "Unknown";
+				}
                 }
         }
 
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
