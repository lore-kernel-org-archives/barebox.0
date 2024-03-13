Delivery-date: Wed, 13 Mar 2024 20:46:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkUYc-004nng-0q
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 20:46:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkUYb-0000m8-Gb
	for lore@pengutronix.de; Wed, 13 Mar 2024 20:46:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0EOAaxCFWglXyMj1TH2gE/CdIYROaQKsDzydQjxwQhc=; b=DBAwrmWARTrsk4AdL5K60DfL14
	1M9OgVLctKr8dvJCa9rFe5OyEXM/IWYpMUbCM/s8S/96OlnCrpgbr3imfZtlHtKD1s3HAa5C1FvSD
	WVt8l8aZ1AkFD8sHfRxJfuS2+j6z4sxFpWRvL3kUUz3LghJBlK1xWXOg5RI/oHtPaXJomzBiUYuJH
	vggfYI+y3lF3/4Ao1jDwI9uYSdwxl7eD7phlcxYqsCheI4BPOFG8IpQyjafHZBi4QNdJXTnHQ5cnb
	ZUU+3yyMh32A3KHpeKNgHdmd+tp8AKrsXTA39bqDfhnA1rzgxxnmWUOCaips5J1DeCCa3/Z0xtNVr
	Oal0/v+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkUY4-0000000Bgna-21KH;
	Wed, 13 Mar 2024 19:46:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkUXy-0000000BglU-4Bpl
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 19:45:57 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rkUXv-0008L0-Qh
	for barebox@lists.infradead.org; Wed, 13 Mar 2024 20:45:51 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 13 Mar 2024 20:45:47 +0100
Message-Id: <20240313194547.3725723-4-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240313194547.3725723-1-m.felsch@pengutronix.de>
References: <20240313194547.3725723-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_124555_109821_914A3297 
X-CRM114-Status: GOOD (  18.43  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/4] bootm: add global.bootm.provide_hostname option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a new bootm option to automatically provide the $global.hostname via
the kernel commandline parameter systemd.hostname. The logic is based on
the provide_machine_id logic. To only provide valid hostnames the new
barebox_hostname_is_valid() is used therefore we need to make this
function public.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/bootm.c   | 25 +++++++++++++++++++++++++
 common/misc.c    |  2 +-
 include/bootm.h  |  5 +++++
 include/common.h |  1 +
 4 files changed, 32 insertions(+), 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index 29ea13e28cb8..17d273831558 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -44,6 +44,7 @@ static struct image_handler *bootm_find_handler(enum filetype filetype,
 static int bootm_appendroot;
 static int bootm_earlycon;
 static int bootm_provide_machine_id;
+static int bootm_provide_hostname;
 static int bootm_verbosity;
 
 void bootm_data_init_defaults(struct bootm_data *data)
@@ -61,6 +62,7 @@ void bootm_data_init_defaults(struct bootm_data *data)
 	data->verify = bootm_get_verify_mode();
 	data->appendroot = bootm_appendroot;
 	data->provide_machine_id = bootm_provide_machine_id;
+	data->provide_hostname = bootm_provide_hostname;
 	data->verbose = bootm_verbosity;
 }
 
@@ -797,6 +799,27 @@ int bootm_boot(struct bootm_data *bootm_data)
 		free(machine_id_bootarg);
 	}
 
+	if (bootm_data->provide_hostname) {
+		const char *hostname = getenv_nonempty("global.hostname");
+		char *hostname_bootarg;
+
+		if (!hostname) {
+			pr_err("Providing hostname is enabled but no hostname is set\n");
+			ret = -EINVAL;
+			goto err_out;
+		}
+
+		if (!barebox_hostname_is_valid(hostname)) {
+			pr_err("Provided hostname is not compatible to systemd hostname requirements\n");
+			ret = -EINVAL;
+			goto err_out;
+		}
+
+		hostname_bootarg = basprintf("systemd.hostname=%s", hostname);
+		globalvar_add_simple("linux.bootargs.hostname", hostname_bootarg);
+		free(hostname_bootarg);
+	}
+
 	pr_info("\nLoading %s '%s'", file_type_to_string(os_type),
 		data->os_file);
 	if (os_type == filetype_uimage &&
@@ -950,6 +973,7 @@ static int bootm_init(void)
 	globalvar_add_simple_bool("bootm.appendroot", &bootm_appendroot);
 	globalvar_add_simple_bool("bootm.earlycon", &bootm_earlycon);
 	globalvar_add_simple_bool("bootm.provide_machine_id", &bootm_provide_machine_id);
+	globalvar_add_simple_bool("bootm.provide_hostname", &bootm_provide_hostname);
 	if (IS_ENABLED(CONFIG_BOOTM_INITRD)) {
 		globalvar_add_simple("bootm.initrd", NULL);
 		globalvar_add_simple("bootm.initrd.loadaddr", NULL);
@@ -992,3 +1016,4 @@ BAREBOX_MAGICVAR(global.bootm.earlycon, "Add earlycon option to Kernel for early
 BAREBOX_MAGICVAR(global.bootm.appendroot, "Add root= option to Kernel to mount rootfs from the device the Kernel comes from (default, device can be overridden via global.bootm.root_dev)");
 BAREBOX_MAGICVAR(global.bootm.root_dev, "bootm default root device (overrides default device in global.bootm.appendroot)");
 BAREBOX_MAGICVAR(global.bootm.provide_machine_id, "If true, append systemd.machine_id=$global.machine_id to Kernel command line");
+BAREBOX_MAGICVAR(global.bootm.provide_hostname, "If true, append systemd.hostname=$global.hostname to Kernel command line");
diff --git a/common/misc.c b/common/misc.c
index dc498ad0b318..423af0005be0 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -157,7 +157,7 @@ static bool barebox_valid_ldh_char(char c)
 	       (c >= '0' && c <= '9') || c == '-';
 }
 
-static bool barebox_hostname_is_valid(const char *s)
+bool barebox_hostname_is_valid(const char *s)
 {
 	unsigned int n_dots = 0;
 	const char *p;
diff --git a/include/bootm.h b/include/bootm.h
index ee2b574521db..c69da85cdda1 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -34,6 +34,11 @@ struct bootm_data {
 	 * value of global.machine_id to Kernel.
 	 */
 	bool provide_machine_id;
+	/*
+	 * provide_hostname - if true, try to add systemd.hostname= with value
+	 * of global.hostname to Kernel.
+	 */
+	bool provide_hostname;
 	unsigned long initrd_address;
 	unsigned long os_address;
 	unsigned long os_entry;
diff --git a/include/common.h b/include/common.h
index b7b4d9e35094..d7b5261bc921 100644
--- a/include/common.h
+++ b/include/common.h
@@ -127,6 +127,7 @@ void barebox_set_model(const char *);
 const char *barebox_get_hostname(void);
 void barebox_set_hostname(const char *);
 void barebox_set_hostname_no_overwrite(const char *);
+bool barebox_hostname_is_valid(const char *s);
 
 const char *barebox_get_serial_number(void);
 void barebox_set_serial_number(const char *);
-- 
2.39.2



