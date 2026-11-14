Delivery-date: Sat, 14 Nov 2026 17:21:33 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xSGVQ-00Apif-34
	for lore@lore.pengutronix.de;
	Sat, 14 Nov 2026 17:21:33 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C6DB520233F
	for <lore@pengutronix.de>; Sat, 14 Nov 2026 17:21:32 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Evk0JT+R;
	dkim=fail ("headers rsa verify failed") header.d=amelchem.com header.s=default2004 header.b=kdIED5rp;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=amelchem.com (policy=none)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794673293;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=+Q8td7EJf+dKIZYszmVcldzFZME6wBnK/cqUWmvpqyE=;
	b=E+i6LtEYeL3Fm28lx8Xx2+z28wzEu2VPLRFiFpkOVgquYxAsvYKv0oWYf/8ulWQt77xUKr
	0f15TyMIzjcCaeAVjZtSemltYcve4hbKdgnSPxkHaLW7O6i2MWjsNFUGFKfTrG+todi+9X
	ieRLB9vxgXrzj3dVGaqbkGWslyYaO5UVFTt+d2zatuCYgVqPdi8C3dowKRuC1c3k9vrJWI
	ggZRZ1e9tvx2A6jsfKru3AkWAOrtbmNidtiYaK7Yf0BJIBgSqS5iLeHx+b3LRjYYGn799P
	IH0P56xDgIlBwdwkh/8hVBUUMQcC+b3Opj1i56l7QYTQjhKZd3+LWCOJBl7bfA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794673293; a=rsa-sha256;
	cv=none;
	b=Ki2o0ivw3jZJgscLI0+xnwqiJHkUqvmeZ0kvaUZe8YIAKS+FgSihrnD0FM9ARrL1O6D7Xz
	IV/ExQz2f61n7ZnowDVDxTGGksioVb1/toU1AKWhvxDWGvT/XoVxAwzkY3vUXoOCabJ/05
	aV87ZZVudVvJsGn9zv7e7ieRtBVSktueUD4aFh/r25pc+CRByO40yGv5pfGxiNC6bWdpt1
	oZLC8Vifxu62N0mBRpe7ymSgoECnxzYpGcV/szxGU2BvRCPZ7lRvVbwGtv9UnGdQE6RgyY
	97L/TLstup9wIYfqVHx4vEK4V+eoL4Y6wQGf3ay7H6lwUdywj1l24WQmz/dzKw==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Evk0JT+R;
	dkim=fail ("headers rsa verify failed") header.d=amelchem.com header.s=default2004 header.b=kdIED5rp;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=amelchem.com (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=+Q8td7EJf+dKIZYszmVcldzFZME6wBnK/cqUWmvpqyE=; b=Evk0JT+RECc7rS
	PckK7w03j+d4AaqdmwtPOW4Ts5tV2sYv7jL33fc7W5PVl406oHUq9LkaT7dYZc98MN2jaOg16nsMM
	fJK4G4Uyo2UNV5c0ahVcRJDbaCLeHyCr24/lOpYlmlVDyLw2v3ag3cluBHw45gNLw2ShWZP/whLVP
	KDIpPwIEfJM6Gr3puQl1R+H7qq07mpYNCqNkQDpqZ6oPyiyFZVOYXS9trS8+ie4BKWlz7tyo4m5bc
	kVnP2xY5ahsXv2ucRhsOvfDbP7+mOr/5u9xAKj0xNQmELobIz0hJbiYbWBPYx5l3vz/fsVeBKP02y
	8eiGNfYwBvo1VwYEr85Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSGUK-0000000GRrb-27ww;
	Sat, 14 Nov 2026 16:20:24 +0000
Received: from www153.your-server.de ([213.133.104.153])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSGUF-0000000GRoy-1X6a
	for barebox@lists.infradead.org;
	Sat, 14 Nov 2026 16:20:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=amelchem.com; s=default2004; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=+Q8td7EJf+dKIZYszmVcldzFZME6wBnK/cqUWmvpqyE=; b=kdIED5rpyomojkmzXzkdrBNB67
	fGd1QHFpa/xJ2GotlNtkVVnPOUbIXknUAOLGI56cDUJli5ECPP8zkHm7HTXLhSFXpeSi5Kif+vj2m
	vlNErXsRX6uPgJeMpzTMWW3KNLrtduJasta9mkQdJ7faMYrt7ak+9tNDVqs1WnEoEHlySIhjeP5px
	VgDrs++2ZXIZgP33c6h3N4QAjBGj9wsRmavbis9hPgb9F/UpOs0GEN29qpsupjyNNJWq6Wa6Lt23K
	EIJrkxpM99s/HCNMr9HVV9UQk59j2IYnI+KEWSiOMgVR1OPPrVBHyLFP1ukkh7lfwad18PXwz8b8J
	QA99/2EQ==;
Received: from sslproxy07.your-server.de ([78.47.199.104])
	by www153.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <rossi@amelchem.com>)
	id 1xSGU7-0009me-2P;
	Sat, 14 Nov 2026 17:20:11 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy07.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <rossi@amelchem.com>)
	id 1xSGU7-000MCb-1T;
	Sat, 14 Nov 2026 17:20:11 +0100
From: Giandomenico Rossi <rossi@amelchem.com>
To: barebox@lists.infradead.org
Cc: Giandomenico Rossi <rossi@amelchem.com>,
	Nicola Fontana <ntd@entidi.it>
Subject: [PATCH 4/4] commands: stusb4500: add USB-C PD control command
Date: Sat, 14 Nov 2026 17:19:53 +0100
Message-Id: <20261114161953.1457428-5-rossi@amelchem.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261114161953.1457428-1-rossi@amelchem.com>
References: <20261114161953.1457428-1-rossi@amelchem.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.6/28183/Sat Nov 14 07:24:17 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_082019_586764_ABD6306A 
X-CRM114-Status: GOOD (  24.59  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Add a Barebox shell command to inspect and control the STUSB4500
    USB-C Power Delivery sink controller. The command supports listing and dumping
    configured PDOs, updating sink PDOs, forcing PD renegotiation, and displaying
    the negotiated contract. The target STUSB4500 device can be selected with
    the -d [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: amelchem.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Spamd-Result: default: False [-5.81 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[amelchem.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_MIXED(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DNSWL_BLOCKED(0.00)[78.47.199.104:received];
	RCPT_COUNT_THREE(0.00)[3];
	R_DKIM_REJECT(0.00)[amelchem.com:s=default2004];
	DKIM_TRACE(0.00)[lists.infradead.org:+,amelchem.com:-];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[rossi@amelchem.com,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: C6DB520233F
X-Rspamd-Server: mx1
X-Stat-Signature: 5kqk49ki1qd8fgqstetikma3zdu14jei

Add a Barebox shell command to inspect and control the STUSB4500
USB-C Power Delivery sink controller.

The command supports listing and dumping configured PDOs, updating
sink PDOs, forcing PD renegotiation, and displaying the negotiated
contract. The target STUSB4500 device can be selected with the -d
option.

The command is intended primarily for board bring-up.

Reviewed-by: Nicola Fontana <ntd@entidi.it>
Signed-off-by: Giandomenico Rossi <rossi@amelchem.com>
---
 commands/Kconfig     |  23 ++++
 commands/Makefile    |   1 +
 commands/stusb4500.c | 274 +++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 298 insertions(+)
 create mode 100644 commands/stusb4500.c

diff --git a/commands/Kconfig b/commands/Kconfig
index a43f0fbd4d..1164c29b96 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2762,6 +2762,29 @@ config CMD_STACKSMASH
 	  This commands trashes the stack to test stackprotector and
 	  guard page. This command does not return.
 
+config STUSB4500_COMMANDS
+	bool "STUSB4500 shell command"
+	depends on STUSB4500 && !SHELL_NONE
+	help
+	  Adds the 'stusb4500' shell command to control and inspect an
+	  STUSB4500 USB-C Power Delivery sink controller at runtime.
+
+	  Usage:
+		stusb4500 [-d <device>] <action> [args...]
+
+	  Actions:
+		set_active_pdos                set currently active PDOs
+		dump_pdos                      dump all configured sink PDOs
+		update_pdo <id> <mv> <ma>      update a sink PDO
+		renegotiate                    force PD renegotiation
+		contract                       show the negotiated contract
+
+	  If -d is omitted, the command targets the only STUSB4500 in the
+	  system; specify -d <device> to disambiguate when several are present.
+
+	  This command is mainly intended for bring-up and debugging. It is
+	  safe to leave disabled in production builds.
+
 # end Miscellaneous commands
 endmenu
 
diff --git a/commands/Makefile b/commands/Makefile
index 7dae582225..d43d8521d5 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -175,4 +175,5 @@ obj-$(CONFIG_CMD_VERITYSETUP)	+= veritysetup.o
 obj-$(CONFIG_CMD_LVM)		+= lvm.o
 obj-$(CONFIG_CMD_SCONFIG)	+= sconfig.o
 obj-$(CONFIG_CMD_RKSECURE)	+= rksecure.o
+obj-$(CONFIG_STUSB4500_COMMANDS) += stusb4500.o
 UBSAN_SANITIZE_ubsan.o := y
diff --git a/commands/stusb4500.c b/commands/stusb4500.c
new file mode 100644
index 0000000000..1931ab7464
--- /dev/null
+++ b/commands/stusb4500.c
@@ -0,0 +1,274 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2026 Giandomenico Rossi <rossi@amelchem.com>, Amel s.r.l.
+
+/*
+ * stusb4500 - command to control and inspect an STUSB4500 USB-C PD sink.
+ *
+ * The STUSB4500 is a standalone USB Power Delivery sink controller that
+ * autonomously negotiates a power contract from a stored set of sink PDOs.
+ * This command exposes the controller's state and configuration at the
+ * barebox prompt: it reads back the negotiated contract and the advertised
+ * source PDOs, edits the locally stored sink PDOs, selects how many of them
+ * are active, and forces a PD renegotiation.
+ *
+ * Actions are dispatched through a small table (struct stusb4500_action);
+ * each entry declares the minimum number of arguments it expects, which is
+ * validated before the handler runs.
+ */
+
+#include <common.h>
+#include <command.h>
+#include <complete.h>
+#include <getopt.h>
+#include <linux/kstrtox.h>
+#include <usb/stusb4500.h>
+
+
+/**
+ * struct stusb4500_action - one subcommand of the stusb4500 command
+ * @name:     action keyword typed by the user
+ * @fn:       handler, receiving the arguments that follow the action name
+ * @min_args: number of arguments @fn requires (checked before dispatch)
+ * @help:     one-line usage string, also printed on a missing-argument error
+ */
+struct stusb4500_action {
+	const char *name;
+	int (*fn)(struct stusb4500 *stusb, int argc, char *argv[]);
+	int min_args;
+	const char *help;
+};
+
+/* Read and print the currently negotiated PD power contract. */
+static int action_contract(struct stusb4500 *stusb, int argc, char *argv[])
+{
+	struct stusb4500_contract contract;
+	int ret;
+
+	ret = stusb4500_read_contract(stusb, &contract);
+	if (ret) {
+		pr_err("read_contract() failed with %d\n", ret);
+		return COMMAND_ERROR;
+	}
+
+	stusb4500_dump_contract(stusb, &contract);
+
+	return ret;
+}
+
+/* Trigger a new PD negotiation, then show the resulting contract. */
+static int action_renegotiate(struct stusb4500 *stusb, int argc, char *argv[])
+{
+	int ret = stusb4500_renegotiate(stusb);
+
+	if (ret < 0) {
+		pr_err("renegotiate() failed with %d\n", ret);
+		return COMMAND_ERROR;
+	}
+
+	return action_contract(stusb, argc, argv);
+}
+
+/* Dump the sink PDOs stored in the controller. */
+static int action_dump_sink_pdos(struct stusb4500 *stusb, int argc, char *argv[])
+{
+	int ret = stusb4500_dump_sink_pdos(stusb);
+
+	if (ret)
+		pr_err("dump_sink_pdos() failed with %d\n", ret);
+
+	return ret;
+}
+
+/* Scan and dump the source PDOs advertised by the attached port partner. */
+static int action_dump_source_pdos(struct stusb4500 *stusb, int argc, char *argv[])
+{
+	int ret;
+
+	ret = stusb4500_scan_src_pdo(stusb);
+	if (ret < 0)
+		return ret;
+
+	stusb4500_dump_source_pdos(stusb);
+
+	return 0;
+}
+
+/* Edit a stored sink PDO: update_pdo <id> <voltage_mv> <current_ma>. */
+static int action_update_pdo(struct stusb4500 *stusb, int argc, char *argv[])
+{
+	unsigned int id, voltage_mv, current_ma;
+	int ret;
+
+	ret = kstrtouint(argv[0], 10, &id);
+	if (ret < 0)
+		return COMMAND_ERROR_USAGE;
+
+	ret = kstrtouint(argv[1], 10, &voltage_mv);
+	if (ret < 0)
+		return COMMAND_ERROR_USAGE;
+
+	ret = kstrtouint(argv[2], 10, &current_ma);
+	if (ret < 0)
+		return COMMAND_ERROR_USAGE;
+
+	if (id < 1 || id > STUSB4500_MAX_PDO) {
+		pr_err("invalid PDO index: %u is outside of 1..%d\n", id, STUSB4500_MAX_PDO);
+		return COMMAND_ERROR_USAGE;
+	}
+
+	ret = stusb4500_update_sink_pdo(stusb, id, voltage_mv, current_ma);
+	if (ret) {
+		pr_err("update_sink_pdo(%u) failed with %d\n", id, ret);
+		return ret;
+	}
+
+	printf("PDO %u set to %u mV / %u mA\n", id, voltage_mv, current_ma);
+	return 0;
+}
+
+/* Select how many of the stored sink PDOs are advertised during negotiation. */
+static int action_set_active_pdos(struct stusb4500 *stusb, int argc, char *argv[])
+{
+	unsigned int nr_pdo;
+	int ret;
+
+	ret = kstrtouint(argv[0], 0, &nr_pdo);
+	if (ret < 0)
+		return COMMAND_ERROR_USAGE;
+
+	if (nr_pdo < 1 || nr_pdo > STUSB4500_MAX_PDO) {
+		pr_err("invalid PDO number: %u is outside of 1..%d\n", nr_pdo, STUSB4500_MAX_PDO);
+		return COMMAND_ERROR_USAGE;
+	}
+
+	ret = stusb4500_set_active_pdos(stusb, nr_pdo);
+	if (ret)
+		pr_err("set_active_pdos() failed with %d\n", ret);
+
+	return ret;
+}
+
+static const struct stusb4500_action actions[] = {
+	{ "set_active_pdos",  action_set_active_pdos,  1, "<npdo> set # of active PDOs" },
+	{ "dump_sink_pdos",   action_dump_sink_pdos,   0, "dump all sink PDOs" },
+	{ "dump_source_pdos", action_dump_source_pdos, 0, "dump all source PDOs" },
+	{ "update_pdo",       action_update_pdo,       3, "<id> <mv> <ma> update a sink PDO" },
+	{ "renegotiate",      action_renegotiate,      0, "force PD renegotiation" },
+	{ "contract",         action_contract,         0, "show negotiated contract" },
+};
+
+/* Tab-completion for action keywords, falling back to device names. */
+static int stusb4500_complete(struct string_list *sl, char *instr)
+{
+	int len = strlen(instr);
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(actions); i++) {
+		if (strncmp(actions[i].name, instr, len) == 0)
+			string_list_add_asprintf(sl, "%s ", actions[i].name);
+	}
+
+	device_complete(sl, instr);
+
+	return COMPLETE_CONTINUE;
+}
+
+/*
+ * Parse the leading options (currently only -d <device>), default the device
+ * name when none is given, and return the index of the first non-option
+ * argument (the action name), or -1 if none is present.
+ */
+static int cmd_opt(int argc, char *argv[], const char **name)
+{
+	int opt;
+
+	optind = 1;
+	*name = NULL;
+	while ((opt = getopt(argc, argv, "d:")) > 0) {
+		switch (opt) {
+		case 'd':
+			*name = optarg;
+			break;
+		}
+	}
+
+	if (argc - optind <= 0)
+		return -1;
+
+	if (*name == NULL)
+		*name = "typec0";
+
+	return optind;
+}
+
+static const struct stusb4500_action *find_action_by_name(const char *name)
+{
+	int i;
+	const struct stusb4500_action *action = NULL;
+
+	for (i = 0; i < ARRAY_SIZE(actions); i++) {
+		if (!strcmp(name, actions[i].name)) {
+			action = &actions[i];
+			break;
+		}
+	}
+
+	return action;
+}
+
+static int do_stusb4500(int argc, char *argv[])
+{
+	struct stusb4500 *stusb;
+	const char *devname = NULL;
+	const char *action_name;
+	const struct stusb4500_action *action = NULL;
+	int i, nargs;
+
+	i = cmd_opt(argc, argv, &devname);
+	if (i < 0)
+		return COMMAND_ERROR_USAGE;
+
+	action_name = argv[i++];
+	action = find_action_by_name(action_name);
+	if (!action) {
+		printf("unknown action '%s'\n", action_name);
+		return COMMAND_ERROR_USAGE;
+	}
+
+	nargs = argc - i;
+	if (nargs < action->min_args) {
+		printf("action '%s' requires: %s\n",
+		       action->name, action->help);
+		return COMMAND_ERROR_USAGE;
+	}
+
+	stusb = stusb4500_get(devname);
+	if (IS_ERR(stusb))
+		return PTR_ERR(stusb);
+
+	return action->fn(stusb, nargs, &argv[i]);
+}
+
+BAREBOX_CMD_HELP_START(stusb4500)
+BAREBOX_CMD_HELP_TEXT("Control and inspect an STUSB4500 USB-C PD sink controller")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-d <device>", "target device (default: typec0)")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Actions:")
+BAREBOX_CMD_HELP_OPT("set_active_pdos",  "\t<npdo> set # of active PDOs")
+BAREBOX_CMD_HELP_OPT("dump_sink_pdos",   "\tdump all configured sink PDOs")
+BAREBOX_CMD_HELP_OPT("dump_source_pdos", "\tdump all configured source PDOs")
+BAREBOX_CMD_HELP_OPT("update_pdo",       "\t<id> <mv> <ma> update a sink PDO")
+BAREBOX_CMD_HELP_OPT("renegotiate",      "\tforce PD renegotiation")
+BAREBOX_CMD_HELP_OPT("contract",         "\tshow the negotiated contract")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(stusb4500)
+	.cmd		= do_stusb4500,
+	BAREBOX_CMD_DESC("STUSB4500 USB-C PD sink control")
+	BAREBOX_CMD_OPTS("[-d <device>] <action> [args...]")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_COMPLETE(stusb4500_complete)
+	BAREBOX_CMD_HELP(cmd_stusb4500_help)
+BAREBOX_CMD_END
-- 
2.34.1



