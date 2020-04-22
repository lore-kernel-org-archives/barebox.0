Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRDnU-0006Zw-NY
 for barebox@lists.infradead.org; Wed, 22 Apr 2020 11:44:10 +0000
From: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
Date: Wed, 22 Apr 2020 13:44:07 +0200
Message-Id: <20200422114407.10351-1-a.schwarzkopf@phytec.de>
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
Subject: [PATCH] mach-imx: hab: Unlock CAAM MID for OP-TEE
To: barebox@lists.infradead.org

The current CSF config used by barebox does not allow a successful
bootup of OP-TEE within a closed HAB configuration. As specified
in section 2.1 of the application notes [1], OP-TEE requires that
the "UNLOCK MID" HAB command is present in the CSF file for
this case.

This patch adds the mentioned command if support for OP-TEE is
enabled in the configuration. It's based on the discussion
in [2].

[1] https://www.nxp.com/docs/en/application-note/AN12056.pdf
[2] https://github.com/OP-TEE/optee_os/issues/3609

Signed-off-by: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
---
 arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
index 581887960..0e6c7e2dd 100644
--- a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
+++ b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
@@ -29,7 +29,11 @@ hab [Authenticate CSF]
 
 hab [Unlock]
 hab Engine = CAAM
+#if defined(CONFIG_BOOTM_OPTEE) || defined(CONFIG_PBL_OPTEE)
+hab Features = MID,RNG
+#else
 hab Features = RNG
+#endif
 
 hab [Install Key]
 /* verification key index in key store (0, 2...4) */
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
