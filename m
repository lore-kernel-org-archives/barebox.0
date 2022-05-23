Delivery-date: Mon, 23 May 2022 12:40:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt5Ts-006Pra-28
	for lore@lore.pengutronix.de; Mon, 23 May 2022 12:40:08 +0200
Received: from [2607:7c80:54:3::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt5Tq-0003ba-G5
	for lore@pengutronix.de; Mon, 23 May 2022 12:40:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ouRo1MT2mAq3KANAdrK5Z7D9CrRIcydpQm7FsTWN0wY=; b=L7RUQlx4Puma4a
	NePIccE3zlE89rdROjWETCxpAFfl6SM2LS4+U5Vnmi2FOcP29zEolLZCuaMQs47RXGPdG4Xdkkv7d
	EoBgAvMVMbdnhA7v9J8L3hw39rSnc59qQlL59Ce1NoZ05kU0Ejrw3AxNR0Jmnn7BNXzNIBCkz+Tun
	5T3GJKPTTuJ8rx8bxQ/nE7/7cj5cE2N3v/JLb7Z8UefhPrgZIfhO/yvix0aoSfJmSBKs+eNOxee+Z
	BiQAutyukx7dti4vB7h+DA4Usqi2Liw9VrCLc7MxerSQl/5Fa5u7XkYXjG+V1xWyPtZ+ez7N3DBFv
	GCsiw4P0Ecdx8yB4LW8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt5SQ-003JaF-3O; Mon, 23 May 2022 10:38:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt4Jv-002p8w-VH
 for barebox@lists.infradead.org; Mon, 23 May 2022 09:25:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nt4Jm-0005th-L7; Mon, 23 May 2022 11:25:38 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nt4Jn-0043ME-5j; Mon, 23 May 2022 11:25:37 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nt4Jj-003Jyx-UB; Mon, 23 May 2022 11:25:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 23 May 2022 11:25:19 +0200
Message-Id: <20220523092526.791716-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_022548_073491_E1926D53 
X-CRM114-Status: GOOD (  18.64  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:3::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:3::133
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH 1/8] console: add new $global.bootm.earlycon parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox already fixes up a suitable console= parameter if it can
determine one into the kernel command line. This doesn't help with early
Linux issues, which can instead be debugged by the earlycon mechanism.

For earlycon to work, the kernel DT must have a stdout-path or the user
needs to explicitly specify what driver to use and how to access it
(base address, optionally access_type).

Make this easier by just having barebox fix up the needed information
when $global.bootm.earlycon is true and the barebox serial driver
provides the needed information. If the serial driver doesn't, a plain
"earlycon" parameter will be fixed up.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c    | 24 ++++++++++++++++++++++++
 common/console.c  | 17 +++++++++++++++++
 include/console.h |  2 ++
 3 files changed, 43 insertions(+)

diff --git a/common/bootm.c b/common/bootm.c
index 3c80e8bf949b..712e6ebe4911 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -41,6 +41,7 @@ static struct image_handler *bootm_find_handler(enum filetype filetype,
 }
 
 static int bootm_appendroot;
+static int bootm_earlycon;
 static int bootm_provide_machine_id;
 static int bootm_verbosity;
 
@@ -732,6 +733,26 @@ int bootm_boot(struct bootm_data *bootm_data)
 		}
 	}
 
+	if (bootm_earlycon) {
+		struct console_device *console;
+		const char *earlycon = NULL;
+
+		for_each_console(console) {
+			if (!(console->f_active & (CONSOLE_STDOUT | CONSOLE_STDERR)))
+				continue;
+
+			earlycon = dev_get_param(&console->class_dev, "linux.bootargs.earlycon");
+			if (earlycon)
+				break;
+		}
+
+		if (!earlycon)
+			earlycon = "earlycon";
+
+		pr_info("Adding \"%s\" to Kernel commandline\n", earlycon);
+		globalvar_add_simple("linux.bootargs.bootm.earlycon", earlycon);
+	}
+
 	if (bootm_data->provide_machine_id) {
 		const char *machine_id = getenv_nonempty("global.machine_id");
 		char *machine_id_bootarg;
@@ -798,6 +819,7 @@ err_out:
 	if (data->of_root_node && data->of_root_node != of_get_root_node())
 		of_delete_node(data->of_root_node);
 
+	globalvar_remove("linux.bootargs.bootm.earlycon");
 	globalvar_remove("linux.bootargs.bootm.appendroot");
 	free(data->os_header);
 	free(data->os_file);
@@ -897,6 +919,7 @@ static int bootm_init(void)
 	globalvar_add_simple("bootm.root_dev", NULL);
 	globalvar_add_simple("bootm.tee", NULL);
 	globalvar_add_simple_bool("bootm.appendroot", &bootm_appendroot);
+	globalvar_add_simple_bool("bootm.earlycon", &bootm_earlycon);
 	globalvar_add_simple_bool("bootm.provide_machine_id", &bootm_provide_machine_id);
 	if (IS_ENABLED(CONFIG_BOOTM_INITRD)) {
 		globalvar_add_simple("bootm.initrd", NULL);
@@ -936,6 +959,7 @@ BAREBOX_MAGICVAR(global.bootm.oftree, "bootm default oftree");
 BAREBOX_MAGICVAR(global.bootm.tee, "bootm default tee image");
 BAREBOX_MAGICVAR(global.bootm.verify, "bootm default verify level");
 BAREBOX_MAGICVAR(global.bootm.verbose, "bootm default verbosity level (0=quiet)");
+BAREBOX_MAGICVAR(global.bootm.earlycon, "Add earlycon option to Kernel for early log output");
 BAREBOX_MAGICVAR(global.bootm.appendroot, "Add root= option to Kernel to mount rootfs from the device the Kernel comes from (default, device can be overridden via global.bootm.root_dev)");
 BAREBOX_MAGICVAR(global.bootm.root_dev, "bootm default root device (overrides default device in global.bootm.appendroot)");
 BAREBOX_MAGICVAR(global.bootm.provide_machine_id, "If true, append systemd.machine_id=$global.machine_id to Kernel command line");
diff --git a/common/console.c b/common/console.c
index 8727b187cf7c..c442c2dde132 100644
--- a/common/console.c
+++ b/common/console.c
@@ -220,6 +220,21 @@ static void console_init_early(void)
 	initialized = CONSOLE_INITIALIZED_BUFFER;
 }
 
+static void console_add_earlycon_param(struct console_device *cdev, unsigned baudrate)
+{
+	char *str;
+
+	if (!cdev->linux_earlycon_name)
+		return;
+
+	str = basprintf("earlycon=%s,0x%lx,%dn8", cdev->linux_earlycon_name,
+			(ulong)cdev->phys_base, baudrate);
+
+	dev_add_param_fixed(&cdev->class_dev, "linux.bootargs.earlycon", str);
+
+	free(str);
+}
+
 static void console_set_stdoutpath(struct console_device *cdev, unsigned baudrate)
 {
 	int id;
@@ -332,6 +347,8 @@ int console_register(struct console_device *newcdev)
 		console_set_stdoutpath(newcdev, baudrate);
 	}
 
+	console_add_earlycon_param(newcdev, baudrate);
+
 	if (newcdev->setbrg) {
 		ret = newcdev->setbrg(newcdev, baudrate);
 		if (ret)
diff --git a/include/console.h b/include/console.h
index 5d5783ca6668..7fea8eeb9e7d 100644
--- a/include/console.h
+++ b/include/console.h
@@ -53,6 +53,8 @@ struct console_device {
 	unsigned int baudrate_param;
 
 	const char *linux_console_name;
+	const char *linux_earlycon_name;
+	void __iomem *phys_base;
 
 	struct cdev devfs;
 	struct cdev_operations fops;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

