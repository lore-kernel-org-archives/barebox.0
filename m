Delivery-date: Sun, 08 Nov 2026 21:28:02 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQ9Uf-008n8D-2S
	for lore@lore.pengutronix.de;
	Sun, 08 Nov 2026 21:28:02 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D6359201693
	for <lore@pengutronix.de>; Sun, 08 Nov 2026 21:28:01 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=M5PS+UOK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794169681;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=g1hKSYqZqhrt2s8XmXECpY15jp8NsET8lcFcDlpb63A=;
	b=AI4WEOBn1nO4zLq6iFvs81rrFyvFEl6V4PadKGg3JQiRRiODXXMXadTXJLPAh/8BeY5nMx
	e4uEush+VmJsdz0AMlHqaUfLyfCmkDHnCc52soh0H0nCVMGT8NgzJA9P+HxqGomgZwxgCm
	3AfP2Wb7GyRz4rKxLuJ1RRCDm2FpYS/bDsGVv7nGNnSoxN3oKL03L0FwdG3NthGyg8TrQv
	oBfKalUdI7YrWhe0sTGM/DNMd8fodD9Z1l3YTvpkOMy+zY2wvvkzENGZi1vGjVGHZ9PXKw
	br69OjVCq4Jh/IA4qvu261WYONoYs7Pjv+Q54PqokMwUMXlD/uvmyweV0tyIhA==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=M5PS+UOK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794169681; a=rsa-sha256;
	cv=none;
	b=MP2ViFAfUbon1QBnSssFpCLOsc1gldPQV0o34QQ0Sy71gHu04OrhZdsAVlz9anCv92asJz
	YCYftKAl6bPfBkp888qEJCixoTQMcqafhuJN7B/zA+fyD70c7ogLii6SFMTYpswT4ZNZF5
	WGrfdg0brtT0T0k4aBAD6t2zq3FsrA5nhXC1c0plK3KupgxPZwQ9mRLY1fyPpidBptf4vB
	6rFWjKnNSYDyL5xAOrmRHVtEcjgwsJIPQ9G7TqmxIhrg0np7q+4aWlP7KWUKX6F00TsyRZ
	yeDG8I8dWY+MldoD8c1XAGQeeMLjqbnrwNmzzLbGYrXttF9wXd82XU5LVjVFag==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=g1hKSYqZqhrt2s8XmXECpY15jp8NsET8lcFcDlpb63A=; b=M5PS+UOKICpy0P80Mwkgs9o/Pb
	ZrRn6KGr8YXcaLltTd0hXKUPuIserUdjuusgN1hMxrRp5BHDG25/9vJ4PKS2QRc/8BWhq5/Ug99kT
	i7pC6jS7vSdNmnibpLsheekUWQAvg9Rxt+GlMHOR1Mev9AQcOh2LvlmiC30bqJOqgnIfp6nNcmegr
	3zKQPVfpVbCAPZphbx6UgrjvU9eVvsw9Sx4B8hr02JdewQOnIEqhJEXueXLNPDqOKdMShBMf9+mGL
	RYdhFog4aM6J5e0fsuPQ8KVuFBruOkXP5R6fOq8kLN2Txn0KcS/xVD9eMyXV3iSuyjHKLscvrRcJz
	50aRfcHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ9JB-0000000GYu2-34Ts;
	Sun, 08 Nov 2026 20:16:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ9J9-0000000GYti-2U2N
	for barebox@lists.infradead.org;
	Sun, 08 Nov 2026 20:16:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xQ9J7-0002D2-S3; Sun, 08 Nov 2026 21:16:05 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] commands: go: start files 4 KiB aligned
Date: Sun,  8 Nov 2026 21:15:42 +0100
Message-ID: <20261108201605.1401306-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_121607_651888_AF1C9989 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  go memmaps the file and jumps to wherever its data happens
    to be. For a file in ramfs, that's a malloc'ed chunk, but barebox on ARM64
    addresses its data with adrp and needs to run 4 KiB aligned. Let's read files
    that can't be memmapped 4 KiB aligned into an aligned buffer instead. This
    also makes go work with files that can't be memmapped at all, like those
   on TFTP. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: D6359201693
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_NA(0.00)[barebox.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: ktqjkuf1p9q6kfnitfzqdrqw9moix9uh

go memmaps the file and jumps to wherever its data happens to be. For a
file in ramfs, that's a malloc'ed chunk, but barebox on ARM64 addresses
its data with adrp and needs to run 4 KiB aligned.

Let's read files that can't be memmapped 4 KiB aligned into an aligned
buffer instead. This also makes go work with files that can't be
memmapped at all, like those on TFTP.

Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/go.c | 48 ++++++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 44 insertions(+), 4 deletions(-)

diff --git a/commands/go.c b/commands/go.c
index 2e201c6ff3d4..2b549f3d9581 100644
--- a/commands/go.c
+++ b/commands/go.c
@@ -11,13 +11,51 @@
 #include <getopt.h>
 #include <linux/ctype.h>
 #include <errno.h>
+#include <libfile.h>
+#include <malloc.h>
+#include <linux/sizes.h>
 #include <security/config.h>
 
 #define INT_ARGS_MAX	4
 
+/* adrp, as used by e.g. barebox on ARM64, needs 4 KiB alignment */
+#define GO_ALIGN	SZ_4K
+
+static void *go_map(int fd, void **buf)
+{
+	struct stat st;
+	void *addr;
+	int ret;
+
+	addr = memmap(fd, PROT_READ);
+	if (addr != MAP_FAILED && IS_ALIGNED((ulong)addr, GO_ALIGN))
+		return addr;
+
+	ret = fstat(fd, &st);
+	if (ret)
+		return MAP_FAILED;
+
+	if (st.st_size == FILE_SIZE_STREAM || st.st_size > SIZE_MAX) {
+		errno = EFBIG;
+		return MAP_FAILED;
+	}
+
+	*buf = memalign(GO_ALIGN, st.st_size);
+	if (!*buf) {
+		errno = ENOMEM;
+		return MAP_FAILED;
+	}
+
+	ret = read_full(fd, *buf, st.st_size);
+	if (ret < 0)
+		return MAP_FAILED;
+
+	return *buf;
+}
+
 static int do_go(int argc, char *argv[])
 {
-	void	*addr;
+	void	*addr, *buf = NULL;
 	int     rcode = 1;
 	int	fd = -1;
 	void	(*func)(ulong r0, ulong r1, ulong r2, ulong r3);
@@ -55,9 +93,9 @@ static int do_go(int argc, char *argv[])
 			goto out;
 		}
 
-		addr = memmap(fd, PROT_READ);
+		addr = go_map(fd, &buf);
 		if (addr == MAP_FAILED) {
-			perror("memmap");
+			perror(argv[0]);
 			goto out;
 		}
 	} else
@@ -100,6 +138,7 @@ static int do_go(int argc, char *argv[])
 	while (1)
 		;
 out:
+	free(buf);
 	if (fd > 0)
 		close(fd);
 
@@ -110,7 +149,8 @@ BAREBOX_CMD_HELP_START(go)
 BAREBOX_CMD_HELP_TEXT("Start application at ADDR passing ARG as arguments.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("If addr does not start with a digit it is interpreted as a filename")
-BAREBOX_CMD_HELP_TEXT("in which case the file is memmapped and executed")
+BAREBOX_CMD_HELP_TEXT("in which case the file is memmapped and executed. Files that can't be")
+BAREBOX_CMD_HELP_TEXT("memmapped at a 4 KiB aligned address are read into memory first.")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-s", "pass all arguments as strings referenced by argc, argv arguments (default)")
 BAREBOX_CMD_HELP_OPT("-i", "pass up to four integer arguments using default calling convention")
-- 
2.47.3



