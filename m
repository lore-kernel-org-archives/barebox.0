Delivery-date: Mon, 16 Jun 2025 17:28:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRBlK-007xny-2G
	for lore@lore.pengutronix.de;
	Mon, 16 Jun 2025 17:28:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRBlK-0002EJ-0e
	for lore@pengutronix.de; Mon, 16 Jun 2025 17:28:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3IkXDcmoR7qZVsd1dXQRoXAS86QXyKHjXuFhkvCFgIE=; b=F0FgI/EDiPfstRBoJhk4SpiSkz
	MgYLrqQjnjjGL+4u3s03uVMVe6DCGTLCwkp/n9dmONPSrPDbSJffiQcPiS6Qks/X0j+nqbG+KJ6jv
	y5MjTD5GHHwE6uV9BQykPVHiRlo2gfdqW2rNfn9imRmHpJngZBSX02fw41ZAw7P7VFxuwYxrIzjDk
	VgOFPPtKdDhjJ7GZePXWU28eMBLMDtc28FAT3kgb2/Z1zS01aZ9TQgdwSYm3dRvvUxLVmsvEy44oc
	p2QC1WnjLs3LPv8Gq7PFpuTYZ9txeyJGWiAopgAOjx3ErBCt3gAS6CsAwTnFaPPeeQOY76mR3m7l3
	awMf2wSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRBkr-00000004s8E-0LMu;
	Mon, 16 Jun 2025 15:28:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRBQg-00000004nZU-37eL
	for barebox@lists.infradead.org;
	Mon, 16 Jun 2025 15:07:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.schmidt@pengutronix.de>)
	id 1uRBQP-0007fN-IM; Mon, 16 Jun 2025 17:07:05 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <l.schmidt@pengutronix.de>)
	id 1uRBQP-003pFV-12;
	Mon, 16 Jun 2025 17:07:05 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <l.schmidt@pengutronix.de>)
	id 1uRBQP-00Gw36-2y;
	Mon, 16 Jun 2025 17:07:05 +0200
From: Lars Schmidt <l.schmidt@pengutronix.de>
Date: Mon, 16 Jun 2025 17:06:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250616-bootchooser-lock-v2-2-df1f0d118635@pengutronix.de>
References: <20250616-bootchooser-lock-v2-0-df1f0d118635@pengutronix.de>
In-Reply-To: <20250616-bootchooser-lock-v2-0-df1f0d118635@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Lars Schmidt <l.schmidt@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_080722_787753_8C94BD29 
X-CRM114-Status: GOOD (  16.89  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/4] bootchooser: extend cmd tool by option to set
 attempts_locked
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This flag is normally set in userspace. But having
the option of setting it in bootloader gives more debugging
options.

Signed-off-by: Lars Schmidt <l.schmidt@pengutronix.de>
---
 commands/bootchooser.c | 16 +++++++++++++++-
 common/bootchooser.c   | 28 ++++++++++++++++++++++++++++
 include/bootchooser.h  |  1 +
 3 files changed, 44 insertions(+), 1 deletion(-)

diff --git a/commands/bootchooser.c b/commands/bootchooser.c
index 46b063e027db30073ada28487bc0434026cc081a..4199085f352b289e069f22870c0239aede38df61 100644
--- a/commands/bootchooser.c
+++ b/commands/bootchooser.c
@@ -48,8 +48,9 @@ static int do_bootchooser(int argc, char *argv[])
 	int info = 0;
 	bool done_something = false;
 	bool last_boot_successful = false;
+	int lock_state = -1;
 
-	while ((opt = getopt(argc, argv, "a:p:is")) > 0) {
+	while ((opt = getopt(argc, argv, "a:p:islL")) > 0) {
 		switch (opt) {
 		case 'a':
 			if (!strcmp(optarg, "default"))
@@ -69,6 +70,12 @@ static int do_bootchooser(int argc, char *argv[])
 		case 's':
 			last_boot_successful = true;
 			break;
+		case 'l':
+			lock_state = true;
+			break;
+		case 'L':
+			lock_state = false;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -109,6 +116,11 @@ static int do_bootchooser(int argc, char *argv[])
 		done_something = true;
 	}
 
+	if (lock_state >= 0) {
+		ret = bootchooser_lock_attempts(bootchooser, lock_state);
+		done_something = true;
+	}
+
 	if (!done_something) {
 		printf("Nothing to do\n");
 		ret = COMMAND_ERROR_USAGE;
@@ -126,6 +138,8 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-a <n|default> [TARGETS]",  "set remaining attempts of given targets to 'n' or the default attempts")
 BAREBOX_CMD_HELP_OPT ("-p <n|default> [TARGETS]",  "set priority of given targets to 'n' or the default priority")
 BAREBOX_CMD_HELP_OPT ("-i",  "Show information about the bootchooser")
+BAREBOX_CMD_HELP_OPT ("-l",  "Enable locking of remaining attempts")
+BAREBOX_CMD_HELP_OPT ("-L",  "Disable locking of remaining attempts")
 BAREBOX_CMD_HELP_OPT ("-s",  "Mark the last boot successful")
 BAREBOX_CMD_HELP_END
 
diff --git a/common/bootchooser.c b/common/bootchooser.c
index 50ce73682fb6bac8e4319119169dfb8334eb8762..7e4622aad5dfe02d8e798a249c46cd1c048dc3c9 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -631,6 +631,9 @@ void bootchooser_info(struct bootchooser *bc)
 
 	printf("\nlast booted target: %s\n", bc->last_chosen ?
 	       bc->last_chosen->name : "unknown");
+
+	printf("Locking of boot attempt counter: %s",
+	       bc->attempts_locked ? "enabled" : "disabled");
 }
 
 /**
@@ -817,6 +820,31 @@ struct bootchooser_target *bootchooser_get_last_chosen(struct bootchooser *bc)
 	return bc->last_chosen;
 }
 
+/**
+ * bootchooser_lock_attempts - lock the bootchooser attempt counter
+ * @bc:		The bootchooser
+ * @locked:     Whether the attempt counter is locked or not.
+ *
+ * Instruct bootchooser to lock the boot attempts counter.
+ * This means remaining_attempts will not be counted down.
+ *
+ * Return: 0 for success, negative error code otherwise
+ */
+int bootchooser_lock_attempts(struct bootchooser *bc, bool locked)
+{
+	uint32_t not_needed;
+	/* We just need to check here, if the value exists in the device tree
+	 * So if it doesn't exist, we can inform user about it for easier debugging
+	 */
+	if (getenv_u32(bc->state_prefix, "attempts_locked", &not_needed)) {
+		pr_warn("Missing attempts_locked property in state DT node\n");
+		return -ENOENT;
+	}
+
+	bc->attempts_locked = locked;
+	return 0;
+}
+
 static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain)
 {
 	char *system;
diff --git a/include/bootchooser.h b/include/bootchooser.h
index 31989163b236196d6355acb9e7d30a18b784baa2..69783b0b7494ac303a17a466d599559513fb6d17 100644
--- a/include/bootchooser.h
+++ b/include/bootchooser.h
@@ -17,6 +17,7 @@ void bootchooser_info(struct bootchooser *bootchooser);
 int bootchooser_boot(struct bootchooser *bc);
 
 struct bootchooser_target *bootchooser_get_last_chosen(struct bootchooser *bootchooser);
+int bootchooser_lock_attempts(struct bootchooser *bc, bool locked);
 const char *bootchooser_target_name(struct bootchooser_target *target);
 struct bootchooser_target *bootchooser_target_by_name(struct bootchooser *bootchooser,
 						      const char *name);

-- 
2.39.5



