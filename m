Delivery-date: Thu, 19 Jun 2025 10:46:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSAvB-008tAe-08
	for lore@lore.pengutronix.de;
	Thu, 19 Jun 2025 10:46:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSAvA-0004hk-Dw
	for lore@pengutronix.de; Thu, 19 Jun 2025 10:46:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fV2XgrfVW7/MoocppFbyHI1Xka7VQzMTrXPAxnLpd8s=; b=KOqgcQ82FyAmlrjCHGz5yUju/S
	5MyTknT8dYurwpEgdBZFmwV4SDPBs5jq4bdr1kFzc62x3wmuVIwXkrRUP7nmL8iU/KoSJM9g+PIs6
	BJKCD67KFIV4izittaFQRp4WnJCblrfDKfEtaKgphFQStkMHlr95xJB+woEopSN0MK5I2PBQyQdCh
	wp7rUPwBMppBuCX4R9/vdjnxg9CO88LRYcBWq3Jl6TCYr/09X1bIjECvKYWK+wJDAG3Yx1NrC8Zr7
	k74d8qDTvgTW6HmFM0Y7FsQyvIl++Xv0g9LD6R2v066ZN4UhebVtyVHzPkSTyWPD1+JZtIGbfx44N
	+BeYxzrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAuX-0000000CU0Z-2HSj;
	Thu, 19 Jun 2025 08:46:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAak-0000000CQbg-1guv
	for barebox@lists.infradead.org;
	Thu, 19 Jun 2025 08:25:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.schmidt@pengutronix.de>)
	id 1uSAag-0001wg-Pf; Thu, 19 Jun 2025 10:25:46 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <l.schmidt@pengutronix.de>)
	id 1uSAag-004Gtv-1q;
	Thu, 19 Jun 2025 10:25:46 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <l.schmidt@pengutronix.de>)
	id 1uSAah-003bEH-0a;
	Thu, 19 Jun 2025 10:25:46 +0200
From: Lars Schmidt <l.schmidt@pengutronix.de>
Date: Thu, 19 Jun 2025 10:25:36 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250619-bootchooser-lock-v3-1-fc4ad92c3866@pengutronix.de>
References: <20250619-bootchooser-lock-v3-0-fc4ad92c3866@pengutronix.de>
In-Reply-To: <20250619-bootchooser-lock-v3-0-fc4ad92c3866@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Lars Schmidt <l.schmidt@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_012550_447546_9803A581 
X-CRM114-Status: GOOD (  15.00  )
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
X-Spam-Status: No, score=-6.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 1/4] bootchooser: implement locking of attempts counter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This this new global slot lock inhibits the remaining attempts counter
from decreasing.
There are ways around this, but both come with a disadvantage:
  - If we mark the old slot as bad after a good update, we lose the
    distinction between old slots that are unbootable and ones that
    are bootable. Maintaining this distinction allows a health monitor
    to explicitly boot an old slot while preventing the bootloader
    from doing it automatically
  - If we set the maximum attempts to a very high number, we keep
    writing the storage every boot, even if we don't do
In both cases, by not decreasing and increasing the remaining attempts
counter constantly the number of write cycles is also lowered.

Signed-off-by: Lars Schmidt <l.schmidt@pengutronix.de>
---
 common/bootchooser.c | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/common/bootchooser.c b/common/bootchooser.c
index 58032a2b576284fe65ee53ee0e49aea68e09697a..50ce73682fb6bac8e4319119169dfb8334eb8762 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -49,6 +49,7 @@ struct bootchooser {
 	struct state *state;
 	char *state_prefix;
 	int refs;
+	bool attempts_locked;
 
 	int verbose;
 	int dryrun;
@@ -353,6 +354,7 @@ struct bootchooser *bootchooser_get(void)
 	int ret = -EINVAL, id = 1;
 	uint32_t last_chosen;
 	static int attempts_resetted;
+	uint32_t locked;
 
 	if (bootchooser) {
 		bootchooser->refs++;
@@ -397,6 +399,14 @@ struct bootchooser *bootchooser_get(void)
 		pr_warn("using non-redundant NV instead of barebox-state\n");
 	}
 
+	/* this is an optional value */
+	bc->attempts_locked = false;
+	ret = getenv_u32(bc->state_prefix, "attempts_locked", &locked);
+	if (!ret && locked) {
+		bc->attempts_locked = true;
+		pr_debug("remaining attempt counter is locked\n");
+	}
+
 	INIT_LIST_HEAD(&bc->targets);
 
 	freep = targets = xstrdup(available_targets);
@@ -650,11 +660,14 @@ static struct bootchooser_target *bootchooser_get_target(struct bootchooser *bc)
 	return ERR_PTR(-ENOENT);
 
 found:
-	target->remaining_attempts--;
-
-	if (bc->verbose)
-		pr_info("name=%s decrementing remaining_attempts to %d\n",
-			target->name, target->remaining_attempts);
+	if (!bc->attempts_locked) {
+		target->remaining_attempts--;
+		if (bc->verbose)
+			pr_info("name=%s remaining_attempts %d\n", target->name,
+				target->remaining_attempts);
+	} else {
+		pr_info("Attempts are locked, not decreasing remaining_attempts\n");
+	}
 
 	if (bc->verbose)
 		pr_info("selected target '%s', boot '%s'\n", target->name, target->boot);

-- 
2.39.5



