Delivery-date: Thu, 12 Mar 2026 15:45:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hIK-00ArQz-01
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 15:45:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hIJ-00051K-Uj
	for lore@pengutronix.de; Thu, 12 Mar 2026 15:45:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BWl+bDsZDR18vRpSwEMkyL8y9cpde52NK94qWqqi2xY=; b=SSdUcdtOrJP5li749NxS0jNGwX
	XmuDdpwrTImX6ZIFRSbN2vPe0DaNwaswsDaCcw+arGqf8T/A3SaSgq/5oQ836ezcQDdJhzsOzR3Lx
	M8lllC2y5yNhjTCxrePcF8DWQz2MlZHFKvsu7Ehk9BqmF2Ce4pSXGycx1yT41E+nfkWH4pgM3XXWd
	WdN450emZaSMgxrBK9/zkzBibuEz1Xdif4rcYQFwhojKLjTSrGsAgMJ65PgiztyrU418eTYAzW0ZD
	WHadqBmPioeY2CIk6I1W4NhDjYeEILG6BDKrYeAK2AOjlWUuCwB4t5a6U0cZTYLMHl0ofJ/RqjONj
	Ha9peiag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hHl-0000000EEs1-0PV1;
	Thu, 12 Mar 2026 14:45:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hHf-0000000EEmD-3WRm
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 14:45:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHe-0004TG-3T; Thu, 12 Mar 2026 15:45:06 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHc-0052O2-1d;
	Thu, 12 Mar 2026 15:45:05 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHd-000000093tN-3ANI;
	Thu, 12 Mar 2026 15:45:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Mar 2026 15:44:47 +0100
Message-ID: <20260312144505.2159816-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
References: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_074507_884338_E7D7EA36 
X-CRM114-Status: GOOD (  11.70  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 04/16] bootchooser: pass along struct bootentry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

By plumbing through the parent bootentry, we can merge the overrides
applied for the bootchooser targets onto the actual children if boot
override support is enabled.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootchooser.c  | 13 +++++++++----
 include/bootchooser.h |  2 +-
 2 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/common/bootchooser.c b/common/bootchooser.c
index 07cbdacfeb0a..2a75dfdcc88e 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -839,7 +839,8 @@ void bootchooser_lock_attempts(bool locked)
 	attempts_locked = locked;
 }
 
-static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain)
+static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain,
+				struct bootentry *parent_entry)
 {
 	char *system;
 	struct bootentries *entries;
@@ -873,6 +874,10 @@ static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain)
 	ret = -ENOENT;
 
 	bootentries_for_each_entry(entries, entry) {
+		if (parent_entry)
+			bootm_merge_overrides(&entry->overrides,
+					      &parent_entry->overrides);
+
 		ret = boot_entry(entry, bc->verbose, bc->dryrun);
 		if (!ret) {
 			*tryagain = 0;
@@ -889,12 +894,12 @@ static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain)
 	return ret;
 }
 
-int bootchooser_boot(struct bootchooser *bc)
+int bootchooser_boot(struct bootchooser *bc, struct bootentry *entry)
 {
 	int ret, tryagain;
 
 	do {
-		ret = bootchooser_boot_one(bc, &tryagain);
+		ret = bootchooser_boot_one(bc, &tryagain, entry);
 
 		if (!retry)
 			break;
@@ -915,7 +920,7 @@ int bootchooser_entry_boot(struct bootentry *entry, int verbose, int dryrun)
 	bc->verbose = verbose;
 	bc->dryrun = dryrun;
 
-	ret = bootchooser_boot(bc);
+	ret = bootchooser_boot(bc, entry);
 
 	bootchooser_put(bc);
 
diff --git a/include/bootchooser.h b/include/bootchooser.h
index 36cbd0dd0a01..da3b974ef6f6 100644
--- a/include/bootchooser.h
+++ b/include/bootchooser.h
@@ -14,7 +14,7 @@ int bootchooser_put(struct bootchooser *bootchooser);
 
 void bootchooser_info(struct bootchooser *bootchooser);
 
-int bootchooser_boot(struct bootchooser *bc);
+int bootchooser_boot(struct bootchooser *bc, struct bootentry *entry);
 
 struct bootchooser_target *bootchooser_get_last_chosen(struct bootchooser *bootchooser);
 void bootchooser_lock_attempts(bool locked);
-- 
2.47.3



