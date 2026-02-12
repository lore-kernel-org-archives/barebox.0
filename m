Delivery-date: Thu, 12 Feb 2026 23:03:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqem3-0012Bw-0Q
	for lore@lore.pengutronix.de;
	Thu, 12 Feb 2026 23:03:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqem2-0008Op-T4
	for lore@pengutronix.de; Thu, 12 Feb 2026 23:02:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oL2l+PR/GYoVPsmstrC1dykVGFGrgke33FL4YxV/zhY=; b=nGu/2yYcBKREasgis9ERuB50kL
	pKuXLpKw8njhMDmj9ds2GdqtJvllSj0rDCVrTLG301aczLOuRBKlaFkY9wM7x8lzmEvstpLZOALPR
	b37pIilSidAsPlFv0IFb5RJZ3EObouhJP5Rd2aQpax8CJ0e6BxLEwXN5W0Ee/Jlltfeu7bKDxFDut
	3ls0BXml0aubFmOICCgkhTJ3xc/R2M6doR2NeNI0G/kFOGZQbyVSkPcSlYtAjv8zMiYVKMOEu7Bk/
	g/nHpXFMDb5wVCa55+UzbeAQV/uxtMzkkdvm07NrG431swiS8UUWfsfYzI4tDzXM9xBqsM22r1e7o
	cvQscCUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqelM-00000002fvq-0F5V;
	Thu, 12 Feb 2026 22:02:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqelJ-00000002ftu-191K
	for barebox@lists.infradead.org;
	Thu, 12 Feb 2026 22:02:15 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vqelH-000855-4Y; Thu, 12 Feb 2026 23:02:11 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 12 Feb 2026 23:02:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260212-vmaster-customers-leicageo-system1600-v2-6-f590b7d5b0e9@pengutronix.de>
References: <20260212-vmaster-customers-leicageo-system1600-v2-0-f590b7d5b0e9@pengutronix.de>
In-Reply-To: <20260212-vmaster-customers-leicageo-system1600-v2-0-f590b7d5b0e9@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_140213_335716_5E41B195 
X-CRM114-Status: GOOD (  11.06  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 6/7] treewide: make use of new run_command variadic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since run_command accepts variadic inputs we no longer need to alloc the
cmd buffer and instead let run_command do the job for us.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/startup.c |  5 +----
 net/ifup.c       | 10 +++-------
 2 files changed, 4 insertions(+), 11 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 055d94fe6ab6d477c2d088108d7944974cebe587..dd643182043f13def7e06a1ea80a7f35d346c550 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -321,7 +321,6 @@ static int run_init(void)
 	if (!ret) {
 		for (i = 0; i < g.gl_pathc; i++) {
 			const char *path = g.gl_pathv[i];
-			char *scr;
 
 			ret = stat(path, &s);
 			if (ret)
@@ -331,9 +330,7 @@ static int run_init(void)
 				continue;
 
 			pr_debug("Executing '%s'...\n", path);
-			scr = basprintf("source %s", path);
-			run_command(scr);
-			free(scr);
+			run_command("source %s", path);
 		}
 
 		globfree(&g);
diff --git a/net/ifup.c b/net/ifup.c
index 0a0c94f6f2a6ba7571514504f3050076a23a893a..bd821535e8b364091ea689588a35b45d50285cf3 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -66,7 +66,7 @@ static int source_env_network(struct eth_device *edev)
 	};
 	IPaddr_t ipaddr, netmask, gateway, serverip;
 	unsigned char ethaddr[6];
-	char *file, *cmd;
+	char *file;
 	const char *ethaddrstr, *modestr, *linuxdevname;
 	int ret, mode, ethaddr_valid = 0, i;
 	struct stat s;
@@ -87,12 +87,9 @@ static int source_env_network(struct eth_device *edev)
 	for (i = 0; i < ARRAY_SIZE(vars); i++)
 		unsetenv(vars[i]);
 
-	cmd = basprintf("source /env/network/%s", edev->devname);
-	ret = run_command(cmd);
-	if (ret) {
-		pr_err("Running '%s' failed with %d\n", cmd, ret);
+	ret = run_command("source /env/network/%s", edev->devname);
+	if (ret)
 		goto out;
-	}
 
 	ipaddr = getenv_ip("ipaddr");
 	netmask = getenv_ip("netmask");
@@ -150,7 +147,6 @@ static int source_env_network(struct eth_device *edev)
 
 out:
 	env_pop_context();
-	free(cmd);
 	free(file);
 
 	return ret;

-- 
2.47.3



