Delivery-date: Tue, 09 Apr 2024 07:58:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ru4V6-003yTF-0d
	for lore@lore.pengutronix.de;
	Tue, 09 Apr 2024 07:58:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ru4V5-0008PT-83
	for lore@pengutronix.de; Tue, 09 Apr 2024 07:58:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8DCUQmk6aaISRVPd65FVAuVE8mmkdfraGvEaK/f5px0=; b=1XjH8BW2le+9ReKfJmBVK3Em4S
	Pj6lMB/0ErBpOnPhalfj+CHUQ7MeosZTmmC8pV8uuonQh805pyHsc0Uc2gzo0cqkWjxoRqodol0Q6
	AkkAUPbuMlIhyzcj2RpS+i6eP6MfUJF/X4QZ2Wm1kx8QNtYydEd9+u/STxPy18JXx1oXtJDHw8yPG
	yQpqQbyexEJP4+E4MhVNQ6lO8MlRPe5ScU4R1AxSNiHkK7L9+mPN4ywDLIXVndW+GnHpQKOYgAoqY
	97aGKM3uwoVujRhFlWYvSdN/pjZHJz/SSfTAzW25gtdcsA9R/Quz+pBJbo0ya0P6XzJaxFy9oHLUL
	Fhj5SVtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ru4UP-00000000UCm-2URB;
	Tue, 09 Apr 2024 05:57:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ru4UL-00000000UBN-24dH
	for barebox@lists.infradead.org;
	Tue, 09 Apr 2024 05:57:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1ru4UH-000874-GH
	for barebox@lists.infradead.org; Tue, 09 Apr 2024 07:57:41 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 09 Apr 2024 07:57:20 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240409-v2024-03-0-topic-arasan-fixes-v1-1-abdd8501b311@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAL/YFGYC/x2MQQqAMAzAviI9W+hUcPoV8TBn1V6mrCKC7O9Ob
 wmBPKAchRX64oHIl6jsIYspC/CbCyujzNmhoqqhhixeHyHVSHjuh3h00akLuMjNiqbrvJ2oNTR
 7yI8j8h/yYhhTegEVtjuobwAAAA==
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=7956;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=tvwV+TnTcJ4FenDtkJGaEuFSAPNCdypbqU133O3hGWQ=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGNJEbpwz375rtYXbUbM0+xTRiBV7TjAl5xTHr7CaLFRW7
 BXcdCixo5SFQYyLQVZMkSVy7SGNzcKfdb4cP88AM4eVCWQIAxenAEzkaRTDf4+ZW3MzL324c3qm
 9w9t93v+Hzr93+o+l7h3Sfr6JfvULjOGf9pH8tzCdB9xH8lcaXpA1Vbqw9nbsn/r7rwo3er+6Uz
 HCVYA
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_225745_752277_F4F66679 
X-CRM114-Status: GOOD (  15.77  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: arasan: rework register_sdclk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of guarding this at compile time, always call register_sdclk
with the correct clk_ops, like in linux.

Currently only ZynqMP and default arasan ops are supported.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Instead of guarding the zynqmp functions at compile time and introducing
possible run-time problems, copy more of the linux driver and add
soc-specific clk_ops.

As the zynqmp_pm_* functions are only defined for ARCH_ZYNQMP we need to
add stub function definitions for other platforms that might use the
arasan-sdhci driver.
---
 drivers/mci/arasan-sdhci.c            | 53 ++++++++++++++++++++++++-----------
 include/mach/zynqmp/firmware-zynqmp.h | 11 ++++++++
 2 files changed, 47 insertions(+), 17 deletions(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index b7dd98049f..5187dbe468 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -65,6 +65,8 @@ struct arasan_sdhci_host {
 	struct mci_host		mci;
 	struct sdhci		sdhci;
 	unsigned int		quirks; /* Arasan deviations from spec */
+	const struct clk_ops	*sdcardclk_ops;
+	const struct clk_ops	*sampleclk_ops;
 	struct sdhci_arasan_clk_data clk_data;
 /* Controller does not have CD wired and will not function normally without */
 #define SDHCI_ARASAN_QUIRK_FORCE_CDTEST		BIT(0)
@@ -352,7 +354,7 @@ static void arasan_dt_read_clk_phase(struct device *dev,
  *
  * Return: 0 on success and error value on error
  */
-static int arasan_zynqmp_sampleclk_set_phase(struct clk_hw *hw, int degrees)
+static __maybe_unused int arasan_zynqmp_sampleclk_set_phase(struct clk_hw *hw, int degrees)
 {
 	struct sdhci_arasan_clk_data *clk_data =
 		container_of(hw, struct sdhci_arasan_clk_data, sampleclk_hw);
@@ -402,8 +404,8 @@ static int arasan_zynqmp_sampleclk_set_phase(struct clk_hw *hw, int degrees)
 	return ret;
 }
 
-static unsigned long arasan_zynqmp_sampleclk_recalc_rate(struct clk_hw *hw,
-							 unsigned long parent_rate)
+static unsigned long arasan_sampleclk_recalc_rate(struct clk_hw *hw,
+						  unsigned long parent_rate)
 {
 	struct sdhci_arasan_clk_data *clk_data =
 		container_of(hw, struct sdhci_arasan_clk_data, sdcardclk_hw);
@@ -424,7 +426,7 @@ static unsigned long arasan_zynqmp_sampleclk_recalc_rate(struct clk_hw *hw,
  *
  * Return: 0 on success and error value on error
  */
-static int arasan_zynqmp_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
+static __maybe_unused int arasan_zynqmp_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
 {
 	struct sdhci_arasan_clk_data *clk_data =
 		container_of(hw, struct sdhci_arasan_clk_data, sdcardclk_hw);
@@ -474,8 +476,8 @@ static int arasan_zynqmp_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
 	return ret;
 }
 
-static unsigned long arasan_zynqmp_sdcardclk_recalc_rate(struct clk_hw *hw,
-							 unsigned long parent_rate)
+static unsigned long arasan_sdcardclk_recalc_rate(struct clk_hw *hw,
+						  unsigned long parent_rate)
 {
 	struct sdhci_arasan_clk_data *clk_data =
 		container_of(hw, struct sdhci_arasan_clk_data, sdcardclk_hw);
@@ -486,13 +488,21 @@ static unsigned long arasan_zynqmp_sdcardclk_recalc_rate(struct clk_hw *hw,
 	return host->actual_clock;
 };
 
-static const struct clk_ops clk_sampleclk_ops = {
-	.recalc_rate = arasan_zynqmp_sampleclk_recalc_rate,
+static const struct clk_ops arasan_sampleclk_ops = {
+	.recalc_rate = arasan_sampleclk_recalc_rate,
+};
+
+static const struct clk_ops arasan_sdcardclk_ops = {
+	.recalc_rate = arasan_sdcardclk_recalc_rate,
+};
+
+static const struct clk_ops zynqmp_sampleclk_ops = {
+	.recalc_rate = arasan_sampleclk_recalc_rate,
 	.set_phase = arasan_zynqmp_sampleclk_set_phase,
 };
 
-static const struct clk_ops clk_sdcardclk_ops = {
-	.recalc_rate = arasan_zynqmp_sdcardclk_recalc_rate,
+static const struct clk_ops zynqmp_sdcardclk_ops = {
+	.recalc_rate = arasan_sdcardclk_recalc_rate,
 	.set_phase = arasan_zynqmp_sdcardclk_set_phase,
 };
 
@@ -510,10 +520,11 @@ static const struct clk_ops clk_sdcardclk_ops = {
  * Return: 0 on success and error value on error
  */
 static int
-arasan_sdhci_register_sampleclk(struct sdhci_arasan_clk_data *clk_data,
+arasan_sdhci_register_sampleclk(struct arasan_sdhci_host *sdhci_arasan,
 				struct clk *clk_xin,
 				struct device *dev)
 {
+	struct sdhci_arasan_clk_data *clk_data = &sdhci_arasan->clk_data;
 	struct device_node *np = dev->of_node;
 	struct clk_init_data sampleclk_init = {};
 	const char *clk_name;
@@ -529,7 +540,7 @@ arasan_sdhci_register_sampleclk(struct sdhci_arasan_clk_data *clk_data,
 	clk_name = __clk_get_name(clk_xin);
 	sampleclk_init.parent_names = &clk_name;
 	sampleclk_init.num_parents = 1;
-	sampleclk_init.ops = &clk_sampleclk_ops;
+	sampleclk_init.ops = sdhci_arasan->sampleclk_ops;
 
 	clk_data->sampleclk_hw.init = &sampleclk_init;
 	clk_data->sampleclk = clk_register(dev, &clk_data->sampleclk_hw);
@@ -559,10 +570,11 @@ arasan_sdhci_register_sampleclk(struct sdhci_arasan_clk_data *clk_data,
  * Return: 0 on success and error value on error
  */
 static int
-arasan_sdhci_register_sdcardclk(struct sdhci_arasan_clk_data *clk_data,
+arasan_sdhci_register_sdcardclk(struct arasan_sdhci_host *sdhci_arasan,
 				struct clk *clk_xin,
 				struct device *dev)
 {
+	struct sdhci_arasan_clk_data *clk_data = &sdhci_arasan->clk_data;
 	struct device_node *np = dev->of_node;
 	struct clk_init_data sdcardclk_init = {};
 	const char *clk_name;
@@ -577,7 +589,7 @@ arasan_sdhci_register_sdcardclk(struct sdhci_arasan_clk_data *clk_data,
 
 	clk_name = __clk_get_name(clk_xin);
 	sdcardclk_init.parent_names = &clk_name;
-	sdcardclk_init.ops = &clk_sdcardclk_ops;
+	sdcardclk_init.ops = sdhci_arasan->sdcardclk_ops;
 	sdcardclk_init.num_parents = 1;
 
 	clk_data->sdcardclk_hw.init = &sdcardclk_init;
@@ -615,7 +627,7 @@ arasan_sdhci_register_sdcardclk(struct sdhci_arasan_clk_data *clk_data,
  *
  * Return: 0 on success and error value on error
  */
-static int arasan_sdhci_register_sdclk(struct sdhci_arasan_clk_data *sdhci_arasan,
+static int arasan_sdhci_register_sdclk(struct arasan_sdhci_host *sdhci_arasan,
 				       struct clk *clk_xin,
 				       struct device *dev)
 {
@@ -772,8 +784,15 @@ static int arasan_sdhci_probe(struct device *dev)
 
 	mci->f_min = 50000000 / 256;
 
-	if (IS_ENABLED(CONFIG_ARCH_ZYNQMP))
-		arasan_sdhci_register_sdclk(&arasan_sdhci->clk_data, clk_xin, dev);
+	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a")) {
+		arasan_sdhci->sdcardclk_ops = &zynqmp_sdcardclk_ops;
+		arasan_sdhci->sampleclk_ops = &zynqmp_sampleclk_ops;
+	} else {
+		arasan_sdhci->sdcardclk_ops = &arasan_sdcardclk_ops;
+		arasan_sdhci->sampleclk_ops = &arasan_sampleclk_ops;
+	}
+
+	arasan_sdhci_register_sdclk(arasan_sdhci, clk_xin, dev);
 
 	arasan_dt_parse_clk_phases(dev, &arasan_sdhci->clk_data);
 
diff --git a/include/mach/zynqmp/firmware-zynqmp.h b/include/mach/zynqmp/firmware-zynqmp.h
index 00c63058f4..9f833189d3 100644
--- a/include/mach/zynqmp/firmware-zynqmp.h
+++ b/include/mach/zynqmp/firmware-zynqmp.h
@@ -119,8 +119,19 @@ struct zynqmp_eemi_ops {
 
 const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void);
 
+#if defined(CONFIG_ARCH_ZYNQMP)
 int zynqmp_pm_set_sd_tapdelay(u32 node_id, u32 type, u32 value);
 int zynqmp_pm_sd_dll_reset(u32 node_id, u32 type);
+#else
+static inline int zynqmp_pm_set_sd_tapdelay(u32 node_id, u32 type, u32 value)
+{
+	return -ENOSYS;
+}
+static inline int zynqmp_pm_sd_dll_reset(u32 node_id, u32 type)
+{
+	return -ENOSYS;
+}
+#endif
 
 int zynqmp_pm_write_ggs(u32 index, u32 value);
 int zynqmp_pm_read_ggs(u32 index, u32 *value);

---
base-commit: aa03dc194997eabf157118b76b0ab5ef88a9faff
change-id: 20240408-v2024-03-0-topic-arasan-fixes-199c8b0710dc

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>



