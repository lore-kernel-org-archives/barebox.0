Delivery-date: Mon, 10 Nov 2025 21:35:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYc8-00HVOK-2L
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 21:35:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYc5-0002J9-D5
	for lore@pengutronix.de; Mon, 10 Nov 2025 21:35:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t9A4gtlTMNRtnFCr15HaqpcZVSzmN8bPQDFdRxVPgfY=; b=LBNusoMHMfsOoHN5jHDOEXeySR
	+mnryx1m09ZiJCm4IfaM0Neg07nXd9Jsib6VPCsEXELtPBRf3H80/VUZRQjs9D2pun29B2Vu6plzD
	I8rCb4p+D6gJlycLS3qjLVEtJfzjV0QpEweOzBSbQqT+sEWOAKdwFziMVp2lEdlhce2mmbmwVaIw8
	f0Ti6AYrowz+rW8HQDFbEg1sj1zI1hYvloDj9+QAaqGR/WaS80s1MT9WVh0VHT5v8lORn0RE3ZQGt
	yl8YvF4eO3y2qqYBWJocWemxYUPW1Ko6GE3TR2NkDGylsh8gOhkt8QVDz9CjRGjCiOtcRP2IvnxjY
	HThGjRWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbK-000000065d9-3hJs;
	Mon, 10 Nov 2025 20:34:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbG-000000065Xh-1cw1
	for barebox@bombadil.infradead.org;
	Mon, 10 Nov 2025 20:34:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=t9A4gtlTMNRtnFCr15HaqpcZVSzmN8bPQDFdRxVPgfY=; b=nc9PVGH4ztWWNe+pLxbntEflJa
	akgFfmaz6S6/n7btCI5fCnCthpGDw6Id0DU5QQ+haZ7ePVhhtUBPCEVhNrtcKIV5xg9qe6P9G7srz
	fVQ2DYcJ5MbPY9yq08IOwGRmxJafeKSFqD8DJkFdmnD9pqSro8GJPT+d1GWLv2y+xdMhBIwmwZFQs
	p1IHSLMjYqou9uUN5PuaVgB1Kb6OEOqSRewN3IdApE+x71lO1cKnW3jhu0wq7fpSyMDio1w+lsEFR
	nnRiucaNCzP3CwgOWo+we6GMDuszxriQqvp3iRSfrqNQL3bGPSTxhnI+HIALD4SD3HZvj06yUci5p
	JNzPeWVQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIXjW-0000000BgCu-0nvh
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 19:39:25 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vIYb9-0001MT-2I; Mon, 10 Nov 2025 21:34:47 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 10 Nov 2025 21:35:02 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251110-v2025-09-0-topic-optee-of-handling-v1-22-8f0625ac5471@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_193922_361942_992D387B 
X-CRM114-Status: GOOD (  16.66  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 22/23] pbl: add support to disable/remove the
 /secure-chosen/stdout-path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add helpers to disable the /secure-chosen/stdout-path property from a
FDT to keep the secure-OS silent. This is useful to keep the console on
for development purpose and off for the release case. For the later
case, the board code also needs to ensure that no /chosen/stdout-path
exsits, else the secure-OS may fallback to this node.

The API is very specific to make clear that only the
/secure-chosen/stdout-path is patched on demand.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/pbl.h |  4 ++++
 pbl/console.c | 18 ++++++++++++++++++
 pbl/fdt.c     | 26 ++++++++++++++++++++++++++
 3 files changed, 48 insertions(+)

diff --git a/include/pbl.h b/include/pbl.h
index 0961b6b91e585a59a3e8facb1af261857cb6f57e..7e64a9d200ade522ebeb6394c730b608abc6d2bf 100644
--- a/include/pbl.h
+++ b/include/pbl.h
@@ -17,6 +17,9 @@ extern unsigned long free_mem_end_ptr;
 void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len);
 int pbl_dtbz_uncompress(void *dest, void *compressed_start, unsigned long len);
 
+void pbl_set_disable_secure_chosen_stdout(void);
+int pbl_disable_secure_chosen_stdout(void);
+
 void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsize);
 int fdt_fixup_mem(void *fdt, unsigned long membase[], unsigned long memsize[], size_t num);
 
@@ -34,6 +37,7 @@ int fdt_copy_node(const void *src_fdt, void *dest_fdt, const char *path,
 int pbl_barebox_verify(const void *compressed_start, unsigned int len,
 		       const void *hash, unsigned int hash_len);
 int pbl_load_fdt(const void *fdt, void *dest, int destsize);
+int fdt_remove_secure_chosen_stdout(void *fdt);
 
 #endif
 
diff --git a/pbl/console.c b/pbl/console.c
index 66652320149db5cdb9d365c5b05a9ac0903935d2..b3f2ac60b5e23b487c0d098d5c2ac5c3f2c8acdc 100644
--- a/pbl/console.c
+++ b/pbl/console.c
@@ -4,6 +4,7 @@
 #include <debug_ll.h>
 #include <asm/sections.h>
 #include <linux/err.h>
+#include <pbl.h>
 
 /*
  * Put these in the data section so that they survive the clearing of the
@@ -12,6 +13,23 @@
 static __attribute__ ((section(".data"))) ulong putc_offset;
 static __attribute__ ((section(".data"))) void *putc_ctx;
 
+/*
+ * No special segment handling required, since the value doesn't need to survive.
+ * The secure-os is loaded only once very early. Therefore this variable is
+ * checked only once too.
+ */
+static int disable_secure_chosen_stdout;
+
+void pbl_set_disable_secure_chosen_stdout(void)
+{
+	disable_secure_chosen_stdout = 1;
+}
+
+int pbl_disable_secure_chosen_stdout(void)
+{
+	return disable_secure_chosen_stdout;
+}
+
 /**
  * pbl_set_putc() - setup UART used for PBL console
  * @putc: The putc function.
diff --git a/pbl/fdt.c b/pbl/fdt.c
index fa61c3c71298a2e036e0d324c09d452d8f0f7bbe..d8160e4a09867aab91dc89de5dc7b00dd08a4155 100644
--- a/pbl/fdt.c
+++ b/pbl/fdt.c
@@ -342,3 +342,29 @@ int fdt_copy_node(const void *src_fdt, void *dest_fdt, const char *path,
 
 	return _fdt_copy_node(src_fdt, src_node, dest_fdt, dest_node);
 }
+
+int fdt_remove_secure_chosen_stdout(void *fdt)
+{
+	int sec_chosen;
+	int ret;
+
+	if (!fdt)
+		return 0;
+
+	sec_chosen = fdt_path_offset(fdt, "/secure-chosen");
+	/* No secure-chosen node found, nothing to do */
+	if (sec_chosen < 0)
+		return 0;
+
+	ret = fdt_delprop(fdt, sec_chosen, "stdout-path");
+	if (ret) {
+		if (ret == -FDT_ERR_NOTFOUND)
+			return 0;
+
+		pr_warn("Failed to delete /secure-chosen/stdout-path with:%s\n",
+			fdt_strerror(ret));
+		return -EINVAL;
+	}
+
+	return 0;
+}

-- 
2.47.3



