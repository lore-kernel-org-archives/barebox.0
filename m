Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NZJRA-0005qA-Hg
	for barebox@lists.infradead.org; Mon, 25 Jan 2010 07:32:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jan 2010 08:32:26 +0100
Message-Id: <1264404750-11596-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1264404750-11596-8-git-send-email-s.hauer@pengutronix.de>
References: <1264404750-11596-1-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-2-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-3-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-4-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-5-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-6-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-7-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/12] pcm043: initialize cpufreq to 532MHz
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 board/pcm043/lowlevel_init.S |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/board/pcm043/lowlevel_init.S b/board/pcm043/lowlevel_init.S
index 9df064c..abbc72c 100644
--- a/board/pcm043/lowlevel_init.S
+++ b/board/pcm043/lowlevel_init.S
@@ -96,7 +96,7 @@ board_init_lowlevel:
 	ldr r2, CCM_CCMR_W
 	str r2, [r0, #CCM_CCMR]
 
-	ldr r3, MPCTL_PARAM_399_W  /* consumer path*/
+	ldr r3, MPCTL_PARAM_532_W  /* consumer path*/
 
 	/*Set MPLL , arm clock and ahb clock*/
 	str r3, [r0, #CCM_MPCTL]
-- 
1.6.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
