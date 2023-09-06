Delivery-date: Wed, 06 Sep 2023 15:27:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdsZ2-00619W-AZ
	for lore@lore.pengutronix.de; Wed, 06 Sep 2023 15:27:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdsZ0-0003tI-6d
	for lore@pengutronix.de; Wed, 06 Sep 2023 15:27:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LYwa4g656Gs2q5eeZb6qoTn9j0W0MnjTPJFiBwWGyWY=; b=1RaoWIlN+sE/ds
	aDGKnP9sI0gA9byBSEERK4EmtqppbfNiZ0aC8C+9FijiEPBQCXwm9ycxaC0HQtAH5eKgAZFK4NHo7
	Gg/8MMMfjLKutM2AzH2ti8WEdZC2cAxQYwYiVdmS3mTNeBwVvtdv3aK1SWV4MGNHiUcfsjBoSvCLo
	tnz99s5QczTZT19ZnZ4rcHA8lzvhGQnr0AYmCAXJ0Ebyrkvj69TiVJeFlhjGrDSTTXcashhPCHHuB
	jxXg6c5fSrpQvTJRMDnM63yiEfFnGuYR+uLT5mAPD+JT18WriBKirPyhTtvYGL+kyuoDBer0SjSyl
	0bspZy/oE+BroxWG4Zzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdsYE-00A3Ks-1W;
	Wed, 06 Sep 2023 13:26:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdsYB-00A3K6-2H
	for barebox@lists.infradead.org;
	Wed, 06 Sep 2023 13:26:33 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1qdsY9-0003eP-ST; Wed, 06 Sep 2023 15:26:29 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  6 Sep 2023 15:26:23 +0200
Message-Id: <20230906132623.1608529-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_062631_743179_2EE1969C 
X-CRM114-Status: GOOD (  13.32  )
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
Cc: afa@pengutronix.de, Bastian Krause <bst@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: pwm: add option to list registered PWMs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's useful to be able to list all registered PWMs, especially
considering these might be aliased. So add such an option to the pwm
command.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 commands/pwm.c     | 8 ++++++--
 drivers/pwm/core.c | 9 +++++++++
 include/pwm.h      | 2 ++
 3 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/commands/pwm.c b/commands/pwm.c
index 68d7988886e..5d41fa8ff42 100644
--- a/commands/pwm.c
+++ b/commands/pwm.c
@@ -34,8 +34,11 @@ static int do_pwm_cmd(int argc, char *argv[])
 	bool verbose = false;
 	int opt;
 
-	while ((opt = getopt(argc, argv, "d:D:P:f:w:F:isv")) > 0) {
+	while ((opt = getopt(argc, argv, "ld:D:P:f:w:F:isv")) > 0) {
 		switch (opt) {
+		case 'l':
+			pwm_print();
+			return 0;
 		case 'd':
 			devname = optarg;
 			break;
@@ -189,6 +192,7 @@ BAREBOX_CMD_HELP_TEXT("  (although note this will not by itself stop the pwm run
 BAREBOX_CMD_HELP_TEXT(" Stopping the pwm device does not necessarily set the output to inactive,")
 BAREBOX_CMD_HELP_TEXT("  but stop is handled last, so can be done in addition to other changes.")
 BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-l\t", "list registered PWMs")
 BAREBOX_CMD_HELP_OPT("-d <name>", "device name (eg 'pwm0')")
 BAREBOX_CMD_HELP_OPT("-D <duty_ns>", "duty cycle (ns)")
 BAREBOX_CMD_HELP_OPT("-P <period_ns>", "period (ns)")
@@ -202,7 +206,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(pwm)
 	.cmd		= do_pwm_cmd,
 	BAREBOX_CMD_DESC("pwm")
-	BAREBOX_CMD_OPTS("[-dDPfwisv]")
+	BAREBOX_CMD_OPTS("[-ldDPfwisv]")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_pwm_help)
 BAREBOX_CMD_END
diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index 2237dad4537..a3f27708e6e 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -44,6 +44,15 @@ struct pwm_device {
 
 static LIST_HEAD(pwm_list);
 
+void pwm_print(void)
+{
+	struct pwm_device *pwm;
+
+	list_for_each_entry(pwm, &pwm_list, node)
+		printf("%s\n", pwm->chip->devname);
+}
+EXPORT_SYMBOL(pwm_print);
+
 static struct pwm_device *_find_pwm(const char *devname)
 {
 	struct pwm_device *pwm;
diff --git a/include/pwm.h b/include/pwm.h
index 02af7d0a5f3..4d403fe1746 100644
--- a/include/pwm.h
+++ b/include/pwm.h
@@ -24,6 +24,8 @@ struct pwm_state {
 	unsigned int p_enable;
 };
 
+void pwm_print(void);
+
 /*
  * pwm_request - request a PWM device
  */
-- 
2.39.2



