Delivery-date: Fri, 25 Sep 2026 12:57:14 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xA3cA-0068iC-2S
	for lore@lore.pengutronix.de;
	Fri, 25 Sep 2026 12:57:14 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 433BA202122
	for <lore@pengutronix.de>; Fri, 25 Sep 2026 12:57:14 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1RrpLMF1;
	dkim=pass header.d=waldekranz-com.20251104.gappssmtp.com header.s=20251104 header.b=d0cPYlfi;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790333834;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=d/TSK2w/h7CRCOELF8J+ez+sTsOrF1C/NH0TtnUIAlE=;
	b=a8hyfv+xlec2vXwZWXDbNOAKOppH5qVEcR6HktdPSYeQERl59J4XeUCiBAFba+Ok6A2rB6
	giWTbaiNVjjk5odh8XxO4tFPbwlQOh/3Q/nfz91p9DX0T1IiUT58Dy7/2XzmP2Dd36h7vi
	ViQg6sny5s5e1FO4rlaKRmC327EEQRwXum4BFnxfCJOWVCx/lwcAtSQyHWOyZBSQT7f7iy
	ZQA2z57y8aMzMgXPOr+XP3rp5ScCdtjmB0t0oflLWHnssAAP39PAGZKHxxHstQFUqeDL4p
	EZnmBGtNca2iudfq3pTC2lNwrbW3Z5nFqbTo6uPKi5XpqQwWmFqFoPX+MEP89A==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790333834; a=rsa-sha256;
	cv=none;
	b=UMBt1TYRVV5spYZBuPVoeuKQhQ4Y+n9U/xKtU64haoHHmgsa5pZSIp9SB7YRoZfPl9En6z
	fsfWQ+W4vT+1lElrhbOhqPpaWW3Yecis03Jvfy41LpVMM9dm2HKG4rOVUEecDEAdyZNqha
	yfGYXQRvIHWEoRYSsytko6GfYoki6zHpd4eBRTCGfj5r5DEi+ITwSIeZEKKky0KFkVpFT1
	8Eh5cRdKI9cm/7lpWyFjjFo90bi32CXCIwiXOL+ifMNfmrMEbGaNrQTC+MrDQaLfdBnRbh
	J7WvF9X7M4Xe0iiiJrnu10S7MD0EEEtzYa2M13WUGIA7dNzU0NqXHk/CIztbYA==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1RrpLMF1;
	dkim=pass header.d=waldekranz-com.20251104.gappssmtp.com header.s=20251104 header.b=d0cPYlfi;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d/TSK2w/h7CRCOELF8J+ez+sTsOrF1C/NH0TtnUIAlE=; b=1RrpLMF1bmIA+9duvWlxoym12O
	WH2ajxkQCapH4cSAtSRhpT2uFwDq/SbPUFq37jBDP9wwt9HJ/FZJJI6crCq3DwAKR770hYJocTlZn
	oqN8j2gmuEBQJjg6MRVVuICWUcYkoHTwgzw6pnqihQpJyz5AQAbxdk+Kt/vsZ/Qn9LBGcv2N0MsPU
	EOAORGP9DAX5EN2oWutuRJagIQ9kCFf+YBi1H92pGIxZiTgPnz5HL72PEELb3+icM6IPdtvDC98e+
	YYRqss0gn5Wm7ZqH19JgIsgV5o4qIOYbCOXVzCPavEVT1SwgqC+/oZPtNfsaYdMlWPN9FmpPqnlhz
	rS0JsobA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA3aR-0000000D8bO-1iTu;
	Fri, 25 Sep 2026 10:55:27 +0000
Received: from mail-ej2-x10.google.com ([2a00:1450:4864:34::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA3aL-0000000D8YR-462E
	for barebox@lists.infradead.org;
	Fri, 25 Sep 2026 10:55:25 +0000
Received: by mail-ej2-x10.google.com with SMTP id a640c23a62f3a-c254f9f7dbfso84533266b.2
        for <barebox@lists.infradead.org>; Fri, 25 Sep 2026 03:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20251104.gappssmtp.com; s=20251104; t=1790333719; x=1790938519; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=d/TSK2w/h7CRCOELF8J+ez+sTsOrF1C/NH0TtnUIAlE=;
        b=d0cPYlfi+Ikgo7n/UArXzxzIktTxTDBiOuar3Hdn7h/VEo9DeEYbtQr0L4uJh0FR3w
         teLa3eqRjiwZSuRNoEna5qDmDQ460J+Wp3R/CYzxyfHjF/R1hdnLKZt8qU6mNltDsIBq
         UNIoFF5/hGpV2i6dOlEOXni7lEVrb4b+OOFd4ZZABn60/pjxYXXqm4ar4vAvLwvqDrHY
         zXxslkzxBfULVudW6ny/7KloNftOb99nLgUiIVZtkU/CwpRPH/vzIKtxdGZPMpK7z73q
         WceNJnRryGTr6Kduu1Y370bdRhXebVt0hXpKa46kblivRrt3fOvj4qgaS/w6FVR8AuFX
         aSyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790333719; x=1790938519;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=d/TSK2w/h7CRCOELF8J+ez+sTsOrF1C/NH0TtnUIAlE=;
        b=jKlHT6JupjFB9zx1jI5NpKRkgb49ZqWdbZ6x81gCIXc5IZe1oWKtWUVGKxQWcKlI9h
         BnjwMXuaeobnrbAcCY/JDJFO/BGGtK49ym0UpY0CQbpKgn4O+bJtuLPKfr8chvej59gX
         Y5kCBD0lBZOJjt3B43X5HxFEVrhegXnrxcN2LJ9dhrbKt77T29rpW6A6XFyXlnfhUFzO
         L30YjO/fsEKYowPLzCiQbEU7IcLheJFMZPOFALtWMBOA92cp/+IpE67gpcwZtUQQ+zMW
         IfekQeF09kERSYPn90PPdefSb3uv3rHB+2EBIHNAZo9aOnxR923vRigaIGddKx13N2LC
         cz/w==
X-Gm-Message-State: AFuF++lYtxeH6BrK1eI6n8T6Llt3Xz6VHcLZPd9giGFNYopTV7tcFA1g
	AyYBz4V9sRFBuPRlFVD0VUkTx7LWHlthiH4rYUR3bz/o/N2d/rYc348fBZ5xSVsyvevFTGOT1mB
	U8w8K
X-Gm-Gg: AYBFou0NkWRPW/P2EK4bEEXbKrQ9ktMCsNidh8C1ekCVbZhgcLpmCzauPHWrneybFjc
	OlRKRt0R8BpJqI+p2RtXrbC/BIFIvP5gVRsbhiDKTROix85ydSzomDebW3EFhWy1/thPJ0rvDIS
	qoZ+k1E5lFi+Cs0rk27SSfMMIMxFUINy/I3/khYUjbdWiz/zhtI7xo6Wduj5NIB8eXhSEhYGC6b
	PPO5RMPmoFUSYVFJvyGX0wklBvVtzQ28b2vQEilv5YLg0Q7an1TlwPqNT/uGeN01qKQU1l1DsNT
	Z7yFBZAkKvToXnV9lg2XmkgGhm7E1vjW7inW/H+5ozgQXg4bM+OuKQX4R+uebMca9gip9szMqmE
	sGKhKPnukd6IqsQKWrHGA8FWMA3ebdaqq6OqZ45t1bLtf7xqa6gjo9/HmqYeUfMRAvA+bN7VjOl
	wTXRTA+P39cVOH3ZcdF3WziddN0Lrq1NHM1CBy1VAgefeO9PGdHGWpAlZyZaCWynm5P4lOuCTFV
	TzFH5ppHmIvHYWDV2chw+VXZzrTpnSHNAyq0iCGKx2q6ATtUqxGfAxJfm+XvvLr7Hfrvxb1y5sX
	1IgikzNtAqyeLibuBo1s
X-Received: by 2002:a17:907:3f83:b0:c2a:704c:8c74 with SMTP id a640c23a62f3a-c2ac259cad1mr500145766b.28.1790333719122;
        Fri, 25 Sep 2026 03:55:19 -0700 (PDT)
Received: from spa.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2ae757ac8dsm98416066b.25.2026.09.25.03.55.18
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2026 03:55:18 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Subject: [PATCH v2 next 2/5] dm: lvm: Add fuzz testers for metadata parser and binary headers
Date: Fri, 25 Sep 2026 10:54:24 +0000
Message-ID: <20260925105510.1431927-3-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260925105510.1431927-1-tobias@waldekranz.com>
References: <20260925105510.1431927-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260925_035522_062940_C49EA87A 
X-CRM114-Status: GOOD (  21.91  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  For the header parser, we help the fuzzer along by ensuring
    enough of the basic structure is in place that allows it to reach deeper
   into the code, rather than immediately bailing out on missing magic [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:34:0:0:0:10 listed in]
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
X-Spamd-Result: default: False [-5.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,waldekranz-com.20251104.gappssmtp.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[waldekranz.com];
	RCPT_COUNT_ONE(0.00)[1];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	MIME_TRACE(0.00)[0:+];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FROM_NEQ_ENVFROM(0.00)[tobias@waldekranz.com,barebox-bounces@lists.infradead.org];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:34::10:received];
	DKIM_TRACE(0.00)[lists.infradead.org:+,waldekranz-com.20251104.gappssmtp.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 433BA202122
X-Stat-Signature: k6pct3c13jxuskyjubx7o8ibu3nfby1u

For the header parser, we help the fuzzer along by ensuring enough of
the basic structure is in place that allows it to reach deeper into
the code, rather than immediately bailing out on missing magic values
or incorrect CRCs.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 drivers/block/dm/lvm/Makefile   |   1 +
 drivers/block/dm/lvm/lvm-fuzz.c | 182 ++++++++++++++++++++++++++++++++
 images/Makefile.sandbox         |   2 +
 test/testdata/fuzz/lvm-md.dict  |  29 +++++
 test/testdata/fuzz/lvm.dict     |  30 ++++++
 5 files changed, 244 insertions(+)
 create mode 100644 drivers/block/dm/lvm/lvm-fuzz.c
 create mode 100644 test/testdata/fuzz/lvm-md.dict
 create mode 100644 test/testdata/fuzz/lvm.dict

diff --git a/drivers/block/dm/lvm/Makefile b/drivers/block/dm/lvm/Makefile
index b85f2714d1..b0be22db20 100644
--- a/drivers/block/dm/lvm/Makefile
+++ b/drivers/block/dm/lvm/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-y += lvm-core.o lvm-md.o
+obj-$(CONFIG_FUZZ) += lvm-fuzz.o
diff --git a/drivers/block/dm/lvm/lvm-fuzz.c b/drivers/block/dm/lvm/lvm-fuzz.c
new file mode 100644
index 0000000000..3eaec8c14b
--- /dev/null
+++ b/drivers/block/dm/lvm/lvm-fuzz.c
@@ -0,0 +1,182 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2026 Tobias Waldekranz <tobias@waldekranz.com>
+
+#include <block.h>
+#include <fuzz.h>
+#include <lvm.h>
+
+#include "lvm2.h"
+#include "lvm-md.h"
+
+static int fuzz_lvm_md(const char *text, size_t size)
+{
+	struct lvm_md *md;
+
+	if (!lvm_md_parse_alloc(text, size, &md))
+		lvm_md_free(md);
+
+	return 0;
+}
+fuzz_test_str("lvm-md", fuzz_lvm_md);
+
+static void lvm_fuzz_fixup_mda(u8 *img, size_t size, u64 mda_offset, u64 mda_size)
+{
+	struct lvm2_md_header *hdr;
+	struct lvm2_md_area *area;
+	u64 off, len, wrap;
+	u8 *text;
+
+	if (mda_offset >= size || mda_size < SECTOR_SIZE ||
+	    mda_size > size - mda_offset)
+		return;
+
+	hdr = (void *)(img + mda_offset);
+	memcpy(hdr->magic, LVM2_MDA_MAGIC, sizeof(hdr->magic));
+	put_unaligned_le32(LVM2_MDA_VERSION, &hdr->version);
+
+	for (area = hdr->area;
+	     (u8 *)(area + 1) <= (u8 *)hdr + SECTOR_SIZE; area++) {
+		off = get_unaligned_le64(&area->offset);
+		len = get_unaligned_le64(&area->size);
+
+		if (!off && !len)
+			break;
+		if (!len || off >= mda_size || len > mda_size)
+			continue;
+
+		text = malloc(len);
+		if (!text)
+			return;
+
+		if (off + len > mda_size) {
+			wrap = mda_size - off;
+
+			if (SECTOR_SIZE + (len - wrap) > mda_size)
+				goto next;
+
+			memcpy(text, img + mda_offset + off, wrap);
+			memcpy(text + wrap,
+			       img + mda_offset + SECTOR_SIZE,
+			       len - wrap);
+		} else {
+			memcpy(text, img + mda_offset + off, len);
+		}
+
+		put_unaligned_le32(lvm2_crc(text, len), &area->checksum);
+next:
+		free(text);
+	}
+
+	/* Last, as it covers the descriptors fixed up above. */
+	put_unaligned_le32(lvm2_crc(hdr->magic,
+				    SECTOR_SIZE
+				    - offsetof(struct lvm2_md_header, magic)),
+			   &hdr->checksum);
+}
+
+static void lvm_fuzz_fixup_image(u8 *img, size_t size)
+{
+	struct lvm2_pv_header *pvh;
+	struct lvm2_label *label;
+	struct lvm2_area *area;
+	u8 *sector = NULL;
+	u32 pv_offset;
+	int s;
+
+	for (s = 0; s < LVM2_LABEL_SCAN_SECTORS; s++) {
+		if ((size_t)(s + 1) << SECTOR_SHIFT > size)
+			break;
+
+		label = (void *)(img + ((size_t)s << SECTOR_SHIFT));
+		if (!memcmp(label->id, LVM2_LABEL_ID, sizeof(label->id))) {
+			sector = (u8 *)label;
+			break;
+		}
+	}
+
+	/* Without a label there is nothing to find, so plant one in the
+	 * sector that LVM uses by default, leaving the rest of it as it
+	 * is.
+	 */
+	if (!sector) {
+		if (size < 2 * SECTOR_SIZE)
+			return;
+
+		s = 1;
+		sector = img + SECTOR_SIZE;
+		label = (void *)sector;
+		memcpy(label->id, LVM2_LABEL_ID, sizeof(label->id));
+	}
+
+	memcpy(label->type, LVM2_LABEL_TYPE, sizeof(label->type));
+	put_unaligned_le64(s, &label->sector);
+
+	pv_offset = get_unaligned_le32(&label->pv_offset);
+	if (pv_offset < SECTOR_SIZE) {
+		pvh = (void *)(sector + pv_offset);
+
+		/* Same walk as lvm_pv_probe(): past the data areas, past
+		 * the zero separator, then one fixup per metadata area.
+		 */
+		for (area = pvh->area;
+		     (u8 *)(area + 1) <= sector + SECTOR_SIZE
+			     && get_unaligned_le64(&area->offset);
+		     area++)
+			;
+
+		for (area++;
+		     (u8 *)(area + 1) <= sector + SECTOR_SIZE
+			     && get_unaligned_le64(&area->offset);
+		     area++)
+			lvm_fuzz_fixup_mda(img, size,
+					   get_unaligned_le64(&area->offset),
+					   get_unaligned_le64(&area->size));
+	}
+
+	put_unaligned_le32(lvm2_crc(&label->pv_offset,
+				    SECTOR_SIZE - offsetof(struct lvm2_label, pv_offset)),
+			   &label->crc);
+}
+
+static int fuzz_lvm(const u8 *data, size_t size)
+{
+	static struct ramdisk *ramdisk;
+	struct block_device *blk;
+	struct lvm_vg *vg;
+	char *table;
+	size_t i;
+	u8 *img;
+
+	if (size < 2 * SECTOR_SIZE)
+		return 0;
+
+	if (!ramdisk)
+		ramdisk = ramdisk_init(SECTOR_SIZE);
+	if (!ramdisk)
+		return -ENODEV;
+
+	img = xmemdup(data, size);
+
+	/* Help the fuzzer out by injecting a proper LVM label and
+	 * valid CRCs, so it can reach further into the parser.
+	 */
+	lvm_fuzz_fixup_image(img, size);
+
+	ramdisk_setup_rw(ramdisk, img, size);
+	blk = ramdisk_get_block_device(ramdisk);
+
+	if (!lvm_vg_alloc_by_cdev(&blk->cdev, &vg)) {
+		for (i = 0; i < vg->num_lvs; i++) {
+			table = lvm_lv_dm_ctable(vg->lvs[i]);
+			if (!IS_ERR(table))
+				free(table);
+		}
+
+		lvm_vg_free(vg);
+	}
+
+	ramdisk_setup_rw(ramdisk, NULL, 0);
+	free(img);
+	return 0;
+}
+fuzz_test("lvm", fuzz_lvm);
diff --git a/images/Makefile.sandbox b/images/Makefile.sandbox
index d0dc503fd0..0419fb8e18 100644
--- a/images/Makefile.sandbox
+++ b/images/Makefile.sandbox
@@ -16,6 +16,8 @@ fuzzer-$(CONFIG_EFI_PE_PARSER)	+= pe
 fuzzer-$(CONFIG_TLV)		+= tlv
 fuzzer-$(CONFIG_FS_FAT)		+= fat
 fuzzer-$(CONFIG_STATE)		+= state-direct
+fuzzer-$(CONFIG_DM_LVM)		+= lvm
+fuzzer-$(CONFIG_DM_LVM)		+= lvm-md
 
 ifeq ($(CONFIG_SANDBOX),y)
 
diff --git a/test/testdata/fuzz/lvm-md.dict b/test/testdata/fuzz/lvm-md.dict
new file mode 100644
index 0000000000..40b378e7f8
--- /dev/null
+++ b/test/testdata/fuzz/lvm-md.dict
@@ -0,0 +1,29 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+#
+# libfuzzer dictionary for the "lvm-md" fuzzer, which exercises the
+# LVM2 metadata tokenizer. Pass it with -dict=, e.g.
+#
+#   images/fuzz-lvm-md -dict=test/testdata/fuzz/lvm-md.dict
+
+# Separators
+# (libfuzzer only supports escaping backslash, quote and xAB)
+"#"
+" "
+"\x09"
+"\x0a"
+"\x0d"
+"="
+"{"
+"}"
+"["
+"]"
+","
+"\""
+
+"sec_name {"
+"prim"
+"complex+prim.0"
+"\"string literal\""
+"\"FLAG\""
+"\"unterminated"
+"unopened\""
diff --git a/test/testdata/fuzz/lvm.dict b/test/testdata/fuzz/lvm.dict
new file mode 100644
index 0000000000..7be7d04574
--- /dev/null
+++ b/test/testdata/fuzz/lvm.dict
@@ -0,0 +1,30 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+#
+# libfuzzer dictionary for the "lvm" fuzzer, which exercises the LVM2
+# header parser. Pass it with -dict=, e.g.
+#
+#   images/fuzz-lvm -dict=test/testdata/fuzz/lvm.dict
+
+"LABELONE"
+"LVM2 001"
+" LVM2 x[5A%r0N*>"
+
+# Small le32 constants
+"\x00\x00\x00\x00"
+"\x01\x00\x00\x00"
+"\x02\x00\x00\x00"
+"\x04\x00\x00\x00"
+"\x08\x00\x00\x00"
+"\x10\x00\x00\x00"
+"\x40\x00\x00\x00"
+"\x80\x00\x00\x00"
+
+# Small le64 constants
+"\x00\x00\x00\x00\x00\x00\x00\x00"
+"\x01\x00\x00\x00\x00\x00\x00\x00"
+"\x02\x00\x00\x00\x00\x00\x00\x00"
+"\x04\x00\x00\x00\x00\x00\x00\x00"
+"\x08\x00\x00\x00\x00\x00\x00\x00"
+"\x10\x00\x00\x00\x00\x00\x00\x00"
+"\x40\x00\x00\x00\x00\x00\x00\x00"
+"\x80\x00\x00\x00\x00\x00\x00\x00"
-- 
2.43.0



