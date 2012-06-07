Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp28.mail.ru ([94.100.176.181])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SccKf-0002PY-KX
 for barebox@lists.infradead.org; Thu, 07 Jun 2012 13:01:04 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu,  7 Jun 2012 17:00:49 +0400
Message-Id: <1339074051-9781-1-git-send-email-shc_work@mail.ru>
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
