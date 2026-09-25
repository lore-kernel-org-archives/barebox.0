Delivery-date: Fri, 25 Sep 2026 13:51:55 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xA4T5-0069yP-10
	for lore@lore.pengutronix.de;
	Fri, 25 Sep 2026 13:51:55 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8A7702008EB
	for <lore@pengutronix.de>; Fri, 25 Sep 2026 13:51:54 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=vFB5mimr;
	dkim=pass header.d=waldekranz-com.20251104.gappssmtp.com header.s=20251104 header.b=eAYhd+ij;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790337114;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=3HlbgYOmmpt/g4DrTM5qd1JV8iDRzOL7CCwkFUje4xA=;
	b=MJE1Yhujo5R1l2m1kfjPal36mtOe/uz6lWmNaOHkMjhTvfrVyFQUREkqCyyDMEYBGYt7zD
	EYWQJjHp4iCJYg6Pqqs/bBoTx5PojoK4CEg7dVdsmsBrAqlvWTFsEA4SU7cBggd0+HkSwF
	bwGxLdn/Try62VXKKgrjGqmwtHxyF9nkWv+fIBf7Fk1o/SRuaZOP2wTqfhxXoANMOoqm5S
	Vk02WOZVhUfw+xW7Lq3VdEr5VttRbjauD+TWsRnnZUL8loDSv1AzbcjfDBgwjKCpoeopqd
	y4NB7wmKs+yFFdwsvR20YOFa5uqYuex9hKidnfxy6B0uZ15IqobN5pErlbN4NA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790337114; a=rsa-sha256;
	cv=none;
	b=cekhz53sVLpLl6LAWf+8aK1OGESToEsUv/c2KKddc2hfO6yCGk/Ov0vmyG/f1aK3Mqk6TB
	q/sRDiKgjWIpPtIUFtq3Fv1HUU6VppNst360VdObZa2nC/JY2zGszGyO+wgu5iD7n118uN
	+/V5q1S0o8K6wlJPPbvKWLTVeIaTMSAgYkbUYAPfnf4ZSWpMEkZP17x62XrkOdChQpP0o6
	K20Dqdn3E1Zg8JRRIhHNNGj9abvBk1HHg2Gk1cTk452qYA41tqhQzAMpqbxcVl1WuLPkpp
	EcP8PWxioOCs/Q2DOPA/EkjlKZXEWTv8SmpuHNGyVgKePiqbbN1kO9PFBxBvRg==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=vFB5mimr;
	dkim=pass header.d=waldekranz-com.20251104.gappssmtp.com header.s=20251104 header.b=eAYhd+ij;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3HlbgYOmmpt/g4DrTM5qd1JV8iDRzOL7CCwkFUje4xA=; b=vFB5mimrvQ0SPRK75bCjD0wZmv
	LKWihH9AJ30JlpESdgMwHnqhrK6ayfrkfD60zzWeiqyBsLDbhweh3ZjaZrJUGHqfv1SFII0tQApG9
	vjOaf8wUakVDNe0RAH3x1pD6zjNqsH8imFX9OLFYDpOBAvYynvEvGjd/Y6Qn3S9q9vr7VhvtiSXT6
	ot54QTD3umhxb1IXO+gY6dlzQo90WERPG4DKSQYzlpD2GCkSjbyZyqfZuD60DyqZXIWmyDbHOtL/D
	aJUMZUfQCJoF1i38LtrI8l2Cv91bJAuwPlcKCr3C3rZkQHNpmyL+EnCxaWX6OLJ8zPCYKGDmtoteW
	/BniZdqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA3aR-0000000D8b2-0KYJ;
	Fri, 25 Sep 2026 10:55:27 +0000
Received: from mail-ej2-x10.google.com ([2a00:1450:4864:34::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA3aM-0000000D8Yx-1xY5
	for barebox@lists.infradead.org;
	Fri, 25 Sep 2026 10:55:25 +0000
Received: by mail-ej2-x10.google.com with SMTP id a640c23a62f3a-c29703cb470so114254266b.0
        for <barebox@lists.infradead.org>; Fri, 25 Sep 2026 03:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20251104.gappssmtp.com; s=20251104; t=1790333721; x=1790938521; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3HlbgYOmmpt/g4DrTM5qd1JV8iDRzOL7CCwkFUje4xA=;
        b=eAYhd+ijX41jF9ZRdwlVBQk62+0wn3ltEVjTUbacMw+aG8eOWUr5IZ6HI8WBfZpngg
         dNa8d2OupfVaedhC4zS0piU+jWwOO7iPQboV8gl3dEt238VTcgLr4/l7YijiGB2O1ldc
         8MJpWGWd3D7QrF8gB8vxQ8k8lcttcUpGn0fzh19BByVwbzzfaFP9b057T+VV76mc5sw1
         BNIs3vTUehSUwS0q6OxYKI+pTb4gYMq7vRGqtsmKskfO5PZ5WEIk4nLNlUmlpG+YolS3
         B84x2K9OWpN+PhV3ujvuR6XZlJetl6Ds7R+06ZyvMbxSoXV6guitOb8PCdrdTd/Gp4uU
         ZUEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790333721; x=1790938521;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3HlbgYOmmpt/g4DrTM5qd1JV8iDRzOL7CCwkFUje4xA=;
        b=0W/A5+9WtFJ3QlaIk4iqj2Io7P6n0q4hddLC5XcnKarbF59HBsjCF6EzGFIVUtUwas
         EmIJFiK5B79A8l96iQn87zY/fYM5TK+OkG8xHBkpgjZV0nS9e6Jeyd55PhzBgPHBc/fU
         CEoVw1+XLXlQanWz5T63pEPwJS3nAi4Hv+fkr01FAeq3Zpj0x/VNs3v+Y1lRZVaCcLRU
         YU3+5jzEsAEbincrZMmaG9YsTic0xVkNrjjFkSvUPslYUHVF1E4RjQy5L5IH+StgapW7
         HkJeFadCrTIGTqZnKuNtoNknehUy6pw/8tVnxYTFLYAre3yH0Wx84qyBPq4YOkM1Fm/P
         view==
X-Gm-Message-State: AFuF++lrVXNblRWtnQ1ag1pgwD3jEj/jl/pa/EFI5gqoFrahiIn3cMFa
	OTc8xB1fYbOPxyF1belfsHn/HgbNWCwc2ea2/ZGfxjdj8niLWkVaDAkJ/g5eQA9b7wh+ntFx7y0
	NKQBu
X-Gm-Gg: AYBFou1pvr4Ma/7gVshaM8egxU9mbdg3xmaAXP6V7+zlqz4Z4CyEEYNNXgI2FC3xOX7
	ioAQOTvAz2euccGakF4ubacPuuNbaBAnafttPmMCU1IoiQk7+x2igmIOKEO4GpT7JeMs0bnLC1j
	WD3IyT8cYsLbd6s87ac+kJ/KA3WGLYWGIb7km+Lp+mygREmKlBlmE47e+2gF4nHDY7GD7qkLCcy
	VytLu58joirWcV78Xm/8qlgGx1BmaHbcwvcjuwAUB0pCXVA+BVG4+HRPgvhjsTdphj0K26/bh1j
	5CkmiXYqUP8/+J3iB49zEGkg2FMpF0eeuk8bhp9T5g+OMk4I8EdjNxAD4wnLyGb2zVlAgD2bmPo
	h7SU7GdoYWlcP5biihOrGqS4mtb0U6Nxt1karqPReWaIEaDM2wQFhJ0e6TN9XZZTsY1rUNbBHlt
	E1kd2YOVShO/xL7ILWaQRX8AnpqiU8RZSxOjd7R13SnBKhqBcCwsiUmKUu1BMs7Yhp5q1nOCg8A
	xUROECiQos3mc6aQwY14qZPts0L+Ttoq5L9GnPHcEzB+3db5/4wcQfVZAOaGTNl5buuXlV1Zdx6
	cod+/LOE1ua4av7eXGPq
X-Received: by 2002:a17:907:e155:b0:c2a:c799:d068 with SMTP id a640c23a62f3a-c2ac799d409mr305965466b.28.1790333720769;
        Fri, 25 Sep 2026 03:55:20 -0700 (PDT)
Received: from spa.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2ae757ac8dsm98416066b.25.2026.09.25.03.55.20
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2026 03:55:20 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Subject: [PATCH v2 next 4/5] commands: lvm: inspect VGs, activate LVs
Date: Fri, 25 Sep 2026 10:54:26 +0000
Message-ID: <20260925105510.1431927-5-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260925105510.1431927-1-tobias@waldekranz.com>
References: <20260925105510.1431927-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260925_035522_544382_A0A8A18F 
X-CRM114-Status: GOOD (  19.25  )
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
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:34::10:received];
	RCPT_COUNT_ONE(0.00)[1];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FROM_NEQ_ENVFROM(0.00)[tobias@waldekranz.com,barebox-bounces@lists.infradead.org];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,waldekranz-com.20251104.gappssmtp.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 8A7702008EB
X-Stat-Signature: cdb3rfhd1odo6eim9bk6cwkn4k1rf6c9

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



