Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1br1sJ-0003j9-Me
 for barebox@lists.infradead.org; Mon, 03 Oct 2016 11:57:41 +0000
Received: by mail-lf0-x242.google.com with SMTP id l131so8809887lfl.0
 for <barebox@lists.infradead.org>; Mon, 03 Oct 2016 04:57:15 -0700 (PDT)
Received: from localhost.localdomain (ppp109-252-109-227.pppoe.spdop.ru.
 [109.252.109.227])
 by smtp.gmail.com with ESMTPSA id 35sm1372624lfp.5.2016.10.03.04.57.12
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Oct 2016 04:57:12 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  3 Oct 2016 14:56:57 +0300
Message-Id: <20161003115657.17953-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] sandbox: Makefile: drop unused SUBARCH stuff
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/sandbox/Makefile | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index a539a90..8155a79 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -31,11 +31,6 @@ else
 CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
 endif
 
-SUBARCH := $(shell uname -m | sed -e s/i.86/i386/ -e s/sun4u/sparc64/ \
-				  -e s/arm.*/arm/ -e s/sa110/arm/ \
-				  -e s/s390x/s390/ -e s/parisc64/parisc/ \
-				  -e s/ppc.*/powerpc/ -e s/mips.*/mips/ )
-
 archprepare: maketools
 
 PHONY += maketools
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
