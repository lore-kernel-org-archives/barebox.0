Delivery-date: Wed, 26 Nov 2025 07:48:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vO9K4-004zTf-1S
	for lore@lore.pengutronix.de;
	Wed, 26 Nov 2025 07:48:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vO9K3-0003Pm-Q7
	for lore@pengutronix.de; Wed, 26 Nov 2025 07:48:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s8CFaBmCvrp+JakwlzsKKURIz6VlZvtQLhebom2lXzc=; b=2Ydo0Tc3W1SyCF+yEN3vDy93mV
	5Qiwa+tiSvfmIbJB93TABU2DgxulOvQCwmvtn1gmYT9CCh12Cq0/UO0Ll7VnjpXrAgEZ2wQSN2Kmj
	xzfiN69jpoY1lDsE+HtEwqjPmBwuHxqkq5XVF3F5GP3++jvaSRbcrLrZTjb003fdEiOzdyJDZ2f2H
	q97TM3wt/UhZ4qT9OCCli3vxN3yOerV70qhmbhFMUASBg37Sj32rul0l30UQ3LXp0xFfbyM9PFraR
	iIdfFA/p8A6QTaptAcVcvImQgfLa4Ubyiwy7sYeuG/qYlJ0P2zEwyCLGXOKtltnpgXyoMkQiw7tUz
	oSFUVDmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vO9JX-0000000ESVJ-2yJC;
	Wed, 26 Nov 2025 06:47:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vO9JS-0000000EST7-41sz
	for barebox@lists.infradead.org;
	Wed, 26 Nov 2025 06:47:41 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vO9JQ-0003Bf-ND; Wed, 26 Nov 2025 07:47:36 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>
Date: Wed, 26 Nov 2025 07:42:19 +0100
Message-ID: <20251126064710.3721039-5-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251126064710.3721039-1-f.pflug@pengutronix.de>
References: <29c84edc-9619-4524-a698-1edd3a60ac89@pengutronix.de>
 <20251126064710.3721039-1-f.pflug@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_224739_013461_0404EB22 
X-CRM114-Status: GOOD (  15.34  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] bootm: introduce bootm.root_arg variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The bootm.root_arg variable will be responsible for the root= part of
the kernel commandline if bootm.appendroot is set and a root device has
been selected.
root_arg allows to replace the root=/dev/... with verity=/dev/..., which
is useful in a verified boot context, where you pass the root file
system to the initramfs, but do not want the kernel to be able to parse
and mount the rootfs. With renaming the root= to something different,
you make sure, that the kernel does not mount the rootfs.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 common/bootm.c  | 8 ++++++--
 include/bootm.h | 1 +
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 5d7dc00e3e..a1aba06f0e 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -69,6 +69,7 @@ void bootm_data_init_defaults(struct bootm_data *data)
 		data->initrd_file = getenv_nonempty("global.bootm.initrd");
 	}
 	data->root_dev = getenv_nonempty("global.bootm.root_dev");
+	data->root_arg = getenv_nonempty("global.bootm.root_arg");
 	data->verify = bootm_get_verify_mode();
 	data->appendroot = bootm_appendroot;
 	data->provide_machine_id = bootm_provide_machine_id;
@@ -88,6 +89,7 @@ void bootm_data_restore_defaults(const struct bootm_data *data)
 		globalvar_set("bootm.initrd", data->initrd_file);
 	}
 	globalvar_set("bootm.root_dev", data->root_dev);
+	globalvar_set("bootm.root_arg", data->root_arg);
 	bootm_set_verify_mode(data->verify);
 	bootm_appendroot = data->appendroot;
 	bootm_provide_machine_id = data->provide_machine_id;
@@ -868,10 +870,10 @@ int bootm_boot(struct bootm_data *bootm_data)
 		} else {
 			char *rootarg;
 			if(rootopts) {
-				rootarg = xasprintf("root=%s %s", root, rootopts);
+				rootarg = xasprintf("%s=%s %s", bootm_data->root_arg, root, rootopts);
 				free(rootopts);
 			} else {
-				rootarg = xasprintf("root=%s", root);
+				rootarg = xasprintf("%s=%s", bootm_data->root_arg, root);
 			}
 			free(root);
 			pr_info("Adding \"%s\" to Kernel commandline\n", rootarg);
@@ -1116,6 +1118,7 @@ static int bootm_init(void)
 	globalvar_add_simple("bootm.image.loadaddr", NULL);
 	globalvar_add_simple("bootm.oftree", NULL);
 	globalvar_add_simple("bootm.root_dev", NULL);
+	globalvar_add_simple("bootm.root_arg", "root");
 	globalvar_add_simple("bootm.tee", NULL);
 	globalvar_add_simple_bool("bootm.appendroot", &bootm_appendroot);
 	globalvar_add_simple_bool("bootm.earlycon", &bootm_earlycon);
@@ -1173,5 +1176,6 @@ BAREBOX_MAGICVAR(global.bootm.verbose, "bootm default verbosity level (0=quiet)"
 BAREBOX_MAGICVAR(global.bootm.earlycon, "Add earlycon option to Kernel for early log output");
 BAREBOX_MAGICVAR(global.bootm.appendroot, "Add root= option to Kernel to mount rootfs from the device the Kernel comes from (default, device can be overridden via global.bootm.root_dev)");
 BAREBOX_MAGICVAR(global.bootm.root_dev, "bootm default root device (overrides default device in global.bootm.appendroot)");
+BAREBOX_MAGICVAR(global.bootm.root_arg, "bootm default name arg for the root partition (normally 'root' for root=/dev/...)");
 BAREBOX_MAGICVAR(global.bootm.provide_machine_id, "If true, append systemd.machine_id=$global.machine_id to Kernel command line");
 BAREBOX_MAGICVAR(global.bootm.provide_hostname, "If true, append systemd.hostname=$global.hostname to Kernel command line");
diff --git a/include/bootm.h b/include/bootm.h
index b35deb25bf..43f4258885 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -19,6 +19,7 @@ struct bootm_data {
 	const char *oftree_file;
 	const char *tee_file;
 	const char *root_dev;
+	const char *root_arg;
 	int verbose;
 	enum bootm_verify verify;
 	bool force;
-- 
2.47.3



