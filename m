Delivery-date: Mon, 28 Apr 2025 15:08:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9ODu-000Aka-0l
	for lore@lore.pengutronix.de;
	Mon, 28 Apr 2025 15:08:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9ODt-0002QL-FC
	for lore@pengutronix.de; Mon, 28 Apr 2025 15:08:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f+tDElruBodAA7isApeD9xvUvAeHpjzvlGI6To/R3OE=; b=cckJaeyu23ptDoM6uYDNwfSAXl
	pSLIRo5Tbj4bILrjlwIpR/JXPAcxIwwLJue1jdhd3wFMyVoqs1xdTMvKKjrFHCpBUSiMjFKEfQSa7
	0vu5/+nNpR1Gtb9MaAC1h4ZG9lRPvpu/xLFduBKLcRKtbSzYbLxsWuP3Ue2lxaZC4VEuxiyA3uL3M
	coFX5tz5EFCKL/F7f9DYG/c2/FKtA50TWpFkSuFX+2MQwKSoY42CpkPMObQNplhabC4iBglYX8UBy
	OjxPXlK39CdRQXCq3YoR5bpt93Tl4Mnum/DGxToKenAB/MAg02unchZ9UHwOOoop22Fj0/OPupCS/
	T1UhtNgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9ODI-00000006Np1-2Yy1;
	Mon, 28 Apr 2025 13:08:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9Nyf-00000006H8k-0B88
	for barebox@lists.infradead.org;
	Mon, 28 Apr 2025 12:52:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9Nyd-0003Uh-Bu; Mon, 28 Apr 2025 14:52:51 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9Nyd-00068d-0Y;
	Mon, 28 Apr 2025 14:52:51 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9Nyd-0087Aw-1m;
	Mon, 28 Apr 2025 14:52:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Apr 2025 14:52:15 +0200
Message-Id: <20250428125217.1931365-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250428125217.1931365-1-a.fatoum@pengutronix.de>
References: <20250428125217.1931365-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250428_055253_107181_60C16266 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 3/6] fastboot: don't populate partition variables unconditionally
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If the client asks for max-download-size, there is no need to enumerate
all partitions, so reorder the code accordingly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/fastboot.c | 23 ++++++++++-------------
 1 file changed, 10 insertions(+), 13 deletions(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index 3155ff2af92c..231f49c1a6c9 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -310,6 +310,16 @@ static void cb_getvar(struct fastboot *fb, const char *cmd)
 {
 	LIST_HEAD(partition_list);
 	struct file_list_entry *fentry;
+	bool all;
+
+	pr_debug("getvar: \"%s\"\n", cmd);
+
+	all = !strcmp(cmd, "all");
+	if (all)
+		cmd = NULL;
+
+	if (fastboot_tx_print_var(fb, &fb->variables, cmd))
+		goto out;
 
 	file_list_for_each_entry(fb->files, fentry) {
 		int ret;
@@ -325,19 +335,6 @@ static void cb_getvar(struct fastboot *fb, const char *cmd)
 		}
 	}
 
-	pr_debug("getvar: \"%s\"\n", cmd);
-
-	if (!strcmp(cmd, "all")) {
-		fastboot_tx_print_var(fb, &fb->variables, NULL);
-		fastboot_tx_print_var(fb, &partition_list, NULL);
-
-		fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
-		goto out;
-	}
-
-	if (fastboot_tx_print_var(fb, &fb->variables, cmd))
-		goto out;
-
 	if (fastboot_tx_print_var(fb, &partition_list, cmd))
 		goto out;
 
-- 
2.39.5



