Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bpvBA-0002DG-45
 for barebox@lists.infradead.org; Fri, 30 Sep 2016 10:36:34 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bpvAm-0004az-AR
 for barebox@lists.infradead.org; Fri, 30 Sep 2016 12:36:08 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 30 Sep 2016 12:36:01 +0200
Message-Id: <20160930103607.15791-4-l.stach@pengutronix.de>
In-Reply-To: <20160930103607.15791-1-l.stach@pengutronix.de>
References: <20160930103607.15791-1-l.stach@pengutronix.de>
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
Subject: [PATCH 04/10] arm64: select ARM_EXCEPTIONS
To: barebox@lists.infradead.org

The current ARM64 lowlevel code needs the exception vector to set
up all the ELs. Select ARM_EXCEPTIONS to make sure this is always
present.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/cpu/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index 450a6d593a4b..9928120cc020 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -80,6 +80,7 @@ config CPU_V8
 	bool
 	select CPU_64v8
 	select CPU_SUPPORTS_64BIT_KERNEL
+	select ARM_EXCEPTIONS
 
 config CPU_XSC3
         bool
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
