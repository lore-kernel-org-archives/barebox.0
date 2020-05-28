Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeI5C-0004Qa-KJ
 for barebox@lists.infradead.org; Thu, 28 May 2020 12:56:27 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu, 28 May 2020 14:56:11 +0200
Message-Id: <20200528125611.11888-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX: enable Master Identifier Unlock
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

By default the HAB locks the Master Identifier (MID) to preconfigured
values. This is not a problem if Linux is running in the secure world,
however when running a secure world operating system such as OP-TEE, the
MID configuration should be done by the secure world operating system.

This causes no regressions for systems using no secure world operating
systems, since no MID value indicates that all normal/secure world
entities can access the peripherals supporting the MID.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h | 2 +-
 arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
index 2961b97b79..17c4d79567 100644
--- a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
+++ b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
@@ -29,7 +29,7 @@ hab [Authenticate CSF]
 
 hab [Unlock]
 hab Engine = CAAM
-hab Features = RNG
+hab Features = RNG, MID
 
 hab [Install Key]
 /* verification key index in key store (0, 2...4) */
diff --git a/arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h b/arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h
index 9ed6893988..a3917cc74f 100644
--- a/arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h
+++ b/arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h
@@ -29,7 +29,7 @@ hab [Authenticate CSF]
 
 hab [Unlock]
 hab Engine = CAAM
-hab Features = RNG
+hab Features = RNG, MID
 
 hab [Install Key]
 /* verification key index in key store (0, 2...4) */
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
