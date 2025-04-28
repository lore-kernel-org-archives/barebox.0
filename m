Delivery-date: Mon, 28 Apr 2025 15:08:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9ODt-000Ak0-1G
	for lore@lore.pengutronix.de;
	Mon, 28 Apr 2025 15:08:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9ODs-0002Pa-P2
	for lore@pengutronix.de; Mon, 28 Apr 2025 15:08:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VP2FBcprLxjDwc2ujlCK9CFajk2j/ZPu+1iapDlieXM=; b=ldDtYMDlMwIsepgpy/ollnyvuH
	ritS9fk8SkM3ogibIgLuLdE+du2FvgqIIiBN6Qkf6e5JFGqywBUG8Jel9DEcpZzh4oDEsB/AhVUyu
	3Jaz5r1PqFXJ8siLxD1AaQxstDX/+LR+X+x9CUu1AbhRX3RWIz8AEA6xE1TScB7U6tZtwvhmBFmTs
	hlP7wb6ZKXEwsJt3tC5xbUveabdQiOf/GBAbUMyOnD9DvdyJtG4ZWm2GvCm2TFc1FhWc7DsneQvy9
	zukV7cfcW3EA1BBQE2BXcaRoT53ppSjZZijYF3lvH/x8SPfXULEst4m+0lFFJALeXp+j4FyNPXGdw
	6KctcvdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9ODK-00000006Nqa-0sN7;
	Mon, 28 Apr 2025 13:08:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9Nyf-00000006H8o-0BFX
	for barebox@lists.infradead.org;
	Mon, 28 Apr 2025 12:52:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9Nyd-0003Uf-8w; Mon, 28 Apr 2025 14:52:51 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9Nyd-00068X-0G;
	Mon, 28 Apr 2025 14:52:51 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9Nyd-0087Aw-1V;
	Mon, 28 Apr 2025 14:52:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Apr 2025 14:52:13 +0200
Message-Id: <20250428125217.1931365-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250428125217.1931365-1-a.fatoum@pengutronix.de>
References: <20250428125217.1931365-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250428_055253_123271_65F55A97 
X-CRM114-Status: GOOD (  11.57  )
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
Subject: [PATCH 1/6] fastboot: terminate request for non-file-backed partition properly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If addition of fastboot variables fail due to a specific partition, it's
not enough to log a warning at the barebox side, but we need to return
an error to the client too, otherwise it will hang indefinitely.

Fixes: 6a191155be4e ("fastboot: evaluate fastboot partitions when used")
Reported-by: Uwe Kleine-König <uwe@kleine-koenig.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/fastboot.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index 34ac00bb0ecf..5a43bfb7e596 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -298,8 +298,12 @@ static void cb_getvar(struct fastboot *fb, const char *cmd)
 
 		ret = fastboot_add_partition_variables(fb, &partition_list, fentry);
 		if (ret) {
-			pr_warn("Failed to add partition variables: %pe", ERR_PTR(ret));
-			return;
+			char *msg = xasprintf("%s: Failed to add '%s' partition variables: %pe",
+					      fentry->name, fentry->filename, ERR_PTR(ret));
+			pr_warn("%s\n", msg);
+			fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, "%s", msg);
+			free(msg);
+			goto out;
 		}
 	}
 
-- 
2.39.5



