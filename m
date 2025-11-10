Delivery-date: Mon, 10 Nov 2025 21:35:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYcC-00HVRo-0N
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 21:35:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYc7-0002Lm-FU
	for lore@pengutronix.de; Mon, 10 Nov 2025 21:35:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+kqrz4W2dCijRKsaL4fzMHcaWHstly9PAyTkI5sqK60=; b=E2ybeXsraMEZsks4fapq4+LcJB
	FTjRmL1UxwXuzeP8eWM5xj3CPxt8tnx7DDTUKmzlFlca6N8tGz+13mJLYV8BWI/9qKuli8T7Vo3qL
	tVsocE6UnxfO7dXJSqWMFrv0pH2lzoYIeZ21FSWPtJt0cn9ZljQvj0g60aj6HuiZysYKwyn7Y5ots
	ZoCWN6br/gQTc5CAvzVGS4g1Xh3MVoHMGmyVdDeG9+AWuZ3rl+MEVMsu8RnLqutLvYaKQbQfkL3eG
	MNNWGKDKZdU44Qf4VLc0vTZZF4h8j2oNLcl4g1SUTn1rFvXddrxDVJn/mUuyr+/KB0tDhBfKQNZxH
	uFk6/7Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbN-000000065h2-0mwC;
	Mon, 10 Nov 2025 20:35:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbH-000000065Yc-2sB9
	for barebox@bombadil.infradead.org;
	Mon, 10 Nov 2025 20:34:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=+kqrz4W2dCijRKsaL4fzMHcaWHstly9PAyTkI5sqK60=; b=C3GuxjYnTkotw1RAF2o35syKg/
	tWL5YCGRuRreQu6z+ahL2n1g73F86t63FJTmFylpz4LQCidCMaP0Z2WMQXjKPXaUwqf/+tuvTPyy8
	N5DHYYa+EAhF+snpi4E9q+otm6sSb7WTY9C3rfaGxBgTgRHso0r8pfgQY1pZgULQor983lDkMDunK
	puPjMoY6Cm+2jSmG6PHXo6IbmGfcvMWbRhRSe4nGL44VK6cRmKur98i1FCvKhgI5Rh4I6hvWIJCeD
	K/o8Gg88N4dNKlWrnEEpH/sYlvDgie2TzQNLQtLVkFoszxnaoZACMH1cFbLq10pGjBP3hrkDhpBHi
	Me3NBczA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIXjX-0000000BgCw-0Dyg
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 19:39:26 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vIYb8-0001MT-UZ; Mon, 10 Nov 2025 21:34:46 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 10 Nov 2025 21:34:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251110-v2025-09-0-topic-optee-of-handling-v1-18-8f0625ac5471@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_193923_173297_3F0FC313 
X-CRM114-Status: GOOD (  13.65  )
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
Subject: [PATCH 18/23] security: optee: add optee_extract_fdto helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a helper to extract the added OP-TEE FDT overlay fragments from the
FDT provided via arg2 during the boot phase into a dedicated buffer.

The dedicated overlay buffer can be used later on by the PBL code to
apply the overlay to the barebox runtime DTB and to the kernel DTB.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/tee/optee.h |  6 ++++++
 security/optee.c    | 44 ++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 50 insertions(+)

diff --git a/include/tee/optee.h b/include/tee/optee.h
index 10e829c04f8832c4c04771800f1963e25f425482..679662a6e6944da59d24d6268ebcf5dff19d0980 100644
--- a/include/tee/optee.h
+++ b/include/tee/optee.h
@@ -37,6 +37,7 @@ int optee_verify_header (const struct optee_header *hdr);
 
 void optee_set_membase(const struct optee_header *hdr);
 int optee_get_membase(u64 *membase);
+int optee_extract_fdto(const void *fdt, void *fdto, unsigned int fdto_sz);
 
 #else
 
@@ -49,6 +50,11 @@ static inline int optee_get_membase(u64 *membase)
 	return -ENOSYS;
 }
 
+static inline int optee_extract_fdto(const void *fdt, void *fdto, unsigned int fdto_sz)
+{
+	return 0;
+}
+
 #endif /* CONFIG_HAVE_OPTEE */
 
 #ifdef __PBL__
diff --git a/security/optee.c b/security/optee.c
index 422bc1c90924ba8ab266b1aa8d06e52c819d2010..3750bb6f496af990d77f3629b470b174dd7a7c7a 100644
--- a/security/optee.c
+++ b/security/optee.c
@@ -5,7 +5,9 @@
 #include <tee/optee.h>
 #include <linux/printk.h>
 #include <linux/errno.h>
+#include <linux/libfdt.h>
 #include <linux/limits.h>
+#include <pbl.h>
 
 static u64 optee_membase = U64_MAX;
 
@@ -60,3 +62,45 @@ void optee_set_membase(const struct optee_header *hdr)
 	optee_membase = (u64)hdr->init_load_addr_hi << 32;
 	optee_membase |= hdr->init_load_addr_lo;
 }
+
+int optee_extract_fdto(const void *fdt, void *fdto, unsigned int fdto_sz)
+{
+	int err;
+	int subnode;
+
+	err = fdt_check_header(fdt);
+	if (err) {
+		pr_err("Invalid device tree blob: %s\n", fdt_strerror(err));
+		return err;
+	}
+
+	err = fdt_create_empty_tree(fdto, fdto_sz);
+	if (err) {
+		pr_err("Failed to initialize OP-TEE FDTO space: %s\n", fdt_strerror(err));
+		return err;
+	}
+
+	fdt_for_each_subnode(subnode, fdt, 0) {
+		const char *name;
+		int len;
+
+		name = fdt_get_name(fdt, subnode, &len);
+		if (!name) {
+			pr_warn("Failed to query FDT node name: %s\n", fdt_strerror(len));
+			continue;
+		}
+
+		if (strncmp(name, "fragment@", 9) != 0) {
+			pr_debug("Skip node %s\n", name);
+			continue;
+		}
+
+		err |= fdt_copy_node(fdt, fdto, "/", name);
+	}
+
+	/* Clear the FDTO memory to not supply incomplete overlays */
+	if (err)
+		memset(fdto, 0, fdto_sz);
+
+	return err;
+}

-- 
2.47.3



