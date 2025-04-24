Delivery-date: Thu, 24 Apr 2025 15:50:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7wyM-004u7e-2y
	for lore@lore.pengutronix.de;
	Thu, 24 Apr 2025 15:50:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7wyL-000538-V0
	for lore@pengutronix.de; Thu, 24 Apr 2025 15:50:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Od6SpIkRh+bCNXW0sqROs4uErjJb4DjwBF5wyzm+6bI=; b=CGxXXVql8vw7aye2TP7Q1Z0ztB
	Nq66HIF0xkVia222yhWYzb8zehPKVdnHHEkAsMLFlMBNKTj0ZLuv5NUCSt2bO6xhcZUziC+A6Ai9z
	9cyHBYNGJ5K5dxZZ1IyBKR37PeswXR0N7XT1lgOLbUrWDPso5w3qagawtQxcPI7RMHaMCT88kjBoX
	waoOVtP7CVFM6/tYn6Ne5SJt/7BkDKNujd929Dijt4aG8b9PSSpP6hKz3oCjzOlf2fcyAmw0Pjjpn
	UNYU+uxP6PcnPvkGBvljzA2Y8kfHe9mHLRHCjThq1kj+PtCqsmXTJNxszXPGXk50oLnvgyCwiK9Av
	sU6ubnow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7wxr-0000000EFuu-0MsV;
	Thu, 24 Apr 2025 13:50:07 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7wBX-0000000E7Yv-04uM
	for barebox@lists.infradead.org;
	Thu, 24 Apr 2025 13:00:12 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-43cfba466b2so9475465e9.3
        for <barebox@lists.infradead.org>; Thu, 24 Apr 2025 06:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745499609; x=1746104409; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Od6SpIkRh+bCNXW0sqROs4uErjJb4DjwBF5wyzm+6bI=;
        b=g7VV351bghDTlBZTQFMvjYFWMNxOlt5JcMpeKei1zoO6MeJzAPPyNQXDHZT1RyaLbq
         OUzlbhxRqqV4XWE2ikUymYpM3DRH4n68RvGP9Wta8AwEhHjupUWDNT3buQrwvuHzXqvy
         aQp+zkxuvyeILQESKOO/hHx6+IqXliWKVHl78E1T8q+LdxC+pHRs8ETt+KpD5+iNhcpz
         w2X/JnWTB0gQjmw9gDCQSQ3Dl/vanAoSAKY7aAev5MDvqPa5bM+Tgm9m1mX8zEv7sefh
         YEd7Ae5Qtrjuh97hoYzEAwjsb9jQmjjFF3wuv9jFWuSD4W5ldCOryKOP9RAoaaEUbcHD
         LfCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745499609; x=1746104409;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Od6SpIkRh+bCNXW0sqROs4uErjJb4DjwBF5wyzm+6bI=;
        b=UpAWHKJrzMZvzxHFs175WohSVTsjaSEbxM2QOcaAxq5/Mz1J+vtHYq3wuXcLnD4phK
         VuBCkHMHqOnO2qVcKxF0dSbJ14GmFy9imGov4j/bIzaFKCwyFN7cSrOhC980niSrUV0C
         fhqECHHKtwf5hWVXSXMNRvB2m7vQgEHi88XxACwNOd6+JisQTtY6Xz6sldvYs7f6nx/n
         Rz216rERWWz/aMoTw6A4TM8tLFiWhsaZREcaA18Avp7W+lOnJCCVHnuwV46jqKAxi3Pr
         9kpPBzQPvDtD30vqivp/0HbryFjvmJReo4pGuFW0d54SNlxJ1QQUugN0yjYGwQQ0tqpV
         4RZw==
X-Gm-Message-State: AOJu0YzyROwmObi0pF1LFIccbuJ5MQNvGoR7qp6z2axW2JIa13zvueSc
	x3hcAk8LuylAFaRwFqgjhC+xLIEI1nYyHORuyx1d1Pz7mDg+L+gzYQwFxw==
X-Gm-Gg: ASbGncvNs1rJaJGTe3EMRF9ciz7gyFAgAkG03wHxASxkrxDSuwwyIUfdq2g44v7yo5i
	uZlvYyfa1lig+9phad+2xP2ZFKluHGNu4QILQw0PbAki9veWs3SR5qVjmxrcyiKKRrF5Sz04yxX
	wiL1yJyUAXJtu6RtKnWoibaOez6qbGlvDz5B/F1MnaCyGUdg3k3lDLl6Iw3GuABZeufe4fITjb3
	5PLxyjduLbg0FMsvEKAwRtclSVG8ixIil7R1avWd8KY6Uq4Hyn5nNUQ6pYe3FooNZz7NCHQUFoi
	5x+LghSZdk5KEeeDWG0iQqQJz8gVxPRwEFF/A/aAKVFoSUS5ATeh/e3j3VU=
X-Google-Smtp-Source: AGHT+IHMeojIyJR1FdJ6opgjMMSUibNyIx+qXDO3uA5RLXFvxayhvrMTUpQGfZQxMbSsYSwVaZKMpg==
X-Received: by 2002:a05:600c:3b9a:b0:439:9424:1b70 with SMTP id 5b1f17b1804b1-4409bd8a761mr21703095e9.30.1745499608762;
        Thu, 24 Apr 2025 06:00:08 -0700 (PDT)
Received: from WUP-WIL0422.riedel.net ([213.240.144.190])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4408d0a7802sm52194835e9.1.2025.04.24.06.00.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 06:00:08 -0700 (PDT)
From: Jonas Licht <jonas.licht@gmail.com>
To: barebox@lists.infradead.org
Cc: Jonas Licht <jonas.licht@gmail.com>
Date: Thu, 24 Apr 2025 14:59:58 +0200
Message-ID: <20250424130000.13763-1-jonas.licht@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250311141713.30947-1-jonas.licht@gmail.com>
References: <20250311141713.30947-1-jonas.licht@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_060011_055964_BE84DAA7 
X-CRM114-Status: GOOD (  21.30  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4] environment: support reading and writing of efivar
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

scripts/bareboxenv: skip file creation to allow reading the destination
file, when existing.

In envfs_load before reading the superblock, we check with fstatfs if the file
descriptor is pointing to an efi vars.
If this is the case we skip reading the four bytes variable attributes.
For envfs_save detection of an efi var is done the same way. But we need
to keep the attributes, as they are required for writing as well.
We only do the fstatfs in scripts/bareboxenv as it is not needed in
__BAREBOX__

In order to write to efivars, you still need to remove immutable flag
from the file with 'chattr -i' .

Signed-off-by: Jonas Licht <jonas.licht@gmail.com>
Fixes: #29
Link: https://github.com/barebox/barebox/issues/29
---
 common/environment.c | 58 ++++++++++++++++++++++++++++++++++++++------
 scripts/bareboxenv.c | 26 ++++++++++++--------
 2 files changed, 67 insertions(+), 17 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index 37adb5d678..e7a77807f9 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -34,6 +34,8 @@
 #define EXPORT_SYMBOL(x)
 #endif
 
+#define EFIVAR_ATTR_SIZE 4
+
 struct envfs_entry {
 	char *name;
 	void *buf;
@@ -147,6 +149,11 @@ static int do_compare_file(const char *filename, const char *base)
 	return ret;
 }
 
+static bool is_efivarsfs_fd(int fd)
+{
+	return false;
+}
+
 #else
 #define ERASE_SIZE_ALL 0
 static inline int protect(int fd, size_t count, unsigned long offset, int prot)
@@ -290,6 +297,25 @@ static int file_remove_action(const char *filename, struct stat *statbuf,
 }
 #endif
 
+static int detect_efi_vars(int fd, void* buf_with_efi, void** wbuf, int *size) {
+	int ret;
+
+	*wbuf = buf_with_efi + EFIVAR_ATTR_SIZE;
+	if (!is_efivarsfs_fd(fd))
+		return 0;
+
+	pr_info("Assuming EFI variable. Keeping attributes\n");
+	ret = read(fd, buf_with_efi, EFIVAR_ATTR_SIZE);
+	if (ret < EFIVAR_ATTR_SIZE) {
+		ret = -errno;
+		perror("read of efi attributes failed");
+		return ret;
+	}
+	*size += EFIVAR_ATTR_SIZE;
+	*wbuf = buf_with_efi;
+	return 0;
+}
+
 /**
  * Make the current environment persistent
  * @param[in] filename where to store
@@ -305,7 +331,7 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 	struct envfs_super *super;
 	int envfd, size, ret;
 	struct action_data data = {};
-	void *buf = NULL, *wbuf;
+	void *buf = NULL, *wbuf = NULL, *buf_with_efi;
 	struct envfs_entry *env;
 	const char *defenv_path = default_environment_path_get();
 
@@ -342,7 +368,8 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 		}
 	}
 
-	buf = xzalloc(size + sizeof(struct envfs_super));
+	buf_with_efi = xzalloc(size + sizeof(struct envfs_super) + EFIVAR_ATTR_SIZE);
+	buf = buf_with_efi + EFIVAR_ATTR_SIZE;
 	data.writep = buf + sizeof(struct envfs_super);
 
 	super = buf;
@@ -370,7 +397,7 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 	super->crc = ENVFS_32(crc32(0, buf + sizeof(struct envfs_super), size));
 	super->sb_crc = ENVFS_32(crc32(0, buf, sizeof(struct envfs_super) - 4));
 
-	envfd = open(filename, O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR);
+	envfd = open(filename, O_RDWR | O_CREAT, S_IRUSR | S_IWUSR);
 	if (envfd < 0) {
 		printf("could not open %s: %m\n", filename);
 		ret = -errno;
@@ -385,6 +412,11 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 		goto out;
 	}
 
+	/* check if we writing efi vars */
+	ret = detect_efi_vars(envfd, buf_with_efi, &wbuf, &size);
+	if (ret != 0)
+		goto out;
+
 	ret = erase(envfd, ERASE_SIZE_ALL, 0, ERASE_TO_WRITE);
 
 	/* ENOSYS and EOPNOTSUPP aren't errors here, many devices don't need it */
@@ -395,12 +427,11 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 
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
 
@@ -418,14 +449,14 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 
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
@@ -449,6 +480,7 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 	int envfd;
 	int ret = 0;
 	size_t size, rsize;
+	uint32_t efi_attributes;
 
 	if (!filename)
 		filename = default_environment_path_get();
@@ -466,6 +498,18 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 		return -1;
 	}
 
+	/* check if we reading efi vars */
+	if (is_efivarsfs_fd(envfd)) {
+		pr_info("Assuming EFI variable. Skip attributes\n");
+		ret = read(envfd, &efi_attributes,
+			   EFIVAR_ATTR_SIZE);
+		if (ret < EFIVAR_ATTR_SIZE) {
+			perror("read");
+			ret = -errno;
+			goto out;
+		}
+	}
+
 	/* read superblock */
 	ret = read(envfd, &super, sizeof(struct envfs_super));
 	if ( ret < sizeof(struct envfs_super)) {
diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
index e954447015..b0da965eba 100644
--- a/scripts/bareboxenv.c
+++ b/scripts/bareboxenv.c
@@ -6,6 +6,9 @@
 #include <stdio.h>
 #include <sys/types.h>
 #include <sys/stat.h>
+#include <sys/statfs.h>
+#include <linux/magic.h>
+#include <stdbool.h>
 #include <fcntl.h>
 #include <unistd.h>
 #include <stdint.h>
@@ -83,6 +86,18 @@ static char *concat_subpath_file(const char *path, const char *f)
 	return concat_path_file(path, f);
 }
 
+static bool is_efivarsfs_fd(int fd)
+{
+	struct statfs env_statfs;
+	int ret;
+
+	ret = fstatfs(fd, &env_statfs);
+	if (ret)
+		return false;
+
+	return env_statfs.f_type == EFIVARFS_MAGIC;
+}
+
 #include <linux/list.h>
 #include <linux/list_sort.h>
 #include "../lib/list_sort.c"
@@ -117,7 +132,7 @@ static void usage(char *prgname)
 int main(int argc, char *argv[])
 {
 	int opt;
-	int save = 0, load = 0, pad = 0, err = 0, fd;
+	int save = 0, load = 0, pad = 0, err = 0;
 	char *filename = NULL, *dirname = NULL;
 	unsigned envfs_flags = 0;
 	int verbose = 0;
@@ -156,15 +171,6 @@ int main(int argc, char *argv[])
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
2.49.0



