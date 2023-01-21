Delivery-date: Sat, 21 Jan 2023 15:46:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJF8o-0012mW-Ny
	for lore@lore.pengutronix.de; Sat, 21 Jan 2023 15:46:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJF8m-0000O4-Dr
	for lore@pengutronix.de; Sat, 21 Jan 2023 15:46:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0qZPpgKc66OWXBbxKqXgg+V+7ttUhvtxc2/l+/pzEpc=; b=gAz7wnN8DjGrExxbrk1E5fH8Ie
	eX/hkAPRPPDL04//h2+EAZmQ1UlYYsGJ1agDcB4kvuuPzP6Mi1iFbinr6r1uOJfWjYPcw5G3x7wtQ
	ycrGD99N8ch7UlUpGfKubtsbsJ/OvRDqkkHzz90AWOBSeXq7+1XY8CSiOC4GSrNJ4dveLSTvx1NQw
	VAiloX/M8MCYIDcNdP6A/6UX8XbxT0NY5QNZleF4efCBqssZ2XEbMUse3ugmlYQYreDTRoFXy51i2
	6nGZVoHfmNVGMnslQqw4rkjOfux2zstgImeqjACZW77C9M9Otbnsl+cQodUADZEFAtjiY7W7Q2yrj
	NLZ+w+Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJF70-00DyFo-En; Sat, 21 Jan 2023 14:44:54 +0000
Received: from out0.migadu.com ([94.23.1.103])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJF6v-00DyFB-2U
	for barebox@lists.infradead.org; Sat, 21 Jan 2023 14:44:50 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674312287;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0qZPpgKc66OWXBbxKqXgg+V+7ttUhvtxc2/l+/pzEpc=;
	b=xaeqiZgaU/rP7XBVD8ju0nHVf3xrG6GXodYFgjQWiePeBZ4HMO4mdp/xJ19sZdhm6zRMmM
	cnssso4umPImOfQZKrFsj6U2x4dkuIYiB06xaT3M4Kx2hjfj6B4Bht8quCPPAPKLZ2/qXa
	t8Y9oLyJiAFhDJylmAv7frE0EFJoWAD/xgvDKJlcZ/Ds9diN2J8aD6MCccvrTjN7GoAIAg
	BRsFY19ldgFS7ZQFRm6UHCun9o6A/nlUmP0/CFbhi5JPgR4JGzB+XvvwHhIb//ppWLC2gl
	V7ewdDS5NCwex6S88SIzWmiEyHKM4cEJrILqcJplmQQCvZM4QDDDoSLBAq1GAw==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Sun, 22 Jan 2023 01:44:24 +1100
Message-Id: <20230121144429.3524905-3-contact@jookia.org>
In-Reply-To: <20230121144429.3524905-1-contact@jookia.org>
References: <20230121144429.3524905-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230121_064449_454133_41BD733F 
X-CRM114-Status: GOOD (  12.18  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/7] ddr: fsl: Pass mclk_ps to ddr*_compute_dimm_parameters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is in preparation for use for generic SPD calculations.

I had to also rewrite uses of mclk_to_picos like this:

-       pdimm->trtp_ps = mclk_to_picos(c, 2);   /* By the book. */
+       pdimm->trtp_ps = mclk_ps * 2;   /* By the book. */

This is the same result as:

mclk_to_picos(c, mclk) expands to: get_memory_clk_period_ps(c) * mclk,
and that can just be rewritten as mclk_ps * mclk.

Signed-off-by: John Watts <contact@jookia.org>
---
 drivers/ddr/fsl/ddr1_dimm_params.c | 10 +++++-----
 drivers/ddr/fsl/ddr2_dimm_params.c |  4 ++--
 drivers/ddr/fsl/ddr3_dimm_params.c |  2 +-
 drivers/ddr/fsl/ddr4_dimm_params.c |  2 +-
 drivers/ddr/fsl/fsl_ddr.h          |  8 ++++----
 drivers/ddr/fsl/main.c             |  9 +++++----
 6 files changed, 18 insertions(+), 17 deletions(-)

diff --git a/drivers/ddr/fsl/ddr1_dimm_params.c b/drivers/ddr/fsl/ddr1_dimm_params.c
index f5f9067073..9a7f26bd49 100644
--- a/drivers/ddr/fsl/ddr1_dimm_params.c
+++ b/drivers/ddr/fsl/ddr1_dimm_params.c
@@ -216,7 +216,7 @@ compute_derated_DDR1_CAS_latency(unsigned int mclk_ps)
  *
  * FIXME: use #define for the retvals
  */
-unsigned int ddr1_compute_dimm_parameters(struct fsl_ddr_controller *c,
+unsigned int ddr1_compute_dimm_parameters(unsigned int mclk_ps,
 					  const struct ddr1_spd_eeprom *spd,
 					  struct dimm_params *pdimm)
 {
@@ -288,15 +288,15 @@ unsigned int ddr1_compute_dimm_parameters(struct fsl_ddr_controller *c,
 
 	/* Compute CAS latencies below that defined by SPD */
 	pdimm->caslat_lowest_derated = compute_derated_DDR1_CAS_latency(
-					get_memory_clk_period_ps(c));
+					mclk_ps);
 
 	/* Compute timing parameters */
 	pdimm->trcd_ps = spd->trcd * 250;
 	pdimm->trp_ps = spd->trp * 250;
 	pdimm->tras_ps = spd->tras * 1000;
 
-	pdimm->twr_ps = mclk_to_picos(c, 3);
-	pdimm->twtr_ps = mclk_to_picos(c, 1);
+	pdimm->twr_ps = mclk_ps * 3;
+	pdimm->twtr_ps = mclk_ps * 1;
 	pdimm->trfc_ps = compute_trfc_ps_from_spd(0, spd->trfc);
 
 	pdimm->trrd_ps = spd->trrd * 250;
@@ -311,7 +311,7 @@ unsigned int ddr1_compute_dimm_parameters(struct fsl_ddr_controller *c,
 	pdimm->tdh_ps
 		= convert_bcd_hundredths_to_cycle_time_ps(spd->data_hold);
 
-	pdimm->trtp_ps = mclk_to_picos(c, 2);	/* By the book. */
+	pdimm->trtp_ps = mclk_ps * 2;	/* By the book. */
 	pdimm->tdqsq_max_ps = spd->tdqsq * 10;
 	pdimm->tqhs_ps = spd->tqhs * 10;
 
diff --git a/drivers/ddr/fsl/ddr2_dimm_params.c b/drivers/ddr/fsl/ddr2_dimm_params.c
index e33a8ded48..6f17d55c1f 100644
--- a/drivers/ddr/fsl/ddr2_dimm_params.c
+++ b/drivers/ddr/fsl/ddr2_dimm_params.c
@@ -201,7 +201,7 @@ compute_derated_DDR2_CAS_latency(unsigned int mclk_ps)
  *
  * FIXME: use #define for the retvals
  */
-unsigned int ddr2_compute_dimm_parameters(struct fsl_ddr_controller *c,
+unsigned int ddr2_compute_dimm_parameters(unsigned int mclk_ps,
 					  const struct ddr2_spd_eeprom *spd,
 					  struct dimm_params *pdimm)
 {
@@ -289,7 +289,7 @@ unsigned int ddr2_compute_dimm_parameters(struct fsl_ddr_controller *c,
 
 	/* Compute CAS latencies below that defined by SPD */
 	pdimm->caslat_lowest_derated = compute_derated_DDR2_CAS_latency(
-					get_memory_clk_period_ps(c));
+					mclk_ps);
 
 	/* Compute timing parameters */
 	pdimm->trcd_ps = spd->trcd * 250;
diff --git a/drivers/ddr/fsl/ddr3_dimm_params.c b/drivers/ddr/fsl/ddr3_dimm_params.c
index 92012a5af9..cfea35ca05 100644
--- a/drivers/ddr/fsl/ddr3_dimm_params.c
+++ b/drivers/ddr/fsl/ddr3_dimm_params.c
@@ -79,7 +79,7 @@ compute_ranksize(const struct ddr3_spd_eeprom *spd)
  * Writes the results to the struct dimm_params structure pointed by pdimm.
  *
  */
-unsigned int ddr3_compute_dimm_parameters(struct fsl_ddr_controller *c,
+unsigned int ddr3_compute_dimm_parameters(unsigned int mclk_ps,
 					 const struct ddr3_spd_eeprom *spd,
 					 struct dimm_params *pdimm)
 {
diff --git a/drivers/ddr/fsl/ddr4_dimm_params.c b/drivers/ddr/fsl/ddr4_dimm_params.c
index 0be2de8de6..41c63f3613 100644
--- a/drivers/ddr/fsl/ddr4_dimm_params.c
+++ b/drivers/ddr/fsl/ddr4_dimm_params.c
@@ -124,7 +124,7 @@ compute_ranksize(const struct ddr4_spd_eeprom *spd)
  * Writes the results to the struct dimm_params structure pointed by pdimm.
  *
  */
-unsigned int ddr4_compute_dimm_parameters(struct fsl_ddr_controller *c,
+unsigned int ddr4_compute_dimm_parameters(unsigned int mclk_ps,
 					  const struct ddr4_spd_eeprom *spd,
 					  struct dimm_params *pdimm)
 {
diff --git a/drivers/ddr/fsl/fsl_ddr.h b/drivers/ddr/fsl/fsl_ddr.h
index 459a7ee8e8..87edd10ac1 100644
--- a/drivers/ddr/fsl/fsl_ddr.h
+++ b/drivers/ddr/fsl/fsl_ddr.h
@@ -204,16 +204,16 @@ struct fsl_ddr_controller;
 
 u32 fsl_ddr_get_version(struct fsl_ddr_controller *c);
 
-unsigned int ddr1_compute_dimm_parameters(struct fsl_ddr_controller *c,
+unsigned int ddr1_compute_dimm_parameters(unsigned int mclk_ps,
 					  const struct ddr1_spd_eeprom *spd,
 					  struct dimm_params *pdimm);
-unsigned int ddr2_compute_dimm_parameters(struct fsl_ddr_controller *c,
+unsigned int ddr2_compute_dimm_parameters(unsigned int mclk_ps,
 					  const struct ddr2_spd_eeprom *spd,
 					  struct dimm_params *pdimm);
-unsigned int ddr3_compute_dimm_parameters(struct fsl_ddr_controller *c,
+unsigned int ddr3_compute_dimm_parameters(unsigned int mclk_ps,
 					  const struct ddr3_spd_eeprom *spd,
 					  struct dimm_params *pdimm);
-unsigned int ddr4_compute_dimm_parameters(struct fsl_ddr_controller *c,
+unsigned int ddr4_compute_dimm_parameters(unsigned int mclk_ps,
 					  const struct ddr4_spd_eeprom *spd,
 					  struct dimm_params *pdimm);
 void fsl_ddr_set_intl3r(const unsigned int granule_size);
diff --git a/drivers/ddr/fsl/main.c b/drivers/ddr/fsl/main.c
index aa2f2e1aa1..c70be6fcf9 100644
--- a/drivers/ddr/fsl/main.c
+++ b/drivers/ddr/fsl/main.c
@@ -238,19 +238,20 @@ static int compute_dimm_parameters(struct fsl_ddr_controller *c,
 				   struct spd_eeprom *spd,
 				   struct dimm_params *pdimm)
 {
+	unsigned int mclk_ps = get_memory_clk_period_ps(c);
 	const memctl_options_t *popts = &c->memctl_opts;
 	int ret = -EINVAL;
 
 	memset(pdimm, 0, sizeof(*pdimm));
 
 	if (is_ddr1(popts))
-		ret = ddr1_compute_dimm_parameters(c, (void *)spd, pdimm);
+		ret = ddr1_compute_dimm_parameters(mclk_ps, (void *)spd, pdimm);
 	else if (is_ddr2(popts))
-		ret = ddr2_compute_dimm_parameters(c, (void *)spd, pdimm);
+		ret = ddr2_compute_dimm_parameters(mclk_ps, (void *)spd, pdimm);
 	else if (is_ddr3(popts))
-		ret = ddr3_compute_dimm_parameters(c, (void *)spd, pdimm);
+		ret = ddr3_compute_dimm_parameters(mclk_ps, (void *)spd, pdimm);
 	else if (is_ddr4(popts))
-		ret = ddr4_compute_dimm_parameters(c, (void *)spd, pdimm);
+		ret = ddr4_compute_dimm_parameters(mclk_ps, (void *)spd, pdimm);
 
 	return ret;
 }
-- 
2.39.0



