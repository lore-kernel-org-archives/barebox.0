Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pb9nl-00026U-CF
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 10:44:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Jan 2011 11:43:54 +0100
Message-Id: <1294397044-5008-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1294397044-5008-1-git-send-email-s.hauer@pengutronix.de>
References: <1294397044-5008-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/24] device tree: fix printf compiler warnings
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/ft_build.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/common/ft_build.c b/common/ft_build.c
index 4a7ff31..4c27cfa 100644
--- a/common/ft_build.c
+++ b/common/ft_build.c
@@ -311,7 +311,7 @@ void ft_dump_blob(const void *bphp)
 		}
 
 		if (tag != OF_DT_PROP) {
-			fprintf(stderr, "%*s ** Unknown tag 0x%08x at 0x%x\n",
+			fprintf(stderr, "%*s ** Unknown tag 0x%08x at 0x%p\n",
 				depth * shift, "", tag, --p);
 			break;
 		}
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
