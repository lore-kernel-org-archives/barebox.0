Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2d67-000892-S2
 for barebox@lists.infradead.org; Tue, 27 Aug 2019 15:09:31 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 12857200017
 for <barebox@lists.infradead.org>; Tue, 27 Aug 2019 15:09:25 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 27 Aug 2019 17:09:13 +0200
Message-Id: <20190827150918.16247-6-ahmad@a3f.at>
In-Reply-To: <20190827150918.16247-1-ahmad@a3f.at>
References: <20190827150918.16247-1-ahmad@a3f.at>
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
Subject: [PATCH v2 05/10] lib: add HAVE_EFFICIENT_UNALIGNED_ACCESS Kconfig
 option
To: barebox@lists.infradead.org

The LZO, LZ4, DEFLATE implementations in lib/ already check against
CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS. Define this symbol defaulting to
0. This makes porting Kconfig symbols depending on it easier and in future,
we could select it from different arches.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 lib/Kconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/lib/Kconfig b/lib/Kconfig
index b64885ac93ef..6216fdd6bac0 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -171,4 +171,7 @@ config ARCH_HAS_STACK_DUMP
 config ARCH_HAS_DATA_ABORT_MASK
 	bool
 
+config HAVE_EFFICIENT_UNALIGNED_ACCESS
+	bool
+
 endmenu
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
