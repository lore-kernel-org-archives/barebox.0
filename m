Delivery-date: Thu, 17 Sep 2026 09:43:35 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x76mN-003691-0N
	for lore@lore.pengutronix.de;
	Thu, 17 Sep 2026 09:43:35 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=wMOXIf3t;
	dkim=pass header.d=waldekranz-com.20251104.gappssmtp.com header.s=20251104 header.b=Dr9pUZBP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6BD83202892
	for <lore@pengutronix.de>; Thu, 17 Sep 2026 09:43:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s+Wj/dHNO4o9YHWEiZZbERgRZvCLs727NmFXAxNu+Jc=; b=wMOXIf3tIWg8F3sCmspmhNp4Gi
	cW77RmNQNe0p4edOs0QimL+fLFAovKF4B1XWaKl3P8IofIWDmSACa8UxdOWHTid8myOPQGIyZQlRC
	H20qC+njaquWs0xIK0B03w1IIbDsSoASGfIoImVgmRc8hOudHMT69yP5DEr+YD7ASvXMoXptnDIzI
	ala1i6lCo3/jLk9B9iSB2CdLqqqcB7guBuo148qsVH4MkSyShevJZWOX9o5jGjW3EU8NH/uQGEyE+
	WRm5n2hntbX6xFxEgDl/M7HEMPt7+vpCcKQP844DKmoHt2qiLVW+JpCY7awTb2OZ3h0RYXBzwyRoh
	MvUrzb/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x76l8-0000000AnFw-2cAg;
	Thu, 17 Sep 2026 07:42:18 +0000
Received: from mail-ed2-x10.google.com ([2a00:1450:4864:33::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x76l3-0000000AnCc-2zix
	for barebox@lists.infradead.org;
	Thu, 17 Sep 2026 07:42:16 +0000
Received: by mail-ed2-x10.google.com with SMTP id 4fb4d7f45d1cf-6a99cd5115bso851734a12.3
        for <barebox@lists.infradead.org>; Thu, 17 Sep 2026 00:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20251104.gappssmtp.com; s=20251104; t=1789630932; x=1790235732; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=s+Wj/dHNO4o9YHWEiZZbERgRZvCLs727NmFXAxNu+Jc=;
        b=Dr9pUZBPXeaJgs2bMtAf43W+FBWPWXH76aSfk6E6RYD0nW7WH6wxI/2UqjYXs+jn1H
         OMz29M6FVW9VDH2gu+EZPs2/pf6weLn2BQMofLmkZhLQKYHWNVcixUNcbZfUR+OAR1R1
         9EsVg8MHQGMGIBzsAJHi9V0DK/Scn4x29UFUQbkVUrKnqiebz36GZzQaXGJtxjTSu2hX
         OhhK2VPx0Ifkz02B6YhuqTEedml7+cUmd07HPHTVOLI4YFBr7+Xaq9lNbulnfEsKDkc/
         CsMwnTklULv1wLLvqcT9EtnLjrGD0/qzR7yNxi8iWZBsfjeJCltuqM3L9sGaFDqdCYCB
         c03A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789630932; x=1790235732;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=s+Wj/dHNO4o9YHWEiZZbERgRZvCLs727NmFXAxNu+Jc=;
        b=vDeP6DHifS5MkZZ3gsqgcOayVXZMdeBbfnEpgqbpwnPBG4UI7m7aEiZubUp30UDmQz
         WZKlqgsEtp637p2EFTw1Nc2XHx9P5/IpVNcQ2B4dWDTZ5nF7cO7vpd+cVmnY5FFTovzd
         hGrikl9hxvxtLLFknzfTUaWmwlaI0uIhJyc2cRt5jZo+VBa+jIfGASdeUfEMaBA/j5By
         AhkDbfKkkh252fVclwIsUKgSOJIxps7uJ934EyAs9kIKg3toH5oAb38XVLS6B2hBGjwF
         ajHwPnZAgWSBCdkL2dWwv3wA0fIUl1j6fPufQnPRfslFgaXzD5bWsLk8erC6jQeB9G73
         zg2w==
X-Gm-Message-State: AFuF++nKz5KjQtSigYbufZYdjkLLFYNDL3g+5fvuZDFVqa3J4E6YiNs8
	xyVYfhmvxWBFkztnIYLuFDhA7iNa19rLLaw/tKp6DgbhMl7a85kwUlgI03c4iCR+jsTYVjTzHU+
	byxAA
X-Gm-Gg: AYBFou0OorQXQTTT8C/Z2Am5bCt0B6DVMYTlaGOeeS9EUjuh6oADj8BlGC/78fMTjFJ
	gTeAKhCxTkz8jRyV61vTIKKOfnObuxf4LRIJNrvE357YXt0IMlLJpHSm/QzrwXQ0HvYxpvftudd
	PJsaP1ODUTIFQp6SCDbZzNCCFOymiwkZJWWqWRenleYpTgiChwmszFpZZB8dz3Rabm867vrGF/q
	NTgQAiXoTMXc5cd2MBvBzNYXTlhvi0y3JgBILSpxFN480exxnHezqOxYZ+bPL0ePiD37T1gEuVA
	yhW53tSCHeuFdQfYoHJUns+qJ/do9WUYJo3jbctCdA5Dr2LQLD23YbW0TM8/CrwaP9IQjWmogPc
	N6wD6GRdc+iI2oskLN4xcHWGA+ghdsF83k/DWnsy8Xj0lwbUiGaD2irH8eo7AXLAvwqZEYM+PyT
	Jb9Tqq2OZQ9jp4uWejaQFQCjSNnyMr1k7SqLbnbVkYaPOJ+UmO3I+ultuqih2FvmHR+To89sOaW
	AP+SEIkh2Mm4mPGsdtEsAmlE5kme3/8tk+KHPZHz7Py3drV3gp6nEW4ePRRgLKfRh8QCIZ5lgI9
	y+4z1Spv9euwcop22XsFjw==
X-Received: by 2002:a17:907:3f9b:b0:c24:6985:d7a1 with SMTP id a640c23a62f3a-c29e51dbf46mr424471866b.7.1789630931479;
        Thu, 17 Sep 2026 00:42:11 -0700 (PDT)
Received: from spa.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c29de5e4ca9sm238865966b.42.2026.09.17.00.42.10
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 00:42:11 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Subject: [PATCH remotes/origin/next 3/5] test: self: lvm: Add tests for metadata parser and binary headers
Date: Thu, 17 Sep 2026 07:40:39 +0000
Message-ID: <20260917074202.3851071-4-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260917074202.3851071-1-tobias@waldekranz.com>
References: <20260917074202.3851071-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_004213_916015_1883AA54 
X-CRM114-Status: GOOD (  24.51  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Create a PV/VG generator that can generate images with various
    non-standard transformations, then use it to test various types of both valid
    and invalid images. Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
    --- test/self/Kconfig | 14 + test/self/Makefile | 2 + test/self/lvm.c | 818
    +++++++++++++++++++++++++++++++++++++++++++++ 3 files changed, 834 [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:33:0:0:0:10 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Stat-Signature: jpicy1xcjr3niegqaw9ssb4rydz1qmf9
X-Rspamd-Queue-Id: 6BD83202892
X-Spamd-Result: default: False [-5.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,waldekranz-com.20251104.gappssmtp.com:s=20251104];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[waldekranz.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:33::10:received];
	MIME_TRACE(0.00)[0:+];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tobias@waldekranz.com,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+,waldekranz-com.20251104.gappssmtp.com:+]
X-Rspamd-Action: no action

Create a PV/VG generator that can generate images with various
non-standard transformations, then use it to test various types of
both valid and invalid images.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 test/self/Kconfig  |  14 +
 test/self/Makefile |   2 +
 test/self/lvm.c    | 818 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 834 insertions(+)
 create mode 100644 test/self/lvm.c

diff --git a/test/self/Kconfig b/test/self/Kconfig
index 352deadf05..6db4349e23 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -49,6 +49,7 @@ config SELFTEST_ENABLE_ALL
 	select SELFTEST_IDR
 	select SELFTEST_TLV
 	select SELFTEST_DM
+	select SELFTEST_LVM if BLOCK
 	select SELFTEST_TALLOC
 	select SELFTEST_BLSPEC if BLSPEC && DEFAULT_ENVIRONMENT
 	help
@@ -153,6 +154,19 @@ config SELFTEST_TLV
 	select BASE64
 	select BOARD_LXA
 
+config SELFTEST_LVM
+	bool "LVM selftest"
+	depends on BLOCK
+	select DM_LVM
+	select RAMDISK_BLK
+	help
+	  Tests the parsing of LVM2 metadata, using physical volume
+	  images that are assembled in memory and backed by ramdisks.
+	  This covers the tokenizer, the recovery from damaged labels
+	  and metadata areas, the selection of the most recent metadata
+	  when the physical volumes of a group disagree, and the mapping
+	  of logical volumes onto the extents they are made of.
+
 config SELFTEST_DM
 	bool "Device mapper selftest"
 	select DISK
diff --git a/test/self/Makefile b/test/self/Makefile
index 2bfdbb9949..821b9fa5f3 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -27,6 +27,8 @@ obj-$(CONFIG_SELFTEST_TLV) += tlv.o tlv.dtb.o
 obj-$(CONFIG_SELFTEST_DM) += dm.o
 obj-$(CONFIG_SELFTEST_BLSPEC) += blspec.o
 bbenv-$(CONFIG_SELFTEST_BLSPEC) += defaultenv-blspec-test
+obj-$(CONFIG_SELFTEST_LVM) += lvm.o
+CFLAGS_lvm.o += -I$(srctree)/drivers/block/dm/lvm
 
 ifdef REGENERATE_KEYTOC
 
diff --git a/test/self/lvm.c b/test/self/lvm.c
new file mode 100644
index 0000000000..71f63914e2
--- /dev/null
+++ b/test/self/lvm.c
@@ -0,0 +1,818 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2026 Tobias Waldekranz <tobias@waldekranz.com>
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <block.h>
+#include <bselftest.h>
+#include <driver.h>
+#include <linux/err.h>
+#include <linux/kernel.h>
+#include <linux/sizes.h>
+#include <lvm.h>
+#include <ramdisk.h>
+#include <stdio.h>
+#include <string.h>
+#include <xfuncs.h>
+
+#include <asm/unaligned.h>
+
+/* Makefile pulls in drivers/block/dm/lvm for access to on-disk
+ * structures.
+ */
+#include <lvm2.h>
+#include <lvm-md.h>
+
+BSELFTEST_GLOBALS();
+
+#define PV_SIZE		SZ_1M
+#define MDA_OFFSET	(8 * SECTOR_SIZE)
+#define MDA_SIZE	(SZ_64K - MDA_OFFSET)
+#define PE_START	SZ_64K
+#define EXTENT_SIZE	SZ_64K
+
+#define PE_START_SECTORS	(PE_START / SECTOR_SIZE)
+#define EXTENT_SECTORS		(EXTENT_SIZE / SECTOR_SIZE)
+#define PE_COUNT		((PV_SIZE - PE_START) / EXTENT_SIZE)
+
+#define VG_UUID		"vgvgvg11112222333344445555vgvgvg"
+#define LV_UUID		"lvlvlv11112222333344445555lvlvlv"
+
+struct test_pv {
+	struct ramdisk *rd;
+	struct block_device *blk;
+	const char *devname;
+	char uuid[LVM_UUID_LEN + 1];
+	u8 *img;
+};
+
+struct test_seg {
+	int pv;
+	u64 start_extent;
+	u64 extent_count;
+	u64 pv_extent;
+};
+
+/* How the image should deviate from a well formed one. */
+struct test_vg_xfrm {
+	struct {
+		struct {
+			int image;	/* The sector in which to store the label */
+			int header;	/* The recorded sector in the header */
+		} sector;
+
+		bool bad_crc;
+	} label;
+
+	struct {
+		int copies;
+
+		bool bad_text_crc;
+		bool bad_hdr_crc;
+		bool precommitted;	/* Leave a second document behind */
+		bool wrap_text;
+	} md;
+};
+
+#define TEST_VG_XFRM_DEFAULT					\
+	.label = {						\
+		.sector = {					\
+			.image = 1,				\
+			.header = -1,				\
+		},						\
+	},							\
+	.md = {							\
+		.copies = 1, \
+	}
+
+#define TEST_MAX_PVS	2
+#define TEST_MAX_SEGS	3
+
+struct test_vg {
+	struct test_pv pvs[TEST_MAX_PVS];
+	int num_pvs;
+
+	struct test_seg segs[TEST_MAX_SEGS];
+	int num_segs;
+
+	u64 seqno;
+
+	struct test_vg_xfrm xfrm;
+};
+
+static char *generate_md(struct test_vg *tvg)
+{
+	char *text, *pvs = NULL, *segs = NULL;
+	struct test_seg *seg;
+	int i;
+
+	for (i = 0; i < tvg->num_pvs; i++)
+		pvs = xrasprintf(pvs,
+				 "    pv%u {\n"
+				 "      id = \"%s\"\n"
+				 "      device = \"/dev/%s\"\n"
+				 "      status = [\"ALLOCATABLE\"]\n"
+				 "      flags = []\n"
+				 "      dev_size = %u\n"
+				 "      pe_start = %u\n"
+				 "      pe_count = %u\n"
+				 "    }\n",
+				 i, tvg->pvs[i].uuid, tvg->pvs[i].devname,
+				 PV_SIZE / SECTOR_SIZE, PE_START_SECTORS,
+				 PE_COUNT);
+
+	for (i = 0, seg = tvg->segs; i < tvg->num_segs; i++, seg++)
+		segs = xrasprintf(segs,
+				 "      segment%u {\n"
+				 "        start_extent = %llu\n"
+				 "        extent_count = %llu\n"
+				 "        type = \"striped\"\n"
+				 "        stripe_count = 1\n"
+				 "        stripes = [\n"
+				 "          \"pv%u\", %llu\n"
+				 "        ]\n"
+				 "      }\n",
+				 i + 1, seg->start_extent, seg->extent_count,
+				 seg->pv, seg->pv_extent);
+
+	text = xasprintf("vgtest {\n"
+			 "  id = \"%s\"\n"
+			 "  seqno = %llu\n"
+			 "  format = \"lvm2\"\n"
+			 "  status = [\"RESIZEABLE\", \"READ\", \"WRITE\"]\n"
+			 "  flags = []\n"
+			 "  extent_size = %u\n"
+			 "  max_lv = 0\n"
+			 "  max_pv = 0\n"
+			 "  metadata_copies = 0\n"
+			 "  physical_volumes {\n"
+			 "%s"
+			 "  }\n"
+			 "  logical_volumes {\n"
+			 "    lv0 {\n"
+			 "      id = \"%s\"\n"
+			 "      status = [\"READ\", \"WRITE\", \"VISIBLE\"]\n"
+			 "      flags = []\n"
+			 "      segment_count = %u\n"
+			 "%s"
+			 "    }\n"
+			 "  }\n"
+			 "}\n"
+			 "# Generated by the barebox self test\n",
+			 VG_UUID, tvg->seqno, EXTENT_SECTORS, pvs, LV_UUID,
+			 tvg->num_segs, segs);
+
+	free(pvs);
+	free(segs);
+	return text;
+}
+
+static void inject_md(struct test_pv *tpv, const char *text, int copy,
+		      const struct test_vg_xfrm *xfrm)
+{
+	u64 start, head, offset = copy ? PV_SIZE - MDA_SIZE : MDA_OFFSET;
+	size_t len = strlen(text) + 1;
+	struct lvm2_md_header *hdr;
+	u32 crc;
+
+	hdr = (void *)(tpv->img + offset);
+
+	/* The document may start anywhere in the circular buffer that
+	 * follows the header, and wraps back to its beginning.
+	 */
+	start = xfrm->md.wrap_text ? MDA_SIZE - len / 2 : SECTOR_SIZE;
+	head = min_t(u64, len, MDA_SIZE - start);
+
+	memcpy(tpv->img + offset + start, text, head);
+	if (head < len)
+		memcpy(tpv->img + offset + SECTOR_SIZE, text + head,
+		       len - head);
+
+	crc = lvm2_crc(text, len);
+	if (xfrm->md.bad_text_crc && !copy)
+		crc = ~crc;
+
+	*hdr = (struct lvm2_md_header) {
+		.version = cpu_to_le32(LVM2_MDA_VERSION),
+		.start = cpu_to_le64(offset),
+		.size = cpu_to_le64(MDA_SIZE),
+	};
+	memcpy(hdr->magic, LVM2_MDA_MAGIC, sizeof(hdr->magic));
+
+	hdr->area[0] = (struct lvm2_md_area) {
+		.offset = cpu_to_le64(start),
+		.size = cpu_to_le64(len),
+		.checksum = cpu_to_le32(crc),
+	};
+
+	if (xfrm->md.precommitted && !copy) {
+		/* LVM only leaves a second document behind if it was
+		 * interrupted while committing new metadata.
+		 */
+		start = SECTOR_SIZE + len;
+		memcpy(tpv->img + offset + start, text, len);
+
+		hdr->area[1] = (struct lvm2_md_area) {
+			.offset = cpu_to_le64(start),
+			.size = cpu_to_le64(len),
+			.checksum = cpu_to_le32(lvm2_crc(text, len)),
+		};
+	}
+
+	crc = lvm2_crc(&hdr->magic, SECTOR_SIZE - sizeof(hdr->checksum));
+	if (xfrm->md.bad_hdr_crc && !copy)
+		crc = ~crc;
+
+	hdr->checksum = cpu_to_le32(crc);
+}
+
+static void inject_label(struct test_pv *tpv, const struct test_vg_xfrm *xfrm)
+{
+	u8 *sector = tpv->img + xfrm->label.sector.image * SECTOR_SIZE;
+	struct lvm2_label *label = (void *)sector;
+	struct lvm2_pv_header *pvh;
+	struct lvm2_area *mda;
+	u32 crc;
+	int i;
+
+	*label = (struct lvm2_label) {
+		.sector = cpu_to_le64(xfrm->label.sector.header < 0 ?
+				      xfrm->label.sector.image : xfrm->label.sector.header),
+		.pv_offset = cpu_to_le32(sizeof(*label)),
+	};
+	memcpy(label->id, LVM2_LABEL_ID, sizeof(label->id));
+	memcpy(label->type, LVM2_LABEL_TYPE, sizeof(label->type));
+
+	pvh = (void *)(sector + sizeof(*label));
+	*pvh = (struct lvm2_pv_header) {
+		.size = cpu_to_le64(PV_SIZE >> SECTOR_SHIFT),
+	};
+	memcpy(pvh->uuid, tpv->uuid, sizeof(pvh->uuid));
+
+	/* One data area, then the metadata areas, each list terminated
+	 * by a zeroed entry.
+	 */
+	mda = pvh->area;
+	mda->offset = cpu_to_le64(PE_START);
+	mda += 2;
+
+	for (i = 0; i < xfrm->md.copies; i++, mda++) {
+		*mda = (struct lvm2_area) {
+			.offset = cpu_to_le64(i ? PV_SIZE - MDA_SIZE : MDA_OFFSET),
+			.size = cpu_to_le64(MDA_SIZE),
+		};
+	}
+
+	crc = lvm2_crc(&label->pv_offset,
+		       SECTOR_SIZE - offsetof(struct lvm2_label, pv_offset));
+	if (xfrm->label.bad_crc)
+		crc = ~crc;
+
+	label->crc = cpu_to_le32(crc);
+}
+
+static int tvg_init(struct test_vg *tvg)
+{
+	struct test_pv *tpv;
+	char *text;
+	int i, j;
+
+	for (i = 0, tpv = tvg->pvs; i < tvg->num_pvs; i++, tpv++) {
+		memset(tpv->uuid, 'a' + i, LVM_UUID_LEN);
+		tpv->uuid[LVM_UUID_LEN] = '\0';
+
+		tpv->rd = ramdisk_init(SECTOR_SIZE);
+		if (!tpv->rd) {
+			pr_err("Failed to create ramdisk\n");
+			return -ENODEV;
+		}
+
+		tpv->img = xzalloc(PV_SIZE);
+		ramdisk_setup_rw(tpv->rd, tpv->img, PV_SIZE);
+
+		tpv->blk = ramdisk_get_block_device(tpv->rd);
+		tpv->devname = cdev_name(&tpv->blk->cdev);
+	}
+
+	text = generate_md(tvg);
+
+	for (i = 0, tpv = tvg->pvs; i < tvg->num_pvs; i++, tpv++) {
+		for (j = 0; j < tvg->xfrm.md.copies; j++)
+			inject_md(tpv, text, j, &tvg->xfrm);
+
+		inject_label(tpv, &tvg->xfrm);
+	}
+
+	free(text);
+	return 0;
+}
+
+static int tvg_init_simple(struct test_vg *tvg, const struct test_vg_xfrm *xfrm)
+{
+	*tvg = (struct test_vg) {
+		.num_pvs = 1,
+		.num_segs = 1,
+		.segs = {
+			{
+				.pv = 0,
+				.pv_extent = 0,
+				.start_extent = 0,
+				.extent_count = 2,
+			},
+		},
+		.seqno = 7,
+
+		.xfrm = *xfrm,
+	};
+
+	return tvg_init(tvg);
+}
+
+static void tpv_free(struct test_pv *tpv)
+{
+	if (tpv->rd) {
+		ramdisk_setup_rw(tpv->rd, NULL, 0);
+		ramdisk_free(tpv->rd);
+		tpv->rd = NULL;
+	}
+
+	free(tpv->img);
+	tpv->img = NULL;
+}
+
+static void tvg_free(struct test_vg *tvg)
+{
+	struct test_pv *tpv;
+	int i;
+
+	for (i = 0, tpv = tvg->pvs; i < tvg->num_pvs; i++, tpv++)
+		tpv_free(tpv);
+}
+
+static void test_lvm_simple(void)
+{
+	struct test_vg_xfrm xfrm = { TEST_VG_XFRM_DEFAULT };
+	struct test_vg tvg;
+	struct lvm_vg *vg;
+	struct lvm_lv *lv;
+	char *table, *expect;
+
+	if (tvg_init_simple(&tvg, &xfrm))
+		return;
+
+	if (!assert_cond(!lvm_vg_alloc_by_cdev(&tvg.pvs[0].blk->cdev, &vg)))
+		goto out;
+
+	assert_streq(vg->name, "vgtest");
+	assert_streq(vg->uuid, VG_UUID);
+	assert_inteq(vg->seqno, 7);
+	assert_inteq(vg->pe_size, EXTENT_SECTORS);
+	assert_inteq(vg->num_pvs, 1);
+	assert_inteq(vg->num_lvs, 1);
+
+	lv = lvm_vg_lv_by_name(vg, "lv0");
+	if (!assert_cond(lv))
+		goto out_free;
+
+	assert_streq(lv->uuid, LV_UUID);
+	assert_inteq(lv->type, LVM_LV_LINEAR);
+	assert_inteq(lv->size, 2 * EXTENT_SECTORS);
+
+	table = lvm_lv_dm_ctable(lv);
+	if (assert_cond(!IS_ERR(table))) {
+		expect = xasprintf("0 %u linear /dev/%s %u\n",
+				   2 * EXTENT_SECTORS, tvg.pvs[0].devname,
+				   PE_START_SECTORS);
+		assert_streq(table, expect);
+		free(expect);
+		free(table);
+	}
+
+out_free:
+	lvm_vg_free(vg);
+out:
+	tvg_free(&tvg);
+}
+bselftest(core, test_lvm_simple);
+
+
+/* Two PVs, holding an LV whose extents are neither contiguous nor in
+ * the order they appear on disk.
+ */
+static void test_lvm_scattered(void)
+{
+	struct test_vg tvg = {
+		.num_pvs = 2,
+		.num_segs = 3,
+		.segs = {
+			{
+				.pv = 0,
+				.pv_extent = 0,
+				.start_extent = 4,
+				.extent_count = 2,
+			},
+			{
+				.pv = 1,
+				.pv_extent = 1,
+				.start_extent = 2,
+				.extent_count = 2,
+			},
+			{
+				.pv = 0,
+				.start_extent = 0,
+				.extent_count = 2,
+				.pv_extent = 4,
+			}
+		},
+
+		.seqno = 3,
+
+		.xfrm = { TEST_VG_XFRM_DEFAULT },
+	};
+	struct lvm_vg *vg;
+	struct lvm_lv *lv;
+	char *table, *expect;
+
+	if (tvg_init(&tvg))
+		goto out;
+
+	if (!assert_cond(!lvm_vg_alloc_by_cdev(&tvg.pvs[0].blk->cdev, &vg)))
+		goto out;
+
+	assert_inteq(vg->num_pvs, 2);
+
+	lv = lvm_vg_lv_by_name(vg, "lv0");
+	if (!assert_cond(lv))
+		goto out_free;
+
+	assert_inteq(lv->size, 6 * EXTENT_SECTORS);
+
+	table = lvm_lv_dm_ctable(lv);
+	if (assert_cond(!IS_ERR(table))) {
+		/* Sorted by logical offset, with every segment mapped to
+		 * the right offset of the right device.
+		 */
+		expect = xasprintf("0 %u linear /dev/%s %u\n"
+				   "%u %u linear /dev/%s %u\n"
+				   "%u %u linear /dev/%s %u\n",
+				   2 * EXTENT_SECTORS, tvg.pvs[0].devname,
+				   PE_START_SECTORS + 4 * EXTENT_SECTORS,
+
+				   2 * EXTENT_SECTORS, 2 * EXTENT_SECTORS,
+				   tvg.pvs[1].devname,
+				   PE_START_SECTORS + 1 * EXTENT_SECTORS,
+
+				   4 * EXTENT_SECTORS, 2 * EXTENT_SECTORS,
+				   tvg.pvs[0].devname, PE_START_SECTORS);
+		assert_streq(table, expect);
+		free(expect);
+		free(table);
+	}
+
+out_free:
+	lvm_vg_free(vg);
+out:
+	tvg_free(&tvg);
+}
+bselftest(core, test_lvm_scattered);
+
+struct header_test_case {
+	const char *name;
+	bool valid;
+	struct test_vg_xfrm xfrm;
+};
+
+static const struct header_test_case header_cases[] = {
+	{
+		.name = "pristine",
+		.valid = true,
+		.xfrm = {
+			TEST_VG_XFRM_DEFAULT,
+		}
+	},
+	{
+		.name = "label in sector 0",
+		.valid = true,
+		.xfrm = {
+			TEST_VG_XFRM_DEFAULT,
+			.label.sector.image = 0,
+		}
+	},
+	{
+		.name = "label out of range",
+		.valid = false,
+		.xfrm = {
+			TEST_VG_XFRM_DEFAULT,
+			.label.sector.image = 4,
+		}
+	},
+	{
+		.name = "bad label crc",
+		.valid = false,
+		.xfrm = {
+			TEST_VG_XFRM_DEFAULT,
+			.label.bad_crc = true,
+		}
+	},
+	{
+		.name = "wrapped metadata",
+		.valid = true,
+		.xfrm = {
+			TEST_VG_XFRM_DEFAULT,
+			.md.wrap_text = true,
+		}
+	},
+	{
+		.name = "bad metadata crc",
+		.valid = false,
+		.xfrm = {
+			TEST_VG_XFRM_DEFAULT,
+			.md.bad_text_crc = true,
+		}
+	},
+	{
+		.name = "backup metadata area",
+		.valid = true,
+		.xfrm = {
+			TEST_VG_XFRM_DEFAULT,
+			.md = {
+				.bad_text_crc = true,
+				.copies = 2,
+			},
+		}
+	},
+	{
+		.name = "bad metadata header crc",
+		.valid = false,
+		.xfrm = {
+			TEST_VG_XFRM_DEFAULT,
+			.md.bad_hdr_crc = true,
+		}
+	},
+	{
+		.name = "backup after bad header",
+		.valid = true,
+		.xfrm = {
+			TEST_VG_XFRM_DEFAULT,
+			.md = {
+				.bad_hdr_crc = true,
+				.copies = 2,
+			},
+		}
+	},
+	{
+		.name = "relocated label",
+		.valid = false,
+		.xfrm = {
+			TEST_VG_XFRM_DEFAULT,
+			.label.sector.header = 2,
+		}
+	},
+	{
+		.name = "precommitted metadata",
+		.valid = false,
+		.xfrm = {
+			TEST_VG_XFRM_DEFAULT,
+			.md = {
+				.bad_text_crc = true,
+				.precommitted = true,
+			},
+		}
+	},
+};
+
+/* Images that must be parsed, and images that must be rejected. */
+static void test_lvm_headers(void)
+{
+	struct test_vg tvg;
+	struct lvm_vg *vg;
+	int err, i;
+
+	for (i = 0; i < ARRAY_SIZE(header_cases); i++) {
+		if (tvg_init_simple(&tvg, &header_cases[i].xfrm))
+			return;
+
+		err = lvm_vg_alloc_by_cdev(&tvg.pvs[0].blk->cdev, &vg);
+		if (!assert_inteq(!err, header_cases[i].valid))
+			pr_warn("%s: unexpectedly %s\n", header_cases[i].name,
+				err ? "rejected" : "accepted");
+
+		if (!err)
+			lvm_vg_free(vg);
+
+		tvg_free(&tvg);
+	}
+}
+bselftest(core, test_lvm_headers);
+
+/* When the PVs of a VG disagree, the most recently updated metadata
+ * wins.
+ */
+static void test_lvm_seqno(void)
+{
+	struct test_vg tvg = {
+		.num_pvs = 2,
+		.num_segs = 1,
+		.segs = {
+			{
+				.pv = 0,
+				.start_extent = 0,
+				.extent_count = 2
+			},
+		},
+		.seqno = 4,
+		.xfrm = { TEST_VG_XFRM_DEFAULT },
+	};
+	struct lvm_vg_iter *iter;
+	struct lvm_vg *vg;
+	int found = 0;
+	char *text;
+
+	if (tvg_init(&tvg))
+		goto out;
+
+	/* Rewrite the second PV with a newer document. */
+	tvg.seqno = 9;
+	text = generate_md(&tvg);
+	inject_md(&tvg.pvs[1], text, 0, &tvg.xfrm);
+	free(text);
+
+	iter = lvm_vg_iter_new();
+
+	/* The iterator hands over ownership of every VG it returns. */
+	while ((vg = lvm_vg_iter_next(iter))) {
+		if (!strcmp(vg->name, "vgtest")) {
+			found++;
+			assert_inteq(vg->seqno, 9);
+		}
+
+		lvm_vg_free(vg);
+	}
+
+	/* Both PVs describe the same VG, which must be reported once. */
+	assert_inteq(found, 1);
+	lvm_vg_iter_free(iter);
+out:
+	tvg_free(&tvg);
+}
+bselftest(core, test_lvm_seqno);
+
+/* An LV that references a PV which is not present must not be mapped. */
+static void test_lvm_missing_pv(void)
+{
+	struct test_vg tvg = {
+		.num_pvs = 2,
+		.num_segs = 2,
+		.segs = {
+			{ .pv = 0, .start_extent = 0, .extent_count = 2 },
+			{ .pv = 1, .start_extent = 2, .extent_count = 2 },
+		},
+		.seqno = 1,
+		.xfrm = { TEST_VG_XFRM_DEFAULT },
+	};
+	struct lvm_vg *vg;
+	struct lvm_lv *lv;
+	char *table;
+
+	if (tvg_init(&tvg))
+		goto out;
+
+	/* Take the second PV away again, leaving the metadata on the
+	 * first one referring to a device that is not there.
+	 */
+	tpv_free(&tvg.pvs[1]);
+
+	if (!assert_cond(!lvm_vg_alloc_by_cdev(&tvg.pvs[0].blk->cdev, &vg)))
+		goto out;
+
+	lv = lvm_vg_lv_by_name(vg, "lv0");
+	if (!assert_cond(lv))
+		goto out_free;
+
+	table = lvm_lv_dm_ctable(lv);
+	if (!assert_cond(IS_ERR(table))) {
+		pr_warn("mapped an LV with a missing PV: %s\n", table);
+		free(table);
+	}
+
+out_free:
+	lvm_vg_free(vg);
+out:
+	tvg_free(&tvg);
+}
+bselftest(core, test_lvm_missing_pv);
+
+/* Documents that the tokenizer must reject, and one that it must
+ * not.
+ */
+static void test_lvm_md_parse(void)
+{
+	static const struct {
+		const char *text;
+		bool valid;
+	} md_cases[] = {
+		{ "", true },
+		{ "vg {\n}\n", true },
+		{ "vg {\nid = \"x\"\n}\n", true },
+		{ "vg {\nflags = []\n}\n", true },
+		{ "vg {\na = [1, 2, 3]\n}\n", true },
+		{ "# just a comment\n", true },
+		{ "vg {\nid = \"x\" # trailing\n}\n", true },
+		{ "a = 1\0garbage", true },
+		{ "vg {\n", false },
+		{ "vg }\n", false },
+		{ "vg {\nid = \n}\n", false },
+		{ "vg {\nid = \"unterminated\n}\n", false },
+		{ "vg {\na = [1, 2\n}\n", false },
+		{ "= 1\n", false },
+		{ "vg {\n}\n}\n", false },
+		{ "\x01\x02\x03", false },
+	};
+	struct lvm_md *md;
+	int err, i;
+
+	for (i = 0; i < ARRAY_SIZE(md_cases); i++) {
+		err = lvm_md_parse_alloc(md_cases[i].text,
+					 strlen(md_cases[i].text), &md);
+
+		if (!assert_inteq(!err, md_cases[i].valid))
+			pr_warn("\"%s\" unexpectedly %s\n", md_cases[i].text,
+				err ? "rejected" : "accepted");
+
+		if (!err)
+			lvm_md_free(md);
+	}
+}
+bselftest(parser, test_lvm_md_parse);
+
+/* The accessors on top of the tokenizer. */
+static void test_lvm_md_access(void)
+{
+	static const char text[] =
+		"vg {\n"
+		"  id = \"abc\"\n"
+		"  seqno = 42\n"
+		"  nested {\n"
+		"    deep = 7\n"
+		"  }\n"
+		"  arr = [\"a\", 2]\n"
+		"  dangling\n"
+		"}\n";
+	const lvm_tok_t *vg, *key, *tok;
+	struct lvm_md *md;
+	char *str;
+	u64 v;
+
+	if (!assert_cond(!lvm_md_parse_alloc(text, strlen(text), &md)))
+		return;
+
+	vg = lvm_md_vgsect(md, &key);
+	if (!assert_cond(vg))
+		goto out;
+
+	str = lvm_md_tok_xstrdup(md, key);
+	assert_streq(str, "vg");
+	free(str);
+
+	str = lvm_md_strdup(md, vg, "id");
+	if (assert_cond(str)) {
+		assert_streq(str, "abc");
+		free(str);
+	}
+
+	assert_cond((!lvm_md_u64(md, vg, "seqno", &v) && v == 42));
+
+	/* A missing key, and a key without a value, both come back
+	 * empty rather than as something one past the end.
+	 */
+	assert_cond(!lvm_md_find(md, vg, "nosuchkey"));
+	assert_cond(!lvm_md_find(md, vg, "dangling"));
+	assert_cond(lvm_md_u64(md, vg, "nosuchkey", &v));
+
+	tok = lvm_md_find(md, vg, "nested");
+	if (assert_cond(tok)) {
+		assert_inteq(tok->type, LVM_TOK_SECTION);
+		assert_cond((!lvm_md_u64(md, tok, "deep", &v) && v == 7));
+	}
+
+	tok = lvm_md_find(md, vg, "arr");
+	if (assert_cond(tok)) {
+		assert_inteq(tok->type, LVM_TOK_ARRAY);
+		assert_inteq(tok->size, 2);
+
+		key = lvm_md_first(md, tok);
+		if (assert_cond(key)) {
+			str = lvm_md_tok_xstrdup(md, key);
+			assert_streq(str, "a");
+			free(str);
+
+			key = lvm_md_next(md, tok, key);
+			assert_cond((key &&
+				     !lvm_md_tok_u64(md, key, &v) && v == 2));
+		}
+	}
+
+out:
+	lvm_md_free(md);
+}
+bselftest(parser, test_lvm_md_access);
-- 
2.43.0



