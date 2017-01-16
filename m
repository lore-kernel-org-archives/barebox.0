Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT4nh-0008Om-NI
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 10:46:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cT4nK-0005ol-II
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 11:45:46 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 16 Jan 2017 11:45:46 +0100
Message-Id: <20170116104546.21842-3-l.stach@pengutronix.de>
In-Reply-To: <20170116104546.21842-1-l.stach@pengutronix.de>
References: <20170116104546.21842-1-l.stach@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/3] barebox-imd: add dependency on generated/compile.h also
 for PBL version
To: barebox@lists.infradead.org

Barebox-imd is also used in the PBL. As the object file names are different
for the PBL, the explicit dependency on generated/compile.h wasn't there.
This leads to random build failures in parallel builds, or worse the PBL
picking up the old compile.h defines from an earlier build.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Makefile b/common/Makefile
index a36ae5e91f28..869b15a92a9f 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -86,6 +86,7 @@ endif
 # dependencies on generated files need to be listed explicitly
 $(obj)/version.o: include/generated/compile.h
 $(obj)/imd-barebox.o: include/generated/compile.h
+$(obj)/pbl-imd-barebox.o: include/generated/compile.h
 
 # compile.h changes depending on hostname, generation number, etc,
 # so we regenerate it always.
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
