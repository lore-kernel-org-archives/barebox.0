Delivery-date: Thu, 10 Apr 2025 13:18:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2pvo-00AoA2-0V
	for lore@lore.pengutronix.de;
	Thu, 10 Apr 2025 13:18:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2pvn-0004ri-Fu
	for lore@pengutronix.de; Thu, 10 Apr 2025 13:18:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Hm+LXmrNCxM63LwtSHOMIHefK88l175KC/zfgw9U7u0=; b=XOvP8be6duTzl0PtJ+QhMIjYDt
	Kxh3IajwAT1vI/ErW3MXCV+uN5Htc061oZ2FKJdrTrind5L4CbOm8B9SDuKZbOLXPd/537+EpDaaB
	xCNCMsNqeivnqKNgVuz01xNqkliO3sJuBmjistUlNDjlmIXjUwXv/1mf+hZbpcCqtaEuqrJ/Piwdk
	+VDPLSUU+/j2CKp3TZbixf0KazzlqCOZlUA1X4N8NvUYVmXRcDvSgitl9A66MoqquL/owLFaiXd3p
	eow8ALTQ5y5GFlAVAyHpILyF46vsXQYKghAlj8OMLAfWrIT1ZsPgWdE2CYdHNmFPknAadntsek//l
	X4jqHviQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2pvG-0000000AF0Y-1yF7;
	Thu, 10 Apr 2025 11:18:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2oev-0000000A0vw-1WCf
	for barebox@lists.infradead.org;
	Thu, 10 Apr 2025 09:57:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2oet-0004aJ-WE; Thu, 10 Apr 2025 11:57:20 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2oet-004FUX-2O;
	Thu, 10 Apr 2025 11:57:19 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2oet-009TeL-25;
	Thu, 10 Apr 2025 11:57:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 10 Apr 2025 11:57:18 +0200
Message-Id: <20250410095718.2258908-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_025721_404310_BBE9E5B3 
X-CRM114-Status: GOOD (  16.65  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: introduce simple base64 command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have base64 functionality in barebox as that's used as formatting for
sealed blobs and JWTs. Add a simple command-line interface to the
functionality for aid during development and to simplify copying short
binary strings via the console.

We do not have code to encode in barebox, so the command only supports
decoding for now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig  | 15 ++++++++
 commands/Makefile |  1 +
 commands/base64.c | 92 +++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 108 insertions(+)
 create mode 100644 commands/base64.c

diff --git a/commands/Kconfig b/commands/Kconfig
index f36dcf02a8ea..ca3f13d7e0cc 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1163,6 +1163,21 @@ config CMD_SHA256SUM
 
 	  Calculate a SHA256 digest over a FILE or a memory area.
 
+config CMD_BASE64
+	tristate
+	select BASE64
+	prompt "base64"
+	help
+	  base64 - base64 decode data
+
+	  Usage: base64 [-u] -d -o OUT IN
+
+	  Decode normal and URL base64 data
+
+	    -d		decode to base64 instead of encoding
+	    -o OUT	output file name
+	    -u		Use base64 URL character set
+
 config CMD_SHA384SUM
 	tristate
 	select COMPILE_HASH
diff --git a/commands/Makefile b/commands/Makefile
index c32727aba1b3..8c2749b5ebdd 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 obj-$(CONFIG_STDDEV)		+= stddev.o
+obj-$(CONFIG_CMD_BASE64)	+= base64.o
 obj-$(CONFIG_CMD_DIGEST)	+= digest.o
 obj-$(CONFIG_COMPILE_HASH)	+= hashsum.o
 obj-$(CONFIG_CMD_AVB_PVALUE)	+= avb_pvalue.o
diff --git a/commands/base64.c b/commands/base64.c
new file mode 100644
index 000000000000..a549f1e5231f
--- /dev/null
+++ b/commands/base64.c
@@ -0,0 +1,92 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <command.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <errno.h>
+#include <xfuncs.h>
+#include <malloc.h>
+#include <libfile.h>
+#include <getopt.h>
+#include <base64.h>
+
+static int do_base64(int argc, char *argv[])
+{
+	char *input, *output = NULL;
+	bool url = false, decode = false;
+	int opt, ret;
+	size_t bufsz, outbufsz;
+	void *inbuf = NULL, *outbuf = NULL;
+
+	while ((opt = getopt(argc, argv, "duo:")) > 0) {
+		switch(opt) {
+		case 'd':
+			decode = true;
+			break;
+		case 'u':
+			url = true;
+			break;
+		case 'o':
+			output = optarg;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	argc -= optind;
+	argv += optind;
+
+	if (argc != 1 || !output)
+		return COMMAND_ERROR_USAGE;
+
+	input = argv[0];
+
+	inbuf = read_file(input, &bufsz);
+	if (!inbuf) {
+		ret = -errno;
+		goto out;
+	}
+
+	outbuf = malloc(bufsz);
+	if (!outbuf) {
+		ret = -errno;
+		goto out;
+	}
+
+	if (!decode) {
+		printf("encoding currently not supported\n");
+		ret = -ENOSYS;
+		goto out;
+	}
+
+	if (url)
+		outbufsz = decode_base64url(outbuf, bufsz, inbuf);
+	else
+		outbufsz = decode_base64(outbuf, bufsz, inbuf);
+
+	ret = write_file(output, outbuf, outbufsz);
+out:
+	free(inbuf);
+	free(outbuf);
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(base64)
+BAREBOX_CMD_HELP_TEXT("decode normal and URL base64 data")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-d",  "decode to base64 instead of encoding")
+BAREBOX_CMD_HELP_OPT ("-o OUT",  "output file name")
+BAREBOX_CMD_HELP_OPT ("-u",  "Use base64 URL character set")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(base64)
+	.cmd		= do_base64,
+	BAREBOX_CMD_DESC("base64 decode data")
+	BAREBOX_CMD_OPTS("[-u] -d -o OUT IN")
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
+	BAREBOX_CMD_HELP(cmd_base64_help)
+BAREBOX_CMD_END
-- 
2.39.5



