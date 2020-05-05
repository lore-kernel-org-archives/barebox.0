Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVx9l-0002sj-Tv
 for barebox@lists.infradead.org; Tue, 05 May 2020 12:58:43 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue,  5 May 2020 14:58:36 +0200
Message-Id: <20200505125836.18081-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX: configurable Super Root Key index
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Allow the configuration of the Super Root Key Index, to let the user
select another key if a previous key has been revoked.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig                          | 10 ++++++++++
 arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h |  2 +-
 arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h |  2 +-
 3 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 072c659008..6dd5cb2aca 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -845,6 +845,16 @@ config HAB_CERTS_ENV
 	  CONFIG_HABV4_CSF_CRT_PEM
 	  CONFIG_HABV4_IMG_CRT_PEM
 
+config HABV4_SRK_INDEX
+	depends on HABV4
+	int "SRK index"
+	default 0
+	help
+	  Select the Super Root Key used in the Command Sequence File to sign
+	  the CSF binary. This should only be changed if a previous key was
+	  revoked and another key needs to be used. For HABV4 the Index is in
+	  the range from 0 to 3.
+
 if HABV4 && !HAB_CERTS_ENV
 
 config HABV4_TABLE_BIN
diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
index 5818879609..2961b97b79 100644
--- a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
+++ b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
@@ -19,7 +19,7 @@ hab Engine = CAAM
 hab [Install SRK]
 hab File = CONFIG_HABV4_TABLE_BIN
 hab # SRK index within SRK-Table 0..3
-hab Source index = 0
+hab Source index = CONFIG_HABV4_SRK_INDEX
 
 hab [Install CSFK]
 /* target key index in keystore 1 */
diff --git a/arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h b/arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h
index 34039ee590..9ed6893988 100644
--- a/arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h
+++ b/arch/arm/mach-imx/include/mach/habv4-imx8-gencsf.h
@@ -19,7 +19,7 @@ hab Engine = CAAM
 hab [Install SRK]
 hab File = CONFIG_HABV4_TABLE_BIN
 hab # SRK index within SRK-Table 0..3
-hab Source index = 0
+hab Source index = CONFIG_HABV4_SRK_INDEX
 
 hab [Install CSFK]
 /* target key index in keystore 1 */
-- 
2.26.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
