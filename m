Delivery-date: Mon, 28 Oct 2024 17:38:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5Slb-001w5N-2e
	for lore@lore.pengutronix.de;
	Mon, 28 Oct 2024 17:38:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5Slc-0000HX-G1
	for lore@pengutronix.de; Mon, 28 Oct 2024 17:38:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iKFwPhUOFN/y3SzC7dEK92jZb/k3GTvxufvtt83DPdw=; b=vfRyD/mDrj55acMib3RfXWKHQL
	l5HbNJmdM6ZVfkORApvg+LxWz6T0E/Fa3KTTal7uL/fgsTYT3bE6WldfgBjbtHJDfgZfXclBJ/tXb
	vTdD70+EvWRABmeGJl05ID3IarPW7fLZTiAzGaeWgSvQkP+L4LPyvOMDz6CEqMlGPcZXNTp4i4jUY
	XJu276buxLAYgvRW0NQilN0Yki3e6XD9IlAblPu7xGNfrNNsxjMUWc1XW2+oRwqdCUQQaCCDIY4A/
	bicftHNWsULs0SHzq7sKOPAAwFgGXrsY06O5SGu49qsK4GxMbUr7Gxw78mY0MwQjNDzZXAGMGhHtB
	I4ky8OEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Sl6-0000000BWRd-2fDu;
	Mon, 28 Oct 2024 16:38:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Shh-0000000BVHA-47XJ
	for barebox@lists.infradead.org;
	Mon, 28 Oct 2024 16:34:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t5Shg-0007xk-Gk; Mon, 28 Oct 2024 17:34:52 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t5Shg-000t9G-15;
	Mon, 28 Oct 2024 17:34:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t5Shg-007Q8L-0v;
	Mon, 28 Oct 2024 17:34:52 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 28 Oct 2024 17:34:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241028-feature-dryrun-global-v1-1-5529ac1e133e@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIACu9H2cC/x3MSwqAMAwA0atI1gZqEPxcRVxUm2pAqqQqinh3i
 8u3mHkgsgpHaLMHlE+JsoaEIs9gnG2YGMUlAxkqC0M1erb7oYxObz0CTss62AVNww0R1WXlPKR
 2U/Zy/d+uf98P3GbiWWcAAAA=
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_093454_055647_BCC5CBB2 
X-CRM114-Status: GOOD (  10.93  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] bootm: make dryrun controllable via global variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When the bootm code is not called directly by the bootm command it is
useful to control the dryrun with a globalvar. This introduces
global.bootm.dryrun for this purpose.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 common/bootm.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/bootm.c b/common/bootm.c
index b6ab358426..91e33b3f6b 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -42,6 +42,7 @@ static struct image_handler *bootm_find_handler(enum filetype filetype,
 }
 
 static int bootm_appendroot;
+static int bootm_dryrun;
 static int bootm_earlycon;
 static int bootm_provide_machine_id;
 static int bootm_provide_hostname;
@@ -64,6 +65,7 @@ void bootm_data_init_defaults(struct bootm_data *data)
 	data->provide_machine_id = bootm_provide_machine_id;
 	data->provide_hostname = bootm_provide_hostname;
 	data->verbose = bootm_verbosity;
+	data->dryrun = bootm_dryrun;
 }
 
 static enum bootm_verify bootm_verify_mode = BOOTM_VERIFY_HASH;
@@ -1032,6 +1034,7 @@ static int bootm_init(void)
 	if (bootm_signed_images_are_forced())
 		bootm_verify_mode = BOOTM_VERIFY_SIGNATURE;
 
+	globalvar_add_simple_bool("bootm.dryrun", &bootm_dryrun);
 	globalvar_add_simple_int("bootm.verbose", &bootm_verbosity, "%u");
 
 	globalvar_add_simple_enum("bootm.verify", (unsigned int *)&bootm_verify_mode,

---
base-commit: 59658c877bcc605fe3ca36653b4f40f57856b81a
change-id: 20241028-feature-dryrun-global-09e9222847df

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



