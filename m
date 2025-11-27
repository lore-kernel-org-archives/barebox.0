Delivery-date: Thu, 27 Nov 2025 15:31:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOd2C-005SIY-2K
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 15:31:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOd2B-00040Y-Ve
	for lore@pengutronix.de; Thu, 27 Nov 2025 15:31:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2ndyJCOtsUseWERyDXpWRVPkakGp//wt9H2CglP5NiA=; b=tvjvfQJTi9fXJEvSAzaR1w24xt
	IS6N0ocWspyxtSXPqXJzL67hPJuAZGaVlj1Ap5ZkcvVcuZfbACQC/FmkesVvA3B10z19F0TQ1Ak/Y
	wq0YG8hY3L/qEr2Uso2bhOUx3U/b8YJnDEKWZdVxDVPEn/y22JLsQztVGOTHvmzacZsHgll/ho86S
	6EToNOofA5hhkdiVrXTjsjLKLFwiT6doad6L4b0HpjGydSMjZB8r87AZcSfr9N8ms8mfr2ZpZDEJz
	LQl+x9O1sLe2CvheOBsmZ9borU2LcSDxN3mLy7CY0EEXXUmEe9tDiOgbeW5z4Sw+R8HX7RLqi0b8D
	RVzjYKZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOd1e-0000000GmlW-0OMl;
	Thu, 27 Nov 2025 14:31:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOd1c-0000000GmjY-0cxI
	for barebox@bombadil.infradead.org;
	Thu, 27 Nov 2025 14:31:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=2ndyJCOtsUseWERyDXpWRVPkakGp//wt9H2CglP5NiA=; b=muxWACYFww8MrhNez938L12RZp
	BV3qTiZAW0ZE1oIEujD7HDNB7nu59hTz5UqvAf9ZP5aIfbVoFUxVzGyzZZyDM4gyBfsVWimWAQBJY
	dSwDZ6Oqmuql3sNIONVSmnWLohG/GVPY5a3C+EXJfq583+38YgkGIVh2OS8CFpk/CBlSObhWiWQq7
	vk0JZqq49MZfQzK9tFiSSfvcsFPjE+LJS6dFjX68vjlFlZwWCeAWazraaTDT49lzMIMZ/lwRbvr9A
	V4RK0mRIOUf2XyfxNZU7Tt/RLWhRcKykAg5bM9wYmRM+BlM/PqXS+1gwaRwopj0OEjuPMsPrso47b
	PSA0A1oQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOc9y-0000000AGtj-2p4A
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 13:35:48 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vOd1W-0003i7-6j; Thu, 27 Nov 2025 15:31:06 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>
Date: Thu, 27 Nov 2025 15:25:24 +0100
Message-ID: <20251127143052.3114915-5-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251127143052.3114915-1-f.pflug@pengutronix.de>
References: <20251127105824.3560951-1-f.pflug@pengutronix.de>
 <20251127143052.3114915-1-f.pflug@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_133546_898902_FBA88263 
X-CRM114-Status: GOOD (  18.40  )
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
Subject: [PATCH v3 4/4] bootm: introduce bootm.root_arg variable
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
 common/bootm.c  | 17 ++++++++++++-----
 fs/fs.c         | 26 --------------------------
 include/bootm.h |  1 +
 include/fs.h    |  1 -
 4 files changed, 13 insertions(+), 32 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 8efe3426fe..c00be384d0 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -70,6 +70,7 @@ void bootm_data_init_defaults(struct bootm_data *data)
 		data->initrd_file = getenv_nonempty("global.bootm.initrd");
 	}
 	data->root_dev = getenv_nonempty("global.bootm.root_dev");
+	data->root_arg = getenv_nonempty("global.bootm.root_arg");
 	data->verify = bootm_get_verify_mode();
 	data->appendroot = bootm_appendroot;
 	data->provide_machine_id = bootm_provide_machine_id;
@@ -89,6 +90,7 @@ void bootm_data_restore_defaults(const struct bootm_data *data)
 		globalvar_set("bootm.initrd", data->initrd_file);
 	}
 	globalvar_set("bootm.root_dev", data->root_dev);
+	globalvar_set("bootm.root_arg", data->root_arg);
 	bootm_set_verify_mode(data->verify);
 	bootm_appendroot = data->appendroot;
 	bootm_provide_machine_id = data->provide_machine_id;
@@ -854,11 +856,14 @@ int bootm_boot(struct bootm_data *bootm_data)
 
 			if (ret) {
 				if (!root_cdev)
-					pr_err("no cdev found for %s, cannot set root= option\n", root_dev_name);
+					pr_err("no cdev found for %s, cannot set %s= option\n",
+						root_dev_name, bootm_data->root_arg);
 				else if (!root_cdev->partuuid[0])
-					pr_err("%s doesn't have a PARTUUID, cannot set root= option\n", root_dev_name);
+					pr_err("%s doesn't have a PARTUUID, cannot set %s= option\n",
+						root_dev_name, bootm_data->root_arg);
 				else
-					pr_err("could not determine root= from %s\n", root_dev_name);
+					pr_err("could not determine %s= from %s\n",
+						bootm_data->root_arg, root_dev_name);
 			}
 
 			if (root_cdev)
@@ -872,10 +877,10 @@ int bootm_boot(struct bootm_data *bootm_data)
 		}
 
 		if (!root) {
-			pr_err("Failed to append kernel cmdline parameter 'root='\n");
+			pr_err("Failed to append kernel cmdline parameter '%s='\n", bootm_data->root_arg);
 		} else {
 			char *rootarg;
-			rootarg = format_root_bootarg("root", root, rootopts);
+			rootarg = format_root_bootarg(bootm_data->root_arg, root, rootopts);
 			pr_info("Adding \"%s\" to Kernel commandline\n", rootarg);
 			globalvar_add_simple("linux.bootargs.bootm.appendroot",
 					     rootarg);
@@ -1118,6 +1123,7 @@ static int bootm_init(void)
 	globalvar_add_simple("bootm.image.loadaddr", NULL);
 	globalvar_add_simple("bootm.oftree", NULL);
 	globalvar_add_simple("bootm.root_dev", NULL);
+	globalvar_add_simple("bootm.root_arg", "root");
 	globalvar_add_simple("bootm.tee", NULL);
 	globalvar_add_simple_bool("bootm.appendroot", &bootm_appendroot);
 	globalvar_add_simple_bool("bootm.earlycon", &bootm_earlycon);
@@ -1175,5 +1181,6 @@ BAREBOX_MAGICVAR(global.bootm.verbose, "bootm default verbosity level (0=quiet)"
 BAREBOX_MAGICVAR(global.bootm.earlycon, "Add earlycon option to Kernel for early log output");
 BAREBOX_MAGICVAR(global.bootm.appendroot, "Add root= option to Kernel to mount rootfs from the device the Kernel comes from (default, device can be overridden via global.bootm.root_dev)");
 BAREBOX_MAGICVAR(global.bootm.root_dev, "bootm default root device (overrides default device in global.bootm.appendroot)");
+BAREBOX_MAGICVAR(global.bootm.root_arg, "bootm default parameter name arg for the root partition (normally 'root' for root=/dev/...)");
 BAREBOX_MAGICVAR(global.bootm.provide_machine_id, "If true, append systemd.machine_id=$global.machine_id to Kernel command line");
 BAREBOX_MAGICVAR(global.bootm.provide_hostname, "If true, append systemd.hostname=$global.hostname to Kernel command line");
diff --git a/fs/fs.c b/fs/fs.c
index 7e06b6fdc6..76375431ff 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1257,32 +1257,6 @@ char *format_root_bootarg(const char *root_arg, char *root, char *rootopts) {
 	return bootarg;
 }
 
-/**
- * path_get_linux_rootarg() - Given a path return a suitable root= option for
- *                            Linux
- * @path: The path
- *
- * Return: A string containing the root= option or an ERR_PTR. the returned
- *         string must be freed by the caller.
- */
-char *path_get_linux_rootarg(const char *path)
-{
-	struct fs_device *fsdev;
-	char *root = NULL;
-	char *rootopts = NULL;
-
-	fsdev = get_fsdevice_by_path(AT_FDCWD, path);
-	if (!fsdev)
-		return ERR_PTR(-EINVAL);
-
-	fsdev_get_linux_root_options(fsdev, &root, &rootopts);
-
-	if (!root)
-		return ERR_PTR(-EINVAL);
-
-	return format_root_bootarg("root", root, rootopts);
-}
-
 /**
  * __is_tftp_fs() - return true when path is mounted on TFTP
  * @path: The path
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
diff --git a/include/fs.h b/include/fs.h
index c50437d609..ddd93e93ec 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -162,7 +162,6 @@ void mount_all(void);
 
 void fsdev_set_linux_root_options(struct fs_device *fsdev, const char *root, const char* rootopts);
 void fsdev_get_linux_root_options(struct fs_device *fsdev, char **root, char **rootopts);
-char *path_get_linux_rootarg(const char *path);
 
 static inline const char *devpath_to_name(const char *devpath)
 {
-- 
2.47.3



