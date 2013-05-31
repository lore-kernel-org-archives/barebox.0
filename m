Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og118.obsmtp.com ([64.18.0.160])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiSbh-0006qQ-AS
 for barebox@lists.infradead.org; Fri, 31 May 2013 16:55:13 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Fri, 31 May 2013 17:54:04 +0100
Message-Id: <1370019244-7873-9-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1370019244-7873-1-git-send-email-renaud.barbier@ge.com>
References: <1370019244-7873-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 8/8] ppc 8xxx: remove interactive debugging
To: barebox@lists.infradead.org

The interactive debugging of SPD data and memory controller settings
are removed as the code supporting them is not included and for lack
of early uart initialization.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/ddr-8xxx/ddr.h  |    2 --
 arch/ppc/ddr-8xxx/main.c |   10 +---------
 2 files changed, 1 insertions(+), 11 deletions(-)

diff --git a/arch/ppc/ddr-8xxx/ddr.h b/arch/ppc/ddr-8xxx/ddr.h
index 4dd55fc..714f5e3 100644
--- a/arch/ppc/ddr-8xxx/ddr.h
+++ b/arch/ppc/ddr-8xxx/ddr.h
@@ -86,8 +86,6 @@ void fsl_ddr_set_lawbar(
 		unsigned int memctl_interleaved,
 		unsigned int ctrl_num);
 
-int fsl_ddr_interactive_env_var_exists(void);
-unsigned long long fsl_ddr_interactive(fsl_ddr_info_t *pinfo, int var_is_set);
 void fsl_ddr_get_spd(generic_spd_eeprom_t *ctrl_dimms_spd,
 			   unsigned int ctrl_num);
 
diff --git a/arch/ppc/ddr-8xxx/main.c b/arch/ppc/ddr-8xxx/main.c
index 7a8636d..c71d4b3 100644
--- a/arch/ppc/ddr-8xxx/main.c
+++ b/arch/ppc/ddr-8xxx/main.c
@@ -535,15 +535,7 @@ phys_size_t fsl_ddr_sdram(void)
 	/* Reset info structure. */
 	memset(&info, 0, sizeof(fsl_ddr_info_t));
 
-	/* Compute it once normally. */
-#ifdef CONFIG_FSL_DDR_INTERACTIVE
-	if (tstc() && (getc() == 'd')) {	/* we got a key press of 'd' */
-		total_memory = fsl_ddr_interactive(&info, 0);
-	} else if (fsl_ddr_interactive_env_var_exists()) {
-		total_memory = fsl_ddr_interactive(&info, 1);
-	} else
-#endif
-		total_memory = fsl_ddr_compute(&info, STEP_GET_SPD, 0);
+	total_memory = fsl_ddr_compute(&info, STEP_GET_SPD, 0);
 
 	/* setup 3-way interleaving before enabling DDRC */
 	if (info.memctl_opts[0].memctl_interleaving) {
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
