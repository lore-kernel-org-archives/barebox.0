Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pem92-0003Ol-M9
	for barebox@lists.infradead.org; Mon, 17 Jan 2011 10:17:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Jan 2011 11:16:54 +0100
Message-Id: <1295259421-26338-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295259421-26338-1-git-send-email-s.hauer@pengutronix.de>
References: <1295259421-26338-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/9] blackfin: provide __bss_stop in linker script
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/blackfin/boards/ipe337/barebox.lds.S |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/arch/blackfin/boards/ipe337/barebox.lds.S b/arch/blackfin/boards/ipe337/barebox.lds.S
index 4299b82..571eeb1 100644
--- a/arch/blackfin/boards/ipe337/barebox.lds.S
+++ b/arch/blackfin/boards/ipe337/barebox.lds.S
@@ -82,6 +82,7 @@ SECTIONS
 	. = ALIGN(4);
 	__bss_start = .;
 	.bss : { *(.bss) }
+	__bss_stop = .;
 	_end = .;
 }
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
