Delivery-date: Wed, 04 Jun 2025 15:15:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMnyG-003fF3-2A
	for lore@lore.pengutronix.de;
	Wed, 04 Jun 2025 15:15:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMnyG-0007Rw-2I
	for lore@pengutronix.de; Wed, 04 Jun 2025 15:15:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KRivewoiJg+6zBeG/gsWgoVCG/GYnVqxlZU/jlIihOA=; b=XrEXo/lTYjuvIZvSj3odFRMu9H
	TOIyj9NIKIBzDwfr0/AXZy5IYSgbqss6+ZazHgRBDwSs03aPI1jPqdsMrSk7es3L5Cn6rXQzpKLUF
	P+OHMgc7i3vxNH/utvE4WAWeuSiNSQUx5J1pX6IRQzQsfB6tgGXz64aEvcieqK2trY5rtafhu0IKf
	MJd//4VwJxXgyayjMHX/EUUZvMwynu/6O+ndvQaX19TJKwMsL/BkIV7QBCol4rGlJ+NFAbJHbRRNX
	ow9MyjJeJ2+nI8ODiQo6fHCO1T8vl9r/kPGguZMeeFgoNn+HXd6vBb8OGhAV5rDLcS9MHN1FbJS+t
	QV4k9HmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMnxb-0000000DQ97-1ESf;
	Wed, 04 Jun 2025 13:15:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMnxX-0000000DQ8K-45xH
	for barebox@lists.infradead.org;
	Wed, 04 Jun 2025 13:15:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uMnxV-00070y-82; Wed, 04 Jun 2025 15:15:09 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uMnxV-001neZ-0D;
	Wed, 04 Jun 2025 15:15:09 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uMnxU-00AInN-3D;
	Wed, 04 Jun 2025 15:15:08 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 04 Jun 2025 15:15:06 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250604-fix-tmp-file-v1-1-96a1c1a8d636@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIANlGQGgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDMwMT3bTMCt2S3AIgnZOqa2lgbGaeZJaWmpSWqgTUUlCUCpQHGxcdW1s
 LAMK0n61eAAAA
X-Change-ID: 20250604-fix-tmp-file-90367b6febfe
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_061512_026284_7D6755B7 
X-CRM114-Status: GOOD (  15.32  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fs: remove O_DIRECTORY flag from O_TMPFILE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Decompressing fit images fails since release 2025.05.0 with commit
a1248198fa ("fs: implement O_DIRECTORY").

The reason is that converting the decompression buffer fd back to a file
in the `fd_to_file` fails the `O_DIRECTORY` flag check. This is flag is
set because `O_TMPFILE` is defined to contain the `O_DIRECTORY` flag.

The `O_TMPFILE` define is copied from the linux kernel and was
introduced in commit bb458c644a59d ("Safer ABI for O_TMPFILE"), the
reasoning behind including `O_DIRECTORY` is to prevent bugs in callers
by enforcing backwards incompatibility[1] with older kernels.

Barebox doesn't need that workaround as:

1. The barebox releases are atomic and all applications are compiled in
   thus backwards (in)compatibility isn't an issue.
2. With this commit openat function checks that the path passed is a
   directory e.g. a named file `/tmp/xyz` opened with `open("/tmp/xyz",
   O_TMPFILE | O_RDWR)` will fail with `ENODIR`.

[1]: https://lore.kernel.org/all/8738rk9eai.fsf@rasmusvillemoes.dk/

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Fixes: a1248198fa ("fs: implement O_DIRECTORY")
---
 fs/fs.c         | 10 ++++++++--
 include/fcntl.h |  4 +---
 2 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 465fd617c2baa268ea3e5da784d31436629abd51..d401268c1e3420c32037e1a48d1f516d03cd61de 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2552,8 +2552,14 @@ int openat(int dirfd, const char *pathname, int flags)
 	struct dentry *dentry = NULL;
 	struct path path;
 
-	if ((flags & O_TMPFILE) == O_TMPFILE) {
-		fsdev = get_fsdevice_by_path(dirfd, pathname);
+	if (flags & O_TMPFILE) {
+		error = filename_lookup(dirfd, getname(pathname), LOOKUP_DIRECTORY, &path);
+		if (error)
+			return errno_set(error);
+
+		fsdev = get_fsdevice_by_dentry(path.dentry);
+		path_put(&path);
+
 		if (!fsdev) {
 			errno = ENOENT;
 			return -errno;
diff --git a/include/fcntl.h b/include/fcntl.h
index f3694c2bba5f418ff018e0a694480775b2a89ece..db7926ee25fbe14607063d420697964801cd8321 100644
--- a/include/fcntl.h
+++ b/include/fcntl.h
@@ -33,12 +33,10 @@
 #define O_RWSIZE_4	004000000
 #define O_RWSIZE_8	010000000
 
-#define __O_TMPFILE	020000000
+#define O_TMPFILE	020000000	/* open as temporary file in ramfs */
 #define O_PATH		040000000	/* open as path */
 #define O_CHROOT	0100000000	/* dirfd: stay within filesystem root */
 
-#define O_TMPFILE       (__O_TMPFILE | O_DIRECTORY)
-
 #if IN_PROPER
 int openat(int dirfd, const char *pathname, int flags);
 #else

---
base-commit: 8e219a9cda0f5d6145d267e27a01ff0cd828e4c8
change-id: 20250604-fix-tmp-file-90367b6febfe

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



