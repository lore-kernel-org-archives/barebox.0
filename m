Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAZd-0007dp-Vx
 for barebox@lists.infradead.org; Tue, 18 Jun 2019 09:38:43 +0000
Received: by mail-lf1-x136.google.com with SMTP id a9so8733649lff.7
 for <barebox@lists.infradead.org>; Tue, 18 Jun 2019 02:38:40 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 18 Jun 2019 12:38:32 +0300
Message-Id: <20190618093833.2005-2-antonynpavlov@gmail.com>
In-Reply-To: <20190618093833.2005-1-antonynpavlov@gmail.com>
References: <20190618093833.2005-1-antonynpavlov@gmail.com>
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
Subject: [RFC 1/2] MIPS: lib/Makefile: fix whitespaces
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/lib/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
index c600f4b533..bdcaef91a7 100644
--- a/arch/mips/lib/Makefile
+++ b/arch/mips/lib/Makefile
@@ -4,8 +4,8 @@ obj-y += cpu-probe.o
 lwl-y += end.o
 obj-y += traps.o
 obj-y += genex.o
-obj-y  += reloc.o
-obj-y += sections.o 
+obj-y += reloc.o
+obj-y += sections.o
 obj-y += shutdown.o
 obj-y += dma-default.o
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
