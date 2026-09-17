Delivery-date: Thu, 17 Sep 2026 09:43:35 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x76mN-003692-11
	for lore@lore.pengutronix.de;
	Thu, 17 Sep 2026 09:43:35 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=nIipq4vr;
	dkim=pass header.d=waldekranz-com.20251104.gappssmtp.com header.s=20251104 header.b=ENrn73CC;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CA6A9202B14
	for <lore@pengutronix.de>; Thu, 17 Sep 2026 09:43:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3HlbgYOmmpt/g4DrTM5qd1JV8iDRzOL7CCwkFUje4xA=; b=nIipq4vrL6St2P5Xzs74rmYuJc
	ggjtBNh2x2lQK/ujF37bPtY1FIlxLjaVEhptjA7g467JLjxyGxBNXM6AwKTRNbHW3S1BkvNu+nApw
	iw2P/WpJHGZpqQYbNuUGOw08XQzlj9w/bj/DNN6YtLT7/ss5cuTDIRYqZ36lDZsaGsxogNMoknQID
	irySUC7L8h7cJDKa0f/WUJxxDycKEncEEqnkBomBwnO/+2hsc8HqTMiXigp3Kj9tg70YTENRFgKVY
	hDGlbXpdmlQ0JIKg99Fl/FwPsMrcdti04gnZci2WIRmRRtBatNJi852/HtjG69KTYCHzio2mTKv27
	bmv6X/uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x76l8-0000000AnGA-3ctV;
	Thu, 17 Sep 2026 07:42:18 +0000
Received: from mail-ed2-x10.google.com ([2a00:1450:4864:33::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x76l4-0000000AnDJ-1WPN
	for barebox@lists.infradead.org;
	Thu, 17 Sep 2026 07:42:17 +0000
Received: by mail-ed2-x10.google.com with SMTP id 4fb4d7f45d1cf-6a9a2b95b72so840165a12.2
        for <barebox@lists.infradead.org>; Thu, 17 Sep 2026 00:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20251104.gappssmtp.com; s=20251104; t=1789630933; x=1790235733; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3HlbgYOmmpt/g4DrTM5qd1JV8iDRzOL7CCwkFUje4xA=;
        b=ENrn73CCokVlD9+LfkTilVJrlnjfHhai+FLvAM7KXEMSVD5lvu59tLIUPwt5j2hZ+u
         5pm+iiapyYVdlI2PGaCFZgzfgwmvXSrEQDY/Lbb2Ck/ofHgFL3e0akYK41FcVK+PDfj+
         6wsNXhXsmSbCpwVQHKacVaGnUGPmpiGVxWy9Ovwoz4kSbAnYMRikTLa3TIhhzZfFW9vn
         ramMe4qh6hWbsUtQOdtJvY7ZsT2noaoWA4K5Rega0Tugx4+7QGqmmYnyu0t1W7NODyc7
         z7nn8UUC1Ur05+Aw1AOV1cqHhq7FqbWb34jNWMVcoes0H9kuTckcK8iDyglr1IfnCxzu
         q3Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789630933; x=1790235733;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3HlbgYOmmpt/g4DrTM5qd1JV8iDRzOL7CCwkFUje4xA=;
        b=j944luF0WbgfY5vI42ueGuXhapE+quKZJphnR8yr7r39qqjGFC+jMrfYMmYB+1mBs/
         zp4Ug4IiC6iAqG7DAeoQ5/oBiPoF/zhxj9bJ9SmUtYkapmQksHffgxuhEjq8+4wc22py
         v2/ArBxv01IeziLtpKHS/TNuRcNaevok09MovqMnrnu6UICtGtj6i78PbsE32J1TwBzd
         0G0AohvTn1/fsetGAlMHAT7FTjr+PiaVgn4KfDfR6yJJB+ahnDxhpGC4pR0gIj3FfKWM
         IvXx0XB39aPePElH1iYoJePcE58/S7eggVB+0aqUY8r6NunPQm00qQotHdEhtLA5BUHx
         qdBA==
X-Gm-Message-State: AFuF++lgcSFgZTAOQvKIw2gjGKH/PZ1eLA764ZWVY2PFHJNh+Qw33xTS
	HKzKTELOh3NFgso+hjU/fapzXgN+hJEdG8MUO9l1QRQLLt1W+CfsX3dkfkRuUJsem9dDXthU40s
	ESVPm
X-Gm-Gg: AYBFou1kQAVgLTT8hFT8hp4wGJTaM7AbDPmQM1cuyBCzy/rS4G7OVQl+uOMW9MSLpHc
	ENye3H3x8dQPeovgVNVRgY88TAphuFJAEl5wJNlxcyc8p4w9xqBqC5JziZcTJML4Q2USuU7TGqo
	Guk0hjmShjay1tmy4Ol9xQBY6Ct/cXxWaZHBvbDL7farDYwbrcwesmFGZvsyg0XSnU+NOx7m/aJ
	KNRG6b9l1LqZPsDFpILJJU+4G1Vyz6JvRcHVheOFivjrjQIDYOJ8Fk/h6K8nJkTbmuCqcPuT6TS
	im7FWYtkQymvgLkVTKtbcPzfhUzKbp8h5dIET2P/eXeeKYVW0vzj51PeEAgZeg2s35NH0KlkM9u
	OKqzGKjST63OtwpP+wOsVFJ/Ds5rjz3DpcZCyeQ9X9Xa1vdqoPm7JnL5Ez7b5jrz3YYhZo3e1aK
	kv8P7qBF+J49tLBdT/ieTmGrZNfKU+3h6v8XTl/oE6n7Bu+MBsdb+RYz6VDtOPeqIemzoM4hhZc
	5eMVPOEbiEqzNYihMG8btsJYwe9JB2d+rhDodvApyq1akHIsEUqsPqNm2s2ieXTnyo5+8BROsbJ
	rZwQidqdWHWr7gmPxdZT/g==
X-Received: by 2002:a17:907:3e16:b0:c25:8878:3e09 with SMTP id a640c23a62f3a-c29e5276af8mr387476466b.22.1789630932205;
        Thu, 17 Sep 2026 00:42:12 -0700 (PDT)
Received: from spa.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c29de5e4ca9sm238865966b.42.2026.09.17.00.42.11
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 00:42:11 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Subject: [PATCH remotes/origin/next 4/5] commands: lvm: inspect VGs, activate LVs
Date: Thu, 17 Sep 2026 07:40:40 +0000
Message-ID: <20260917074202.3851071-5-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260917074202.3851071-1-tobias@waldekranz.com>
References: <20260917074202.3851071-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_004214_439166_EE4B73CD 
X-CRM114-Status: GOOD (  18.79  )
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
X-Stat-Signature: mwabccy1jzozjjpxfzcuopg1og6unuhj
X-Rspamd-Queue-Id: CA6A9202B14
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
index c8804c8e17..1eb81f30b3 100644
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
+	        info
+	        activate <vg> <lv> [<name>]
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



