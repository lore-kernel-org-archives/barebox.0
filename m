Delivery-date: Tue, 21 May 2024 10:07:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9KWq-00Bvy7-0q
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 10:07:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9KWm-0003Qn-0N
	for lore@pengutronix.de; Tue, 21 May 2024 10:07:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GIVEhroWj8u4GgFeshkmBA869D1q1uKon/gy8j+YBgw=; b=0HpPvnRJLJvZ+p1/Rq8oiLO6pp
	MsstouSO0apQ+XZHCKKk6JwYDEzaBGFSs17wrmNFQ9rSYXs0VEuSdtY4G1RDkYYqKOO/pLcGbWPka
	Rw9dLeeHw+b5vt2mioTQ7Vj+8rx3ujARw3JlbPbeqdbbeTrkLbHcgOh+tq+HKAgfg4SY24STS6kbI
	kznmcet6WY4kLoJhMojgWFLtNTKBMTrz8HaiFJvClHb7HLKSIihXq1PKfF2MbS+k5KaCn9vlHYzhD
	HalxkrUbhCoRqhvIDdHMOJvvdW6GhXpW+vlBnWObArE9hjr0zDwgaaYxZRNbn0lxu4tgZN7+nyhUY
	YoH7NpsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9KVz-0000000GicV-0YMH;
	Tue, 21 May 2024 08:06:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9KVv-0000000Giat-0cnH
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 08:06:28 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1s9KVm-0003BS-KJ
	for barebox@lists.infradead.org; Tue, 21 May 2024 10:06:18 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 21 May 2024 10:06:16 +0200
Message-Id: <20240521080617.1532603-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_010627_572266_59C14AD9 
X-CRM114-Status: GOOD (  11.42  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] usbgadget: fix error code in common code base
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Don't use command error codes in the common code base. Instead the
commands should convert common error codes into command error codes.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 commands/dfu.c       | 2 +-
 commands/usbgadget.c | 5 +++--
 common/usbgadget.c   | 2 +-
 3 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/commands/dfu.c b/commands/dfu.c
index 2116747f6885..bbe75841b914 100644
--- a/commands/dfu.c
+++ b/commands/dfu.c
@@ -31,7 +31,7 @@ static int do_dfu(int argc, char *argv[])
 	funcs.dfu_opts = argv[optind];
 	ret = usbgadget_register(&funcs);
 	if (ret)
-		return ret;
+		return COMMAND_ERROR_USAGE;
 
 	command_slice_release();
 	while (!usb_dfu_detached()) {
diff --git a/commands/usbgadget.c b/commands/usbgadget.c
index e69660fde541..736ccb5d9185 100644
--- a/commands/usbgadget.c
+++ b/commands/usbgadget.c
@@ -20,6 +20,7 @@ static int do_usbgadget(int argc, char *argv[])
 {
 	struct usbgadget_funcs funcs = {};
 	int opt;
+	int ret;
 
 	while ((opt = getopt(argc, argv, "asdA::D::S::b")) > 0) {
 		switch (opt) {
@@ -50,8 +51,8 @@ static int do_usbgadget(int argc, char *argv[])
 		}
 	}
 
-
-	return usbgadget_register(&funcs);
+	ret = usbgadget_register(&funcs);
+	return ret ? COMMAND_ERROR_USAGE : 0;
 }
 
 BAREBOX_CMD_HELP_START(usbgadget)
diff --git a/common/usbgadget.c b/common/usbgadget.c
index 371355116364..9974be57d1cb 100644
--- a/common/usbgadget.c
+++ b/common/usbgadget.c
@@ -71,7 +71,7 @@ int usbgadget_register(const struct usbgadget_funcs *funcs)
 
 	if (usb_multi_count_functions(opts) == 0) {
 		pr_warn("No functions to register\n");
-		ret = COMMAND_ERROR_USAGE;
+		ret = -EINVAL;
 		goto err;
 	}
 
-- 
2.39.2



