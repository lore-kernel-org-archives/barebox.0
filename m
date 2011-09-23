Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R71zb-0004P1-Jr
	for barebox@lists.infradead.org; Fri, 23 Sep 2011 09:24:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Sep 2011 11:24:15 +0200
Message-Id: <1316769860-24549-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1316769860-24549-1-git-send-email-s.hauer@pengutronix.de>
References: <1316769860-24549-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/12] ppc pcm030: remove puts in early init
To: barebox@lists.infradead.org

puts does not work at this stage, so remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/boards/pcm030/pcm030.c |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
index ba59bfe..3c2db4e 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -171,8 +171,7 @@ long int initdram (int board_type)
 		} else {
 			*(vu_long *)MPC5XXX_SDRAM_CS0CFG = 0; /* disabled */
 		}
-	} else
-		puts(RELOC("skipping sdram initialization\n"));
+	}
 
 	/* retrieve size of memory connected to SDRAM CS0 */
 	dramsize = *(vu_long *)MPC5XXX_SDRAM_CS0CFG & 0xFF;
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
