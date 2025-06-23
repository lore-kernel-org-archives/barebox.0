Delivery-date: Mon, 23 Jun 2025 08:40:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTaqo-00AB2G-2z
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 08:40:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTaqo-0001R4-32
	for lore@pengutronix.de; Mon, 23 Jun 2025 08:40:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jvTWfvq+G1j1eAMmF2DZkyR1JHR1uSQaSgiqJPpZwOY=; b=L6KU1QQWK+rmb2KQaYq3vSeKIS
	uokYVEYjVaBcUFKKfept6YCEhyFvCsA4eY5cZjtBx5V/o0+GlGDqcNXzdWPS8rNv3rvGUKXCEoD9G
	cCVKZ3UNr3PyMk6KlNwpgxinfznonGAQ0IaazWdUh3+c2GKS13Ityvqei6VTCGOmH2cvG1BFrsaTn
	3SKVqo4PFiPW8rG1MMP1Pq+mKxtWSRnxLbR+tO2nhURR7nuePuykTR2ssGDudxCA7taksNp8u2y4n
	Bdf1/f5DREndQ0GVgQKLYM1TpmgyaUprJc8oqULSWZw8dO+y9DfH/F3EK5B6V8Z0bSOf2SlV0ZnvZ
	N3pXo1aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTaqD-00000001kZG-3qhk;
	Mon, 23 Jun 2025 06:39:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTaa1-00000001j2W-3ZJ4
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 06:22:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uTaZz-0003by-T0; Mon, 23 Jun 2025 08:22:55 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Lars Schmidt <l.schmidt@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 23 Jun 2025 08:22:53 +0200
Message-Id: <20250623062253.3528292-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250622_232257_888308_71E5D583 
X-CRM114-Status: GOOD (  17.56  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! bootchooser: extend cmd tool by option to set attempts_locked
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

commands: bootchooser: fix new locking/unlocking options

The bootchooser instance is reference counted and the command releases
it again when it's done. Setting the struct bootchooser::lock_attempts
member in the command is thus without effect if the reference count
drops to zero when the command terminates.

Fix the issue by setting a global bootchooser instance independent flag
that forces locking until disabled. This is also the way that
bootchooser_last_boot_successful() is implemented.

This also drops the check for existence of the attempts_locked variable
in the boot state as the command doesn't interact with the state anyway.

Cc: Lars Schmidt <l.schmidt@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/bootchooser.c |  2 +-
 common/bootchooser.c   | 25 ++++++++-----------------
 include/bootchooser.h  |  2 +-
 3 files changed, 10 insertions(+), 19 deletions(-)

diff --git a/commands/bootchooser.c b/commands/bootchooser.c
index 4199085f352b..a59b5ebf7cce 100644
--- a/commands/bootchooser.c
+++ b/commands/bootchooser.c
@@ -117,7 +117,7 @@ static int do_bootchooser(int argc, char *argv[])
 	}
 
 	if (lock_state >= 0) {
-		ret = bootchooser_lock_attempts(bootchooser, lock_state);
+		bootchooser_lock_attempts(lock_state);
 		done_something = true;
 	}
 
diff --git a/common/bootchooser.c b/common/bootchooser.c
index f2beed543db0..623cb8ce7714 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -41,6 +41,7 @@ static int global_default_priority = 1;
 static int disable_on_zero_attempts;
 static int retry;
 static int last_boot_successful;
+static bool attempts_locked;
 
 struct bootchooser {
 	struct list_head targets;
@@ -400,12 +401,13 @@ struct bootchooser *bootchooser_get(void)
 	}
 
 	/* this is an optional value */
-	bc->attempts_locked = false;
+	bc->attempts_locked = attempts_locked;
 	ret = getenv_u32(bc->state_prefix, "attempts_locked", &locked);
-	if (!ret && locked) {
+	if (!ret && locked)
 		bc->attempts_locked = true;
+
+	if (bc->attempts_locked)
 		pr_debug("remaining attempt counter is locked\n");
-	}
 
 	INIT_LIST_HEAD(&bc->targets);
 
@@ -632,7 +634,7 @@ void bootchooser_info(struct bootchooser *bc)
 	printf("\nlast booted target: %s\n", bc->last_chosen ?
 	       bc->last_chosen->name : "unknown");
 
-	printf("Locking of boot attempt counter: %s",
+	printf("Locking of boot attempt counter: %s\n",
 	       bc->attempts_locked ? "enabled" : "disabled");
 }
 
@@ -822,7 +824,6 @@ struct bootchooser_target *bootchooser_get_last_chosen(struct bootchooser *bc)
 
 /**
  * bootchooser_lock_attempts - lock the bootchooser attempt counter
- * @bc:		The bootchooser
  * @locked:     Whether the attempt counter is locked or not.
  *
  * Instruct bootchooser to lock the boot attempts counter.
@@ -830,19 +831,9 @@ struct bootchooser_target *bootchooser_get_last_chosen(struct bootchooser *bc)
  *
  * Return: 0 for success, negative error code otherwise
  */
-int bootchooser_lock_attempts(struct bootchooser *bc, bool locked)
+void bootchooser_lock_attempts(bool locked)
 {
-	uint32_t not_needed;
-	/* We just need to check here, if the value exists in the device tree
-	 * So if it doesn't exist, inform user about it for easier debugging
-	 */
-	if (getenv_u32(bc->state_prefix, "attempts_locked", &not_needed)) {
-		pr_warn("Missing attempts_locked property in state DT node\n");
-		return -ENOENT;
-	}
-
-	bc->attempts_locked = locked;
-	return 0;
+	attempts_locked = locked;
 }
 
 static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain)
diff --git a/include/bootchooser.h b/include/bootchooser.h
index 69783b0b7494..36cbd0dd0a01 100644
--- a/include/bootchooser.h
+++ b/include/bootchooser.h
@@ -17,7 +17,7 @@ void bootchooser_info(struct bootchooser *bootchooser);
 int bootchooser_boot(struct bootchooser *bc);
 
 struct bootchooser_target *bootchooser_get_last_chosen(struct bootchooser *bootchooser);
-int bootchooser_lock_attempts(struct bootchooser *bc, bool locked);
+void bootchooser_lock_attempts(bool locked);
 const char *bootchooser_target_name(struct bootchooser_target *target);
 struct bootchooser_target *bootchooser_target_by_name(struct bootchooser *bootchooser,
 						      const char *name);
-- 
2.39.5



