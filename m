Delivery-date: Tue, 29 Oct 2024 09:29:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5hbc-002CoF-0Q
	for lore@lore.pengutronix.de;
	Tue, 29 Oct 2024 09:29:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5hbc-0007n1-Nm
	for lore@pengutronix.de; Tue, 29 Oct 2024 09:29:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dw2t7g5x9P8Cp/8Bo+rVLPpaQSadv2cNNBQkaJNZuLA=; b=oodcEueQuiNwlJJRlhDSTyHlKo
	HTZSDtp/0xEdV+w804uekm6LHwqz/jW1ViJb5RPdvRj7/a9WarWr+Nf+SKVZ2dkjPnLOrBptYWcUF
	441FS78QVAeF/K4UoMGon6moO0dNwFt2NyQDl1uQ2qX97CNYiwNMuGIqZNOGDPuFtv1+0weDipbOC
	HtDHDn1bn2LEjqnqCR7mT3ueVAF/AWfEsvtkEtUy6Yb279xxuB1bHtyLskmm4C6NlUwO3HJ7I6vO+
	Xk0FfEopLiNu6+0Xs7ITN1DgQiV9YW4UGt1fCCCkfKxf5j6rdyaO3cN+MMgMsn8yK3rVmqI1nIThf
	5z2n3Ocw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5hax-0000000Dgn1-1aRs;
	Tue, 29 Oct 2024 08:28:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5hX9-0000000Dfip-1b8D
	for barebox@lists.infradead.org;
	Tue, 29 Oct 2024 08:25:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t5hX7-0007FW-A3; Tue, 29 Oct 2024 09:24:57 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t5hX7-000zgG-0M;
	Tue, 29 Oct 2024 09:24:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t5hX7-003fAn-0B;
	Tue, 29 Oct 2024 09:24:57 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Tue, 29 Oct 2024 09:24:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241029-feature-dryrun-global-v2-1-49671d7cc62c@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIANObIGcC/4WNQQqDMBBFryKz7hQzKtWueo/iIjWjBiSRSRRFv
 HtTL9Dle/DfPyCwWA7wzA4QXm2w3iWgWwbdqN3AaE1ioJxKlVONPeu4CKORXRaHw+Q/esK84Ya
 I6vJhekjbWbi329V9t4lHG6KX/bpZ1c/+K64KFVYVNbpTrIqCXzO7YYnind3uhqE9z/MLSK5Tc
 r8AAAA=
X-Change-ID: 20241028-feature-dryrun-global-09e9222847df
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_012459_446406_9668B057 
X-CRM114-Status: GOOD (  11.59  )
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
Subject: [PATCH v2] bootm: make dryrun controllable via global variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When the bootm code is not called directly by the bootm command it is
useful to control the dryrun with a globalvar. This introduces
global.bootm.dryrun for this purpose.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
Changes in v2:
- Added bootm.dryrun as BAREBOX_MAGICVAR
- Link to v1: https://lore.kernel.org/r/20241028-feature-dryrun-global-v1-1-5529ac1e133e@pengutronix.de
---
 common/bootm.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/common/bootm.c b/common/bootm.c
index b6ab358426f60d3bd2c0ae8f1170d5d45a839d98..bc917081d7d1c9ed8ecbcb70974608fdc6dd1402 100644
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
@@ -1062,6 +1065,7 @@ BAREBOX_MAGICVAR(global.bootm.initrd, "bootm default initrd");
 BAREBOX_MAGICVAR(global.bootm.initrd.loadaddr, "bootm default initrd loadaddr");
 BAREBOX_MAGICVAR(global.bootm.oftree, "bootm default oftree");
 BAREBOX_MAGICVAR(global.bootm.tee, "bootm default tee image");
+BAREBOX_MAGICVAR(global.bootm.dryrun, "bootm default dryrun level");
 BAREBOX_MAGICVAR(global.bootm.verify, "bootm default verify level");
 BAREBOX_MAGICVAR(global.bootm.verbose, "bootm default verbosity level (0=quiet)");
 BAREBOX_MAGICVAR(global.bootm.earlycon, "Add earlycon option to Kernel for early log output");

---
base-commit: 59658c877bcc605fe3ca36653b4f40f57856b81a
change-id: 20241028-feature-dryrun-global-09e9222847df

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



