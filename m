Delivery-date: Thu, 20 Mar 2025 10:24:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvC8C-001phq-1E
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 10:24:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvC8A-0001Vp-Pg
	for lore@pengutronix.de; Thu, 20 Mar 2025 10:24:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QrS9oJXqYpjDUXgoJxT3d3uaHOIeca5Tv0QrtovxGTA=; b=u1pkx96ghg9WoAc8e90hT1ZJWM
	rdcbWvQinS5hZ0BXoIdexK5ZiUp089n/Tsmm4ZVRE8324WRgcHdCcPsI9EL4hs8Xk4rwFWKXQfyAu
	88N/PYzfOmEGcih7POBIO6PGpbttKch5Lc+3EqwjgGIZmIpVrQSPv8Sp/g7E9Nt5Gxow2pJJ8gXGk
	NQsto49hBc3aOAHqaIuOF7dkhVyIUnEjNvYJ2kqi9w+2wsXrn6V6+EC/rTnD5RQHdG/sOlkd5/bXe
	uBg4k0HgECO8EMqvQz+TchRY6GtyqQXBLgbN5M0XWuS6fTYcGz5N3h10UXUwf4Y+fizdcy5k7GzCe
	6K7XjLiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvC7k-0000000BgCh-09af;
	Thu, 20 Mar 2025 09:23:36 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvC7h-0000000BgBR-2DSN
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 09:23:34 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-38f2f391864so260108f8f.3
        for <barebox@lists.infradead.org>; Thu, 20 Mar 2025 02:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742462611; x=1743067411; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QrS9oJXqYpjDUXgoJxT3d3uaHOIeca5Tv0QrtovxGTA=;
        b=Fg3jOGcu+TS9QPI5i/h1QppLZ4D69WldxZvbsCxnGrJrG3oUqkqjW56CQ+w9TEiUKx
         fstqWNZ1tQNlh39vUsqQK1SCYEmqbp8Moui3h+AU+mdIivV3SLXFAqraYSMcbPUopnoF
         og2HefuYdGp+qAtFUswnCemrbKtVnIW5FRlt/AvvGfJsIK4Xi7ccegyfTYdF4qLQ8VMG
         nhD8/XaC30oBbh9hdSklVoSwcYLfz/6RHZgvuLebdUhHL44gOSXf0xqRPmMqxorOmxZr
         W3q4K1PEXId2ztkjSf99fhYgGsMgxT+/68HucKJhm2GbA/vxyLqWXgGbXBvPprkC1Aca
         aLVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742462611; x=1743067411;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QrS9oJXqYpjDUXgoJxT3d3uaHOIeca5Tv0QrtovxGTA=;
        b=r04MKD/uDw/ZmwQW+VUOCee6WtnLtnCeYXKIw5kls9y3VcGbJFV3Kqlv8E8xJA6q6/
         6ENJDHBukGmG3nvBr+dMZRH9iLhqpvg9/papgRnGQV81JJisNdtO/Q0GohraoJIiN17+
         stSHuyy/y8TTHA1S8bLAW8TJobDFiW/uIYEvKLyjKxhO3qRdTnhAhnLAS53GUd5aDT+R
         DBuBPukv/k7JSbJlKs8UXjZo6zOYZd9wbrwOkN5IvvoCt8GtIDHVM30ehzQwRtpQhoEJ
         ac5E2OpMiE18QodzYYpP5B9XNTYFzVC45R4F8Y9MJAbPifoUZzDjO7PeDtVm2U1qdiO1
         XQiw==
X-Gm-Message-State: AOJu0YwiyMqxiDf0HFr4QHGZMcLJLXlZOyE4nJKqXlrGRxEZSWwR1dC3
	bR2aR+vRdipP//9lu1Siat8YfSnx27GxZUOfX7qLgpZ5QMLp5ypervYviw==
X-Gm-Gg: ASbGncs9A5fndFu0wrmsGhz1oU8LCdYYeaTl58fAiydUCb5q0+R9+QLBVLaveNev4nt
	47vXnQx6sLWCeWYOoHcNMutss7p0e9w/Us9p6gmULqhQmtaYR4On/znRxDCcVAM5tBxrvi7NVJV
	OWHlJDsh5UoLMib1bXfwkSzBKHYGRaSsZoTd9YLe4YJWN2HHIcTCMSwJ5iDPcQeHYbN/0odapse
	Ec74HiAtx2SaNVhqTST6dIUjGFHUdjkloMNM3gwcKVBf4Yy0K/jjzogQfCbuyjNrU+JsH/hUXeE
	4eAH0+OGNPqQ6OnLQH0Z4jHNz57SS6zf0Fe8kXItVNsWWEe/j9TYSVE21+uIih0=
X-Google-Smtp-Source: AGHT+IGNsfTW43crImGsLBkfqaucwVXBBRbcVLjHFjmrejYSxqxQdIfpJcUAzlmIthmh03Y5nFo+Dw==
X-Received: by 2002:a05:6000:2d0f:b0:391:40b8:e890 with SMTP id ffacd0b85a97d-399795a9b9amr1414536f8f.22.1742462611068;
        Thu, 20 Mar 2025 02:23:31 -0700 (PDT)
Received: from WUP-WIL0422.riedel.net ([213.240.144.190])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3978ef9a23bsm19025022f8f.15.2025.03.20.02.23.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Mar 2025 02:23:30 -0700 (PDT)
From: Jonas Licht <jonas.licht@gmail.com>
To: barebox@lists.infradead.org
Cc: Jonas Licht <jonas.licht@gmail.com>
Date: Thu, 20 Mar 2025 10:22:27 +0100
Message-ID: <20250320092300.21427-2-jonas.licht@gmail.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250311141713.30947-1-jonas.licht@gmail.com>
References: <20250311141713.30947-1-jonas.licht@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_022333_570184_4A96CBA2 
X-CRM114-Status: GOOD (  22.63  )
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
Subject: [PATCH v3] environment: support reading and writing of efivar
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
Skip the detect code when __BAREBOX__ is defined as well.
I've noticed that the first pread in detect_efi_vars never comes back
in __BAREBOX__ , when the efivar file don't exists, but doing this on a
file at /tmp works.

 common/environment.c | 84 ++++++++++++++++++++++++++++++++++++++++----
 scripts/Makefile     |  2 ++
 scripts/bareboxenv.c | 11 +-----
 3 files changed, 80 insertions(+), 17 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index 37adb5d678..70639e4037 100644
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
+#if !defined CONFIG_EFI || defined __BAREBOX__
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
@@ -449,6 +494,9 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 	int envfd;
 	int ret = 0;
 	size_t size, rsize;
+#if defined CONFIG_EFI && !defined __BAREBOX__
+	uint32_t magic;
+#endif
 
 	if (!filename)
 		filename = default_environment_path_get();
@@ -466,6 +514,28 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 		return -1;
 	}
 
+#if defined CONFIG_EFI && !defined __BAREBOX__
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
+#endif
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



