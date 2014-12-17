Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y1CJS-0001zY-1u
 for barebox@lists.infradead.org; Wed, 17 Dec 2014 10:58:38 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1Y1CJB-0007VZ-8N
 for barebox@lists.infradead.org; Wed, 17 Dec 2014 11:58:21 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 17 Dec 2014 11:58:21 +0100
Message-Id: <1418813901-24229-3-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1418813901-24229-1-git-send-email-l.stach@pengutronix.de>
References: <1418813901-24229-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 3/3] arm: do section garbage collection also with modules
 enabled
To: barebox@lists.infradead.org

A lot of the arm build (especially PBL stuff) depends on section
garbage collection to be enabled. If it is disabled a lot of targets fail
to link properly. If module support is enabled garbage collection was
disabled on the premise that we throw away too many function which may be
needed in later modules.

The proper way to keep the functions around for use in modules, which
already works, is to annotate them with EXPORT_SYMBOL.

As module support is still marked as experimental I think it's reasonable
to expect users to make sure all symbols that are used by their modules
are properly annotated.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/Makefile | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index cf81c9c08332..193f731e9039 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -105,11 +105,9 @@ TEXT_BASE = $(CONFIG_TEXT_BASE)
 
 CPPFLAGS += -DTEXT_BASE=$(TEXT_BASE)
 
-ifndef CONFIG_MODULES
 # Add cleanup flags
 CPPFLAGS += -fdata-sections -ffunction-sections
 LDFLAGS_barebox += -static --gc-sections
-endif
 
 ifdef CONFIG_RELOCATABLE
 LDFLAGS_barebox += -pie
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
