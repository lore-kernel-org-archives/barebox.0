Delivery-date: Mon, 24 Aug 2026 20:34:30 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyZV8-006nHu-0V
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 20:34:30 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5AF4D201AD4
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 20:34:26 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=rCJhJfe3;
	dkim=pass header.d=waldekranz-com.20251104.gappssmtp.com header.s=20251104 header.b=qADJoYfT;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CJlFnwzcm1gWJdJALiy56NLPsqLxAouoam5J18g1wHE=; b=rCJhJfe3V18ErbVV8gV6C74B/O
	8EgfrkuarGNl9SFJgB12QtvcW1nyB1bUHKHJxKg8non8fQQAVg3neC732vKYgVHqO8nkaWz7vKHcS
	+ds5+gnNwKeqnZYRd7pCGlcryZWKgvb9zfuov2Xbqz+efLZwuA8/jzFv9gj+0K/auL7zBDjHmbSqe
	gD38BvII1xkJ66rlnzaCkoqMCkucoBpVX9H4JL+NRvAId6kngiZzZ3Uer5S+TkGxoeqDzhteZpmvZ
	yrUEc4CRp4du96X4rKXXnZdXAguED880Nvc3coA8z4BHeo6oJ7OtpykqETpAIksmRZQ0CDh1RW15O
	Lc14fSnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyZTP-0000000HGOR-1Rb2;
	Mon, 24 Aug 2026 18:32:43 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyZTL-0000000HGNN-3uYm
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 18:32:41 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-c15e592da74so536101166b.1
        for <barebox@lists.infradead.org>; Mon, 24 Aug 2026 11:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20251104.gappssmtp.com; s=20251104; t=1787596358; x=1788201158; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CJlFnwzcm1gWJdJALiy56NLPsqLxAouoam5J18g1wHE=;
        b=qADJoYfTg8pKZ2Yzu6rerdTGv96np8sLgzbUIEBjThS1cdJC2Q3vubZ63d0hS6IJ19
         qqQHaOOsckLiJ11h8OJ7DA5iIkwOooHcahkloMth1VTtRbia7TVW5gMhxzaQduubygNc
         KlsyYXXmi2Dhv6g4GH8834Z0KuNKJie89GhnpYnbEdB7hbl4V0ERE3Jg5zaa8REDn9f/
         L8xE0CEHO0+kknyNmQVo1g03Cf+JsLxhnu63mCqDAKp+4MKNV0smqp/0v0STVaxeSp7W
         ZhNOWJTQYQhCVzjiQR7FJUvS4aDme5nCnyToRwWY4Y8NsMdAoDuvfQzORSfMzLxAz+nU
         Fltg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787596358; x=1788201158;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CJlFnwzcm1gWJdJALiy56NLPsqLxAouoam5J18g1wHE=;
        b=oXUmY9E/96gPLqlimAgXnci6QL8G+GEugIH+SkH4fEdHewzmKJg412dsMH8MT9kiZW
         /YNqGmvyE9N/qBClBXXUyJN2yqLM3yPZS6K0sGR6L+tGWaZcBeyiPmMkXRpWW+ACsQjt
         W2Q84VCAD/YwqDLGNhoZKXQttfqI3ZAEpjCx2reQMhvBaFcGplvGFFMox9PtpqJJ7dEp
         8EL4CtrNw2NoMGiVojSfljbt+aCLAJK53pz+Kms1knU8xHFInaGQTMkzIHndcl/5yZ3+
         txiTUml2NmKQ06Q+4N34G7oX/NmAPSzNKEyg2F3aSfgg7MlQMQqaYE93UQ0Om6O87Dic
         yBqg==
X-Gm-Message-State: AFuF++nna9D+KcdRGALxYloUHY2mB7zBzSlbn3S70K0Elh6gkNt37/xj
	AM8vmawZD6jLdzBGI1JpcM/lmm5V9NBMR5gk5HHdtC1FmyZ+kXSNNu3sHQzXcqZPz6RxUaEUz8i
	ukkx+
X-Gm-Gg: AR+sD12sdJU+VTruKUZOIs+7p4fnPvN3F24151Ar+KNpZntGRqMs7ZAbLw3rTlpNYPL
	GlhsmwEEI5PnMES9uNYNReSBpqPwyGNDs1YwJietkt7Xwzt4QlYNfDeqTKX+iNM/lagSYYNgFJ2
	lhbgAYFufOqcoybmdzZd3pBJ6RHGsKjGLunNNgHebuhNXGlwL4rt7gHGjUA4h7GzUIytC0fIKZX
	Wl38XgAcpmz9wVuqSOGSE/VNJ9ru//meMBf09spSrWOalAqc7Ul0C0RmylWUZZK8DKPafOXgVSk
	yrnTyC6Ory/ImYJwfSEdIXM8zaJZKoQmt89J4y1qp9jO9fUpGR7uGkf6+guJQdJ+MAwcCi/PLVZ
	+GOjBBIydN9si9LGeMwBzNo0/0865Y88yqPzLlLbwWlhCEhHJdAESBUFVRWg5+U0//X607BmVZ5
	Nbj5cTRmzbLfZzl/2AInlCI2gi+6JJGhkAWKe3p6xARjHkHEOj6cPEcIVE9ONIYIVAUiUVFyhwG
	VHC62w4cMMJ0HhZyzFblPwUk798k7zWa1j5wxA/8XddASknHrkSuzfHzjB53iB0Y9nGMEr01N57
	hH8jpNmjZF0myS8YxCoitw==
X-Received: by 2002:a17:907:60ca:b0:c24:6985:d7a1 with SMTP id a640c23a62f3a-c24924b79ebmr2339193566b.7.1787596357900;
        Mon, 24 Aug 2026 11:32:37 -0700 (PDT)
Received: from spa.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c249606b683sm1519016866b.5.2026.08.24.11.32.37
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 11:32:37 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Subject: [RFC next 2/2] commands: lvm: inspect VGs, activate LVs
Date: Mon, 24 Aug 2026 18:31:21 +0000
Message-ID: <20260824183203.3759144-3-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260824183203.3759144-1-tobias@waldekranz.com>
References: <20260824183203.3759144-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_113240_009265_59A69E7B 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Provide the most rudimentary commands needed to inspect and
    activate volume groups (VGs) and logical volumes (LVs). Signed-off-by: Tobias
    Waldekranz <tobias@waldekranz.com> --- commands/Kconfig | 11 ++ commands/Makefile
    | 1 + commands/lvm.c | 264 ++++++++++++++++++++++++++++++++++++++++++++++
    3 files changed, 276 i [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:636 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: nqfdq7gcmjiao681j5crb8uxwh7mko1x
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
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::636:received];
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
X-Rspamd-Queue-Id: 5AF4D201AD4

Provide the most rudimentary commands needed to inspect and activate
volume groups (VGs) and logical volumes (LVs).

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 commands/Kconfig  |  11 ++
 commands/Makefile |   1 +
 commands/lvm.c    | 264 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 276 insertions(+)
 create mode 100644 commands/lvm.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 08fe544ee1..d7e3bab3f9 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -808,6 +808,17 @@ config CMD_VERITYSETUP
 	  commands:
 	        open <data-dev> <name> <hash-dev> <root-hash>
 
+config CMD_LVM
+	tristate
+	depends on DM_LVM
+	prompt "lvm"
+	help
+	  lvm - inspect and activate LVM2 logical volumes
+
+	  commands:
+	        pvs / vgs / lvs
+	        activate <vg>/<lv> [<name>]
+
 # end Partition commands
 endmenu
 
diff --git a/commands/Makefile b/commands/Makefile
index 7f0c68a5e5..7dae582225 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -172,6 +172,7 @@ obj-$(CONFIG_CMD_EFI_HANDLE_DUMP)	+= efi_handle_dump.o
 obj-$(CONFIG_CMD_HOST)		+= host.o
 obj-$(CONFIG_CMD_DMSETUP)	+= dmsetup.o
 obj-$(CONFIG_CMD_VERITYSETUP)	+= veritysetup.o
+obj-$(CONFIG_CMD_LVM)		+= lvm.o
 obj-$(CONFIG_CMD_SCONFIG)	+= sconfig.o
 obj-$(CONFIG_CMD_RKSECURE)	+= rksecure.o
 UBSAN_SANITIZE_ubsan.o := y
diff --git a/commands/lvm.c b/commands/lvm.c
new file mode 100644
index 0000000000..9ae9e091c1
--- /dev/null
+++ b/commands/lvm.c
@@ -0,0 +1,264 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2026 Tobias Waldekranz <tobias@waldekranz.com>
+
+#include <block.h>
+#include <command.h>
+#include <device-mapper.h>
+#include <driver.h>
+#include <fs.h>
+#include <stdio.h>
+#include <xfuncs.h>
+
+#include <linux/err.h>
+#include <linux/kernel.h>
+#include <linux/sprintf.h>
+
+#include <lvm.h>
+
+static int lvm_vg_by_devpath(const char *devpath, struct lvm_vg **vgp)
+{
+	struct cdev *cdev;
+
+	cdev = cdev_by_name(devpath_to_name(devpath));
+	if (!cdev)
+		return -ENODEV;
+
+	return lvm_vg_alloc_by_cdev(cdev, vgp);
+}
+
+static int lvm_vg_by_spec(const char *spec, struct lvm_vg **vgp)
+{
+	int err;
+
+	err = lvm_vg_by_devpath(spec, vgp);
+	switch (err) {
+	case 0:
+		return 0;
+	case -ENODEV:
+		err = lvm_vg_alloc_by_name(spec, vgp);
+		if (err)
+			printf("Found no volume group named \"%s\"\n", spec);
+
+		return err;
+	}
+
+	printf("No volume group found on \"%s\"\n", spec);
+	return err;
+}
+
+/* Total size of a VG, in sectors, i.e. the sum of the extents of all
+ * its physical volumes.
+ */
+static blkcnt_t lvm_vg_size(struct lvm_vg *vg)
+{
+	blkcnt_t sectors = 0;
+	size_t i;
+
+	for (i = 0; i < vg->num_pvs; i++)
+		sectors += vg->pvs[i]->pe_count * vg->pe_size;
+
+	return sectors;
+}
+
+/* LVM UUIDs are conventionally displayed in 6-4-4-4-4-4-6 groups. */
+#define LVM_UUID_STR_LEN (LVM_UUID_LEN + 6)
+
+static const char *lvm_uuid_str(char *buf, const char *uuid)
+{
+	static const int grp[] = { 6, 4, 4, 4, 4, 4, 6 };
+	char *out = buf;
+	size_t g;
+
+	for (g = 0; g < ARRAY_SIZE(grp); g++) {
+		if (g)
+			*out++ = '-';
+		memcpy(out, uuid, grp[g]);
+		out += grp[g];
+		uuid += grp[g];
+	}
+	*out = '\0';
+	return buf;
+}
+
+static void lvm_info_vg(struct lvm_vg *vg)
+{
+	char uuid[LVM_UUID_STR_LEN + 1];
+	char esz[32], vsz[32];
+	struct lvm_pv *pv;
+	struct lvm_lv *lv;
+	struct cdev *cdev;
+	size_t i;
+
+	strcpy(vsz, size_human_readable(lvm_vg_size(vg) << SECTOR_SHIFT));
+	strcpy(esz, size_human_readable(vg->pe_size << SECTOR_SHIFT));
+
+	printf("VG \"%s\":\n"
+	       "  UUID:    %s\n"
+	       "  SeqNum:  %llu\n"
+	       "  Size:    %s (%s extents)\n"
+	       "  #PV:     %zu\n"
+	       "  #LV:     %zu\n",
+	       vg->name, lvm_uuid_str(uuid, vg->uuid), vg->seqno, vsz, esz,
+	       vg->num_pvs, vg->num_lvs);
+
+	for (i = 0; i < vg->num_pvs; i++) {
+		pv = vg->pvs[i];
+		cdev = lvm_pv_cdev(pv);
+
+		printf("  PV %s:\n"
+		       "    UUID:  %s\n"
+		       "    Size:  %s\n",
+		       cdev ? cdev_name(cdev) : "[missing]",
+		       lvm_uuid_str(uuid, pv->uuid),
+		       size_human_readable((u64)pv->dev_size << SECTOR_SHIFT));
+	}
+
+	for (i = 0; i < vg->num_lvs; i++) {
+		lv = vg->lvs[i];
+
+		printf("  LV \"%s\":\n"
+		       "    UUID:  %s\n"
+		       "    Type:  %s\n"
+		       "    Size:  %s\n",
+		       lv->name, lvm_uuid_str(uuid, lv->uuid),
+		       lv->type == LVM_LV_LINEAR ? "linear" : "unknown",
+		       size_human_readable((u64)lv->size << SECTOR_SHIFT));
+	}
+}
+
+static void lvm_info_all(void)
+{
+	struct lvm_vg_iter *iter;
+	struct lvm_vg *vg;
+	int i = 0;
+
+	iter = lvm_vg_iter_new();
+	while ((vg = lvm_vg_iter_next(iter))) {
+		if (i++)
+			putchar('\n');
+
+		lvm_info_vg(vg);
+		lvm_vg_free(vg);
+	}
+
+	lvm_vg_iter_free(iter);
+}
+
+static int lvm_info(int argc, char *argv[])
+{
+	struct lvm_vg *vg = NULL;
+
+	if (argc > 1)
+		return COMMAND_ERROR_USAGE;
+
+	if (argc == 0) {
+		lvm_info_all();
+		return COMMAND_SUCCESS;
+	}
+
+	if (lvm_vg_by_spec(argv[0], &vg))
+		return COMMAND_ERROR;
+
+	lvm_info_vg(vg);
+	lvm_vg_free(vg);
+	return COMMAND_SUCCESS;
+}
+
+static int lvm_activate_lv(struct lvm_lv *lv, const char *name)
+{
+	char *defname, *table;
+	struct dm_device *dm;
+
+	table = lvm_lv_dm_ctable(lv);
+	if (IS_ERR(table)) {
+		printf("Cannot map %s/%s: %pe\n", lv->vg->name, lv->name, table);
+		return PTR_ERR(table);
+	}
+
+	defname = name ? NULL : xasprintf("%s-%s", lv->vg->name, lv->name);
+
+	dm = dm_create(name ? : defname, table);
+	free(table);
+	if (IS_ERR(dm))
+		printf("Failed to create %s: %pe\n", name ? : defname, dm);
+	else
+		printf("Created %s\n", name ? : defname);
+
+	free(defname);
+	return IS_ERR(dm) ? PTR_ERR(dm) : 0;
+}
+
+static int lvm_activate(int argc, char *argv[])
+{
+	struct lvm_vg *vg = NULL;
+	struct lvm_lv *lv;
+	int err;
+
+	if (argc < 2 || argc > 3)
+		return COMMAND_ERROR_USAGE;
+
+	if (lvm_vg_by_spec(argv[0], &vg))
+		return COMMAND_ERROR;
+
+	lv = lvm_vg_lv_by_name(vg, argv[1]);
+	if (!lv) {
+		printf("Logical volume \"%s/%s\" not found\n", vg->name, argv[1]);
+		err = -ENOENT;
+		goto out_free;
+	}
+
+	err = lvm_activate_lv(lv, (argc == 3) ? argv[2] : NULL);
+
+out_free:
+	lvm_vg_free(vg);
+	return err ? COMMAND_ERROR : COMMAND_SUCCESS;
+}
+
+static int do_lvm(int argc, char *argv[])
+{
+	const char *cmd;
+
+	switch (argc) {
+	case 1:
+		cmd = "info";
+		argc--;
+		argv++;
+		break;
+	default:
+		cmd = argv[1];
+		argc -= 2;
+		argv += 2;
+		break;
+	}
+
+	if (!strcmp(cmd, "info"))
+		return lvm_info(argc, argv);
+	else if (!strcmp(cmd, "activate"))
+		return lvm_activate(argc, argv);
+
+	printf("Unknown command: %s\n", cmd);
+	return COMMAND_ERROR_USAGE;
+}
+
+BAREBOX_CMD_HELP_START(lvm)
+BAREBOX_CMD_HELP_TEXT("lvm - inspect and activate LVM logical volumes")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Assembles the volume groups described by the LVM physical volumes")
+BAREBOX_CMD_HELP_TEXT("found on the available block devices, and activates logical volumes")
+BAREBOX_CMD_HELP_TEXT("as device mapper devices.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("A <vg> may be given either as a volume group name or as the path to")
+BAREBOX_CMD_HELP_TEXT("a block device holding one of its physical volumes.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("commands:")
+BAREBOX_CMD_HELP_OPT("info [<vg>]", "Show volume groups (all if <vg> is omitted)")
+BAREBOX_CMD_HELP_OPT("activate <vg> <lv> [<name>]", "Create a dm device for an LV")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(lvm)
+	.cmd = do_lvm,
+	BAREBOX_CMD_DESC("inspect and activate LVM logical volumes")
+	BAREBOX_CMD_OPTS("<command> [args...]")
+	BAREBOX_CMD_GROUP(CMD_GRP_PART)
+	BAREBOX_CMD_HELP(cmd_lvm_help)
+BAREBOX_CMD_END
-- 
2.43.0



