Delivery-date: Fri, 13 Mar 2026 14:35:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fi-000DaT-0o
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:35:22 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fQ-0001Nb-SD
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:35:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WCZXBxxw/sCHuK6n3CqyQFlel6rk3N4ChxZt9zDx1O4=; b=dmykCgMvVVlkk/1bRN7SH3aPQc
	orHnB3X/I6xTNn/5Y0MB4FjBtcLprzSdOwGieFYKqmkMI+DIi/8tNdOS2ZovHWEoNap2gB2CpBULc
	qrV0DChODIUrlHLwKa9KPDsmEf9Z3ZHufjRR+/UtFvd5tCntsOpfD//i5yzyuGEXYhRFsUcQ7nuIF
	GaZS5PhtwRucLvDW49ktzk+U8K8lqB4X1nwhTHeNSUdVHi4jGKFjbQrQ6syTU4jG/YmrW/X1strun
	5W8TfR3tOpTMILe71Cch3Zv6hbLQRRiywJVFhbtk4kFIFMf+vDIOz+ZGdkI/7yeaHmTmsHSJfK0uU
	hluDXDcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dp-00000000GkJ-0k12;
	Fri, 13 Mar 2026 13:33:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dI-00000000FoL-2AVB
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=WCZXBxxw/sCHuK6n3CqyQFlel6rk3N4ChxZt9zDx1O4=; b=mGTiXThSII5jCdLvPFV1E/qor6
	Afb5ncf/5h/hd97xIS+WxsdnZ4IJb4hhO9vm2GWFF3I8Xyxv1xvfUg7ms9TvajO8ETFB5eJi1rAaM
	kf7zl5Sebh0V/GPURZ/zMqpOS72ryG93f0fErP6c1IRnT2+uECslpRHa6QMec7/eHf02cNZDLFYcd
	lACyGCRJpL06Sr/HucROg6zCD5MhS58O+K0463znj0mKxCLWu/+L2FilBrHWAOqBitUSiuHKKHg/+
	EJn6tWm0y0NG8xPTKD8aWn/kmtZ0TyYqCb4mal6x98AAMNsgAfmRaxewNUyCUSijSTheU2cz3jZsI
	tjRjLfCw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d6-00000003OSj-0oAG
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d0-0006ua-J1; Fri, 13 Mar 2026 14:32:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d0-0005Ua-18;
	Fri, 13 Mar 2026 14:32:34 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XM-00000009ULB-2GwT;
	Fri, 13 Mar 2026 14:26:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jonas Rebmann <jre@pengutronix.de>
Date: Fri, 13 Mar 2026 14:25:35 +0100
Message-ID: <20260313132631.2257573-52-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133240_648255_E5E6A1D6 
X-CRM114-Status: GOOD (  10.45  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 51/58] Makefile: include scripts/ in compile_commands.json
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Jonas Rebmann <jre@pengutronix.de>

Although in many cases, C files in scripts/ would, because they rely on
the host toolchain and no unusual compiler flags, work fine in clangd
without a compile commands database, the (typically cross) compile
commands of the first entry in compile_commands.json are applied as
defaults once generated via `make compile_commands.json`.

As valid .cmd files are already present in scripts/ and
gen_compile_commands.py supports reading all cmd files in a subtree
recursively, simply add scripts to the gen_compile_commands.py
invocation. All enabled code in scripts/ is now properly covered by
compile_commands.json

(cherry picked from commit 8292499af8e917ed414ec57c36369068cfb98e13)

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
Link: https://lore.barebox.org/20260217-scripts-compile-commands-hack-v1-1-85afb2af566b@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 8606a6576194..28056c7d3d5e 100644
--- a/Makefile
+++ b/Makefile
@@ -1349,7 +1349,7 @@ quiet_cmd_gen_compile_commands = GEN     $@
       cmd_gen_compile_commands = $(PYTHON3) $< -a $(AR) -o $@ $(filter-out $<, $(real-prereqs))
 
 compile_commands.json: scripts/clang-tools/gen_compile_commands.py \
-	$(BAREBOX_OBJS) $(if $(CONFIG_PBL_IMAGE),$(BAREBOX_PBL_OBJS),) FORCE
+	$(BAREBOX_OBJS) $(if $(CONFIG_PBL_IMAGE),$(BAREBOX_PBL_OBJS),) scripts/ FORCE
 	$(call if_changed,gen_compile_commands)
 
 PHONY += compile_commands.json
-- 
2.47.3



