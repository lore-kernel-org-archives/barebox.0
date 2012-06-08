Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp24.mail.ru ([94.100.176.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Scshs-0006aa-As
 for barebox@lists.infradead.org; Fri, 08 Jun 2012 06:30:02 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri,  8 Jun 2012 10:29:52 +0400
Message-Id: <1339136992-4011-1-git-send-email-shc_work@mail.ru>
In-Reply-To: <20120607173506.GK30400@pengutronix.de>
References: <20120607173506.GK30400@pengutronix.de>
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
Subject: [PATCH 1/3] I.MX clko: Using strtol function instead strtoul for
 getting argument for clko source
To: barebox@lists.infradead.org

This change is necessary because valid source argument for the clko command
can be negative.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/clko.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-imx/clko.c b/arch/arm/mach-imx/clko.c
index 0e4fbcc..8e568d2 100644
--- a/arch/arm/mach-imx/clko.c
+++ b/arch/arm/mach-imx/clko.c
@@ -14,7 +14,7 @@ static int do_clko(int argc, char *argv[])
 			div = simple_strtoul(optarg, NULL, 0);
 			break;
 		case 's':
-			src = simple_strtoul(optarg, NULL, 0);
+			src = simple_strtol(optarg, NULL, 0);
 			break;
 		}
 	}
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
