Delivery-date: Fri, 13 Jun 2025 17:21:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ6Dw-006wCE-1z
	for lore@lore.pengutronix.de;
	Fri, 13 Jun 2025 17:21:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ6Dv-0007hR-Vw
	for lore@pengutronix.de; Fri, 13 Jun 2025 17:21:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EWsVeJBlcqEKljVbKseGSVyn0oL8+Pfv0nKE1m6bliQ=; b=Hl8qof/2qBMAQcPe03piKYyEJV
	9JmS0T5ZJrXKONpEJm9P4qdhS+LdpDLAmKdnxPorV6JNqinQSN0f5/uofe00HMhieQZAp0178GWHL
	Gt0frzUC4rBjkHSNp+qHmjtebM4x81w+miIZin6hs/99KL3TIQylsgQe1m4L3Of3Xrp7HohYnF2v3
	Q8EG3w8zleUGixluni5lpXycjPTNNE+QV6PRyfhfc4DXAddb+sP7P7xMwM/9ZSXueCY85MiBkWT5M
	k3LoqzIPVIQQjvFpjJL2VfR1OG5Ag7L1khXd22KSoBdu4tsWa9Uy+Ai84wOv4WWYOjE88+3G5woPD
	VWQrdoIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ6DN-0000000Gqx8-30Cr;
	Fri, 13 Jun 2025 15:21:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ54r-0000000GczY-3JZQ
	for barebox@lists.infradead.org;
	Fri, 13 Jun 2025 14:08:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <lsc@pengutronix.de>)
	id 1uQ54q-00077Z-Kv; Fri, 13 Jun 2025 16:08:16 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <lsc@pengutronix.de>)
	id 1uQ54q-003IuW-1P;
	Fri, 13 Jun 2025 16:08:16 +0200
Received: from lsc by dude06.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <lsc@pengutronix.de>)
	id 1uQ54q-005AGL-1B;
	Fri, 13 Jun 2025 16:08:16 +0200
From: Lars Schmidt <l.schmidt@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Lars Schmidt <l.schmidt@pengutronix.de>
Date: Fri, 13 Jun 2025 16:08:02 +0200
Message-Id: <20250613140805.1229525-2-l.schmidt@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250613140805.1229525-1-l.schmidt@pengutronix.de>
References: <20250613140805.1229525-1-l.schmidt@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_070817_835285_372ABFD4 
X-CRM114-Status: GOOD (  15.81  )
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
Subject: [PATCH 1/4] bootchooser: implement locking of boot slots
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
 common/bootchooser.c | 27 ++++++++++++++++++++++-----
 1 file changed, 22 insertions(+), 5 deletions(-)

diff --git a/common/bootchooser.c b/common/bootchooser.c
index 58032a2b57..a50f757791 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -49,6 +49,7 @@ struct bootchooser {
 	struct state *state;
 	char *state_prefix;
 	int refs;
+	bool slots_locked;
 
 	int verbose;
 	int dryrun;
@@ -353,6 +354,7 @@ struct bootchooser *bootchooser_get(void)
 	int ret = -EINVAL, id = 1;
 	uint32_t last_chosen;
 	static int attempts_resetted;
+	uint32_t locked;
 
 	if (bootchooser) {
 		bootchooser->refs++;
@@ -397,6 +399,18 @@ struct bootchooser *bootchooser_get(void)
 		pr_warn("using non-redundant NV instead of barebox-state\n");
 	}
 
+	ret = getenv_u32(bc->state_prefix, "slots_locked", &locked);
+	if (!ret) {
+		bc->slots_locked = locked ? true : false;
+		if (bc->slots_locked)
+			pr_debug("Global slots locking is enabled\n");
+	} else {
+		/* this is an optional value, so if it doesn't exist,
+		 * we assume it's not locked
+		 */
+		bc->slots_locked = false;
+	}
+
 	INIT_LIST_HEAD(&bc->targets);
 
 	freep = targets = xstrdup(available_targets);
@@ -650,11 +664,14 @@ static struct bootchooser_target *bootchooser_get_target(struct bootchooser *bc)
 	return ERR_PTR(-ENOENT);
 
 found:
-	target->remaining_attempts--;
-
-	if (bc->verbose)
-		pr_info("name=%s decrementing remaining_attempts to %d\n",
-			target->name, target->remaining_attempts);
+	if (!bc->slots_locked) {
+		target->remaining_attempts--;
+		if (bc->verbose)
+			pr_info("name=%s remaining_attempts %d\n", target->name,
+				target->remaining_attempts);
+	} else {
+		pr_info("Slots locking is enabled, not decreasing remaining_attempts\n");
+	}
 
 	if (bc->verbose)
 		pr_info("selected target '%s', boot '%s'\n", target->name, target->boot);
-- 
2.39.5



