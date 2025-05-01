Delivery-date: Thu, 01 May 2025 09:21:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uAOE9-00157e-2l
	for lore@lore.pengutronix.de;
	Thu, 01 May 2025 09:21:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uAOE9-0003Wq-88
	for lore@pengutronix.de; Thu, 01 May 2025 09:21:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yi5UMOTGlO9AnLiFf07RD00J3TreOJndEkG749X/vlE=; b=4CWtpdbPCdCwTf
	sBN1kCzLU3LpZw59c4ofnSLM1H5kZPfFv87wWCnY7yTx7hNaeDkR4pddbCUOoXMktqU1NzQDu3IEs
	HTKWWzIaklRP6WWTs4wAixWRcFjuJmKkoo1eu7D+UPxvYkod8v4FxHbpuPl0/yFnYeRZSrmFHWK1g
	UD1ExqdlK/HGtwbj3RYw7kpPlharrizgUGQ0RcDl8qayGoL/B6hpIK0ACjqilWREI09oBvJvw13Vq
	jpazTospH0oHsUZ0BCgGzawEdNqeATMNxKo1TmlwGWDX9l529M6IvgmA5ok0t7AR8KH6t6EG1Anh/
	Gmq9wRbmsf11hqYXN/aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAODN-0000000Evuj-3mUu;
	Thu, 01 May 2025 07:20:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAODL-0000000Evtq-0Bx5
	for barebox@lists.infradead.org;
	Thu, 01 May 2025 07:20:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1uAODJ-0003HV-2a; Thu, 01 May 2025 09:20:09 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1uAODI-000Ygz-2q;
	Thu, 01 May 2025 09:20:08 +0200
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1uAODI-00AodS-2f;
	Thu, 01 May 2025 09:20:08 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Thu, 01 May 2025 09:20:08 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250430-imx9optee-v2-1-30b1739e887b@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAKcgE2gC/22Nyw7CIBBFf6WZtRigaqwr/8N0wWNoJ6nQQNtgG
 v5d7NrlObmPHRJGwgSPZoeIGyUKvoI8NWBG5QdkZCuD5PLKLy1n9M5dmBdE1gorrTOdvGkHNa9
 VQqaj8masDb9OU5VzREf5OHj1lUdKS4if428TP/tvehNMsNYZzZ0yDu39OaMf1iUGT/lsEfpSy
 he9Mfj+vAAAAA==
To: barebox@lists.infradead.org
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1562;
 i=m.grzeschik@pengutronix.de; h=from:subject:message-id;
 bh=6yBfeG57hePYYLkDl57iaWrF1nnuxCBSCm3StutxANs=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBoEyCou9OnaFqtYebIMrpDzwzf3NJzOtNs0nh0D
 l2nRILOw1SJAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaBMgqAAKCRC/aVhE+XH0
 q1IfD/9+I/ndsTozHxsd0+jaMhhnz11q19cDkW3PzSx+7xibPmcurdEKzLNp10jdaXyl8rP4IVg
 IDyBCk85+SutTwIDp9aCVN2r0mL+ZxAQeQAblx6jhCJT4suJZoiAHp0upFNC8f/SV3TpkcCv0Qt
 SAJDYvYdjWRBSQa55RdgHmt4thowgdLKgSgP0bhAhAnyv2GTQk/Cj3Bst250rYlq59eq/ycMJoI
 3fHRwPHkam+/sKkxB7eogDIbU60Z928zuNNpRw2JcNyAMcZSi+NdSRCEolCf4o45O+Qaj98lEXj
 2KbA7+DWPoMZlB7RiIbqqJJH3mCf6Owh0JMcMXXFw0aa407eGhSKFKF4LVO90ivVdcx5poML5sx
 LS9B0qvm+3fhCTMTHiWVLj+8WMy425mYGwWEzJA/DvZzxCxu+Pq+TZ5y5UzzO6UPWXmbK6GaWOw
 sSh0Gb7Cj1SAlWEo/qxLlN7oui968rcofxOR5zANns9X3+yXInhQDJ2XGsAFDpMBBBZ+Ctk8fMd
 LKEMBrX+kLfifzK4TNBXSiB/OsnA/4UD4KammvxgXILto/DlciW8A6V33PMPaEEPjbNZR0DRPRw
 P3cuea8514Np28Qg488GHVesUvkSBEa0Zhex0FFyToGYrtKXq+dYLn1zmYnBdfi+YXdTmlV6PIP
 5jDBUtLa+DYsbPw==
X-Developer-Key: i=m.grzeschik@pengutronix.de; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250501_002011_087226_47F56EA5 
X-CRM114-Status: GOOD (  11.66  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] arch: arm: imx: esdctl: limit ram to 1GB on imx93 in
 case OPTEE is enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In MX93 the ELE (Edge Lock Enclave) is limited to communicate with
messages addressed under 1.5GB. The ELE can not reach the memory between
(0xE0000000-0xFFFFFFFF).

So we limit the usable memory in case OPTEE is used.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
v1 -> v2: moved the limitation to be active in imx93_barebox_entry only
---
 arch/arm/mach-imx/esdctl.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 701ca0ac1f3..264ba1177ec 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -1047,9 +1047,20 @@ void __noreturn imx7d_barebox_entry(void *boarddata)
 
 void __noreturn imx93_barebox_entry(void *boarddata)
 {
+	resource_size_t mem = 0;
+
 	imx93_init_scratch_space(false);
 	optee_set_membase(imx_scratch_get_optee_hdr());
 
-	barebox_arm_entry(MX9_DDR_CSD1_BASE_ADDR,
-			  imx9_ddrc_sdram_size(), boarddata);
+	mem = imx9_ddrc_sdram_size();
+	/* In MX93 the ELE is limited to comunicate with messages
+	 * under 1.5GB address space. This limits the overal memory
+	 * to be 1GB in case OPTEE is used.
+	 */
+	if (IS_ENABLED(CONFIG_PBL_OPTEE)) {
+	        if (mem > 0x40000000)
+	                mem = 0x40000000;
+	}
+
+	barebox_arm_entry(MX9_DDR_CSD1_BASE_ADDR, mem, boarddata);
 }

---
base-commit: 873b572763d38ab4100d218d0a3614f79b596077
change-id: 20250430-imx9optee-31d2dfc926bf

Best regards,
-- 
Michael Grzeschik <m.grzeschik@pengutronix.de>



