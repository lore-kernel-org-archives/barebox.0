Delivery-date: Tue, 18 Mar 2025 17:47:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tua5x-00170i-1N
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 17:47:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tua5v-00018j-TW
	for lore@pengutronix.de; Tue, 18 Mar 2025 17:47:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=euZchVzgoEzNDUNRW9Kd1jIComttLZk8EUUr+Dv+n9Q=; b=VHX2mdKKssnlQLz7zfqrSozDRH
	naRd7U/w6Kxm7lWn+Laip2LUQZXjk4YCTgC2BkzzNpW/nCYYmWV5egcHEUK1D3h9qbYwjYITQCkmj
	PK6vTtO3q2bavluU9k+k8Ev7ssiVELayeo6WvAHiE6D7YVBVQz4m3gzqArv/YsuuxO09J+mMnEl/c
	5TSRorvkj/KhLKqaL6iYrrZ+YjJqqgQHRH+hDzNTB1Q3NafE7U0oUeecmpTe9E3FdJxntaXtfCg5H
	dreRgOuQmTQtYQiJxU0UzIdpMMl1HbjRSxXuK2myEYuxr0cypSqFXtTtwr4VJalkQkg2XXbwsbyC/
	0giOrV0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tua5I-00000006aRk-3MQW;
	Tue, 18 Mar 2025 16:46:32 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuZsQ-00000006Y3Y-44aW
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 16:33:17 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3914aba1ce4so4851073f8f.2
        for <barebox@lists.infradead.org>; Tue, 18 Mar 2025 09:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742315593; x=1742920393; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=euZchVzgoEzNDUNRW9Kd1jIComttLZk8EUUr+Dv+n9Q=;
        b=B+N5VPDvdBgn0oZ0TY6RPToYwi3Y8BKzSJ+6391pINIiMt4+R8Cupw3NWLJmHboXPL
         yM4jeO19Sy9TCxaUsqiVtQc/UObDfwuKPXvLCGumRiGoWv9L67G9G/8SyWiudbrIeowq
         b9Ldl6pJI0i9gRqzWkFVNLHVndMzeBPhXzx6o6Rh71us7pr3uLkeoNL9yj6USQ+CvbN+
         k5uXXJcdWd3Red/fa//I5G1SNe40WJN3N+IwR+1dWG68fE1VX1DT+uCyGOZZeMd/5BbO
         LpqcDXJkOYR1ZnZC6GD/Vm8WdGeJPYAAUaJGs1pVcXgL2R+JFSh8ljIGAlFMAobWziD4
         fjWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742315593; x=1742920393;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=euZchVzgoEzNDUNRW9Kd1jIComttLZk8EUUr+Dv+n9Q=;
        b=USqIxDEUU/4Xcz+VGAvouvSUPTWoYVGB5fG26/oh0KzhlLdOI5S/kKPuO/GN+vynlw
         e9xGuX/OnyqI+GTc5kPhKS90ZoFi/Mo9s8O2hK3FRZBswydjePPDdjnsdkwZwBZzdp6C
         LQ51aRqCxraLExcGW8/xiFG7jvO2V1VAFeeFbeRQKJ2ayNapwzmvsMypdzptjJRaJ+q9
         BgL2XV33/MjJ70PGAl+Uv1Osi5qn1aEs/payHWLhywDjxcvTXbDnNwt6+rn6mGpbwQbs
         LMb4WIw9u30wsohuLyQ90ZVHwry6VjuJhtobYF4V+y5XyaBWDjlolaSqFQChVgM/3eNZ
         0xMQ==
X-Gm-Message-State: AOJu0Yz1x8K66PsW9e2fV0KhietlaPQbuAaOLvcEYT/41tIqTX4vhUJ8
	A6MEc8LC843kcXbtpU9c77X1DYTcKbInOxmJI5McGx3RZ8OYi+fG8KLBSg==
X-Gm-Gg: ASbGncvu+oc+6dsWyeFjsQZnTEMzL8S3iDG04/4yaJG8SG5iPTVb72sNpRRGv7++83s
	LXNx42eRksWW2sdtkb/8s1btjLmu6/u7betCKk5orAZeM8l/EbeS/ggIhGrcizcYZlvP+M/j3lv
	Pmr2I1OlxkkNU6VdNnROy72n23u5KrCI2ZhDPyv3KhLvuM81Ds9MoRCvRymrBFihkyaY0v5nbER
	hFUvPUUG4FVyYc0GCiejD2MsVeOFyOeyO8MRbC/FHMsgVMGFxtaLC4adTroBy6qY/JnBV3611ns
	sOSODDsV9an6wb7lR6O8fiQIkY0It5g7sIFtIDI9j9jJBGzOkifhwTJX2wmItU8=
X-Google-Smtp-Source: AGHT+IEWZWqilF7ucav9xzCBHw/AYOmI74bzcDAw3O/Obq/gjqa8AXy1iTtY7p1xWN3AHTwubo/liA==
X-Received: by 2002:a5d:47c9:0:b0:390:e311:a8c7 with SMTP id ffacd0b85a97d-3971cd57eb0mr17156980f8f.5.1742315592587;
        Tue, 18 Mar 2025 09:33:12 -0700 (PDT)
Received: from WUP-WIL0422.riedel.net ([213.240.144.190])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395cb7e9f8asm18475029f8f.81.2025.03.18.09.33.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 09:33:12 -0700 (PDT)
From: Jonas Licht <jonas.licht@gmail.com>
To: barebox@lists.infradead.org
Cc: Jonas Licht <jonas.licht@gmail.com>
Date: Tue, 18 Mar 2025 17:32:51 +0100
Message-ID: <20250318163251.352-1-jonas.licht@gmail.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250311141713.30947-1-jonas.licht@gmail.com>
References: <20250311141713.30947-1-jonas.licht@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_093315_016247_9D4C36BF 
X-CRM114-Status: GOOD (  20.60  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] environment: support reading and writing of efivar
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

scripts/bareboxenv: skip file creation to allow reading the destination
file, when existing.

In envfs_load before reading the superblock, we check if our superblock
magic exists after an EFIVAR_ATTR_SIZE offset. This is necessary because
linux kernel adds four byte variable attributes in front of each efi
variable in sysfs. When the magic is found after EFIVAR_ATTR_SIZE, we
skip reading the four bytes variable attributes.
For envfs_save detection of an efi var is done the same way. But we need
to keep the attributes, as they are required for writing as well.

In order to write to efivars, you still need to remove immutable flag
from the file with 'chattr -i' .

Signed-off-by: Jonas Licht <jonas.licht@gmail.com>
Fixes: #29
Link: https://github.com/barebox/barebox/issues/29
---
 common/environment.c | 80 ++++++++++++++++++++++++++++++++++++++++----
 scripts/Makefile     |  2 ++
 scripts/bareboxenv.c | 11 +-----
 3 files changed, 76 insertions(+), 17 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index 37adb5d678..b91c3e0afa 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -32,8 +32,11 @@
 #include <magicvar.h>
 #else
 #define EXPORT_SYMBOL(x)
+#include <autoconf.h>
 #endif
 
+#define EFIVAR_ATTR_SIZE 4
+
 struct envfs_entry {
 	char *name;
 	void *buf;
@@ -290,6 +293,41 @@ static int file_remove_action(const char *filename, struct stat *statbuf,
 }
 #endif
 
+static int detect_efi_vars(int fd, void* buf_with_efi, void** wbuf, int *size) {
+	uint32_t magic;
+	int ret;
+
+	*wbuf = buf_with_efi + EFIVAR_ATTR_SIZE;
+#ifndef CONFIG_EFI
+		return 0;
+#endif
+
+	ret = pread(fd, &magic, sizeof(uint32_t),
+		EFIVAR_ATTR_SIZE);
+	if (ret == -1 && errno == ENOENT) {
+		perror("pread");
+		// skip as file don't exist
+		return 0;
+	}
+	if (ret < sizeof(u_int32_t)) {
+		perror("pread");
+		return 0;
+	}
+
+	if (ENVFS_32(magic) == ENVFS_MAGIC) {
+		pr_info("Assuming EFI variable. Keeping attributes\n");
+		ret = pread(fd, buf_with_efi, EFIVAR_ATTR_SIZE, 0);
+		if (ret < EFIVAR_ATTR_SIZE) {
+			ret = -errno;
+			perror("read of efi attributes failed");
+			return ret;
+		}
+		*size += EFIVAR_ATTR_SIZE;
+		*wbuf = buf_with_efi;
+	}
+	return 0;
+}
+
 /**
  * Make the current environment persistent
  * @param[in] filename where to store
@@ -305,7 +343,7 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 	struct envfs_super *super;
 	int envfd, size, ret;
 	struct action_data data = {};
-	void *buf = NULL, *wbuf;
+	void *buf = NULL, *wbuf = NULL, *buf_with_efi;
 	struct envfs_entry *env;
 	const char *defenv_path = default_environment_path_get();
 
@@ -342,7 +380,9 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 		}
 	}
 
-	buf = xzalloc(size + sizeof(struct envfs_super));
+	buf_with_efi = xzalloc(size + sizeof(struct envfs_super) +
+	EFIVAR_ATTR_SIZE);
+	buf = buf_with_efi + EFIVAR_ATTR_SIZE;
 	data.writep = buf + sizeof(struct envfs_super);
 
 	super = buf;
@@ -370,7 +410,7 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 	super->crc = ENVFS_32(crc32(0, buf + sizeof(struct envfs_super), size));
 	super->sb_crc = ENVFS_32(crc32(0, buf, sizeof(struct envfs_super) - 4));
 
-	envfd = open(filename, O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR);
+	envfd = open(filename, O_RDWR | O_CREAT, S_IRUSR | S_IWUSR);
 	if (envfd < 0) {
 		printf("could not open %s: %m\n", filename);
 		ret = -errno;
@@ -385,6 +425,12 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 		goto out;
 	}
 
+	/* check if we writing efi vars */
+	ret = detect_efi_vars(envfd, buf_with_efi, &wbuf, &size);
+	if (ret != 0) {
+		goto out;
+	}
+
 	ret = erase(envfd, ERASE_SIZE_ALL, 0, ERASE_TO_WRITE);
 
 	/* ENOSYS and EOPNOTSUPP aren't errors here, many devices don't need it */
@@ -395,12 +441,11 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 
 	size += sizeof(struct envfs_super);
 
-	wbuf = buf;
-
 	while (size) {
 		ssize_t now = write(envfd, wbuf, size);
 		if (now < 0) {
 			ret = -errno;
+			perror("write");
 			goto out;
 		}
 
@@ -418,14 +463,14 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 
 	ret = 0;
 
-#ifdef CONFIG_NVVAR
+#if defined CONFIG_NVVAR && defined __BAREBOX__
 	if (defenv_path && !strcmp(filename, defenv_path))
 	    nv_var_set_clean();
 #endif
 out:
 	close(envfd);
 out1:
-	free(buf);
+	free(buf_with_efi);
 #ifdef __BAREBOX__
 	unlink_recursive(TMPDIR, NULL);
 #endif
@@ -449,6 +494,7 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 	int envfd;
 	int ret = 0;
 	size_t size, rsize;
+	uint32_t magic;
 
 	if (!filename)
 		filename = default_environment_path_get();
@@ -466,6 +512,26 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 		return -1;
 	}
 
+	/* check if we reading efi vars */
+	ret = pread(envfd, &magic, sizeof(uint32_t),
+		    EFIVAR_ATTR_SIZE);
+	if (ret < sizeof(u_int32_t)) {
+		perror("read");
+		ret = -errno;
+		goto out;
+	}
+
+	if (ENVFS_32(magic) == ENVFS_MAGIC) {
+		pr_info("Assuming EFI variable. Skip attributes\n");
+		ret = read(envfd, &magic,
+			   sizeof(uint32_t)); // simply reuse the memory
+		if (ret < sizeof(uint32_t)) {
+			perror("read");
+			ret = -errno;
+			goto out;
+		}
+	}
+
 	/* read superblock */
 	ret = read(envfd, &super, sizeof(struct envfs_super));
 	if ( ret < sizeof(struct envfs_super)) {
diff --git a/scripts/Makefile b/scripts/Makefile
index 6d89af7d4f..57d8ddb54d 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -30,6 +30,7 @@ hostprogs-always-$(CONFIG_RK_IMAGE)			+= rkimage
 HOSTCFLAGS_rkimage.o = `$(PKG_CONFIG) --cflags openssl`
 HOSTLDLIBS_rkimage = `$(PKG_CONFIG) --libs openssl`
 KBUILD_HOSTCFLAGS += -I$(srctree)/scripts/include/
+KBUILD_HOSTCFLAGS += -I$(objtree)/include/generated/
 HOSTCFLAGS_mxsimage.o = `$(PKG_CONFIG) --cflags openssl`
 HOSTLDLIBS_mxsimage  = `$(PKG_CONFIG) --libs openssl`
 HOSTCFLAGS_omap3-usb-loader.o = `$(PKG_CONFIG) --cflags libusb-1.0`
@@ -57,6 +58,7 @@ omap4_usbboot-target-userccflags += `$(CROSS_PKG_CONFIG) --cflags libusb-1.0`
 omap4_usbboot-target-userldlibs += -lpthread `$(CROSS_PKG_CONFIG) --libs libusb-1.0`
 rk-usb-loader-target-userccflags += `$(CROSS_PKG_CONFIG) --cflags libusb-1.0`
 rk-usb-loader-target-userldlibs += `$(CROSS_PKG_CONFIG) --libs libusb-1.0`
+bareboxenv-target-userccflags += -I$(objtree)/include/generated/
 
 userccflags += -I $(srctree)/$(src)/include -isystem $(srctree)/scripts/include
 
diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
index e954447015..6b9b8d90c4 100644
--- a/scripts/bareboxenv.c
+++ b/scripts/bareboxenv.c
@@ -117,7 +117,7 @@ static void usage(char *prgname)
 int main(int argc, char *argv[])
 {
 	int opt;
-	int save = 0, load = 0, pad = 0, err = 0, fd;
+	int save = 0, load = 0, pad = 0, err = 0;
 	char *filename = NULL, *dirname = NULL;
 	unsigned envfs_flags = 0;
 	int verbose = 0;
@@ -156,15 +156,6 @@ int main(int argc, char *argv[])
 		exit(1);
 	}
 
-	if (save) {
-		fd = open(filename, O_CREAT | O_TRUNC | O_WRONLY, 0644);
-		if (fd < 0) {
-			perror("open");
-			exit(1);
-		}
-		close(fd);
-	}
-
 	if (save && pad) {
 		if (truncate(filename, pad)) {
 			perror("truncate");
-- 
2.45.3



