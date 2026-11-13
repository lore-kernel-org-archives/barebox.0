Delivery-date: Fri, 13 Nov 2026 08:28:32 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRli3-00AL5E-1n
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 08:28:31 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6707C2023BD
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 08:28:31 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=uDgpR8RB;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=fIgGZmPg;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554911;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Xh+DAgI8P7rtg4/V4wz5L/pbKXtsT625balYAozBzCA=;
	b=QlOqeDcB1dEVq1nrvNWJPSPej4cUeK5QzVcJkcUmpaH6odiZzBzrQWDczt0MHe7J/sSegy
	k/HjDEYyulPdTGNl4iK9M3E24jq5k5XbjqJ8HMBOj9OWSOTznJbrfY6LH9Jd6IEapPpgSt
	r6AAE0c3SB5nZjWTfamlFZfvZaDAYcqbRknZQzkCMN0gSh63eqS6fOhebzID5iPCq5/X7u
	GZvAGySahDp0++fMgXB2xRP4w9mwU6t9B5W1HIbT5/4povxrGasgIHXAuTOozJQB3vx/U4
	MJTOmZlCUQOUsXT4IfIQbV7/kGZ8On1rBMNb/yKA4TA8YpnQCx8OaNav00EQ3g==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794554911; a=rsa-sha256;
	cv=pass;
	b=W2+BQObWrMkdnZ6TezCQBNkQCr9hHFYhlfhN4H9zj3K9uUQ/X3WwP1qnGW9U3d7Szb9b07
	M3IDxW9+LNRxgphPdeE0LRiPFOJMDx4GYz5oxblDynid2tQGWCQvL7XQjWDuxGVzDruYZL
	4pwcBCMZuJJ9nF++7qaTVtLBpU5pHeSrhPbTmOw6b3raWACC1tOmLDdBNdATuXa09E0lp6
	o1XdnDUMVHQ4yD7D9H4Vqjg0dMDLUaTOZaXKByFIZCxLZNzUbsYv49Z82CoNYBSs04KrHk
	OjLng/NxTy8s1H57Jqd6ZygPKpS8ydsL4DnKzO0u4EEHGbL0JZMT2U09KTat3Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=uDgpR8RB;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=fIgGZmPg;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=Xh+DAgI8P7rtg4/V4wz5L/pbKXtsT625balYAozBzCA=; b=uDgpR8RBzzCJcU
	Wytp+jMT3Riu1P5W39bfS0sjyDfUc/7R1jVliTGkMPk00lwevQW6OHEUfBw18SDIyiLEK+LvvCT5J
	/qMvF7dNiu3m7fdIkHVHnUtFu6uMh4GZZsELLW6Vm7nOHS49lhW6/lDsZoj1uIDUcaHAmWbKlpH2F
	rFvr4mZD5JspyPOWshPvCssYBy2zzd6geUV9s0iRrnQpI5s3QpD2ZFbmw89H81HdwcfdqSUb2Ubkl
	NRYWoXrovXHe16PvkQlA1TY/ttmZc/cC6fBO4ohPpVl+knBZgSCyd2ZY9QITgSpri6cAa+LUhM+ZC
	Mqz/dVsqub40BziPX1zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRlac-0000000Bt4G-1I7w;
	Fri, 13 Nov 2026 07:20:50 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRlaV-0000000BszR-2xe8
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 07:20:47 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 96B1F2020ED;
	Fri, 13 Nov 2026 08:20:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Xh+DAgI8P7rtg4/V4wz5L/pbKXtsT625balYAozBzCA=;
	b=fIgGZmPgFZng64WGGeoc0WHvDZ3SU04cquwe3yNuyQV9WB4sTKz/TrQLK8pBn1R+oVocHm
	ZA4abKekO2/WkDqKAFhf+CstMCygFqjk3xEeyMTrC1ylSxLoet6vsZ+4VSguKN59bJL52D
	APbFRAIHHE6hUwQC9hT3h7fzTRCU96G12kjDodn+bVB+S4mnHEmUg/wiwbZoTgqwntMBcH
	VArHYaNXw1K8JeOVCplZ8goPKhfRy2EeB4b1RQHwuHkoKZZyvOxZDKgZrsmM/Kw3+ENer4
	6vvg1/id2cwsRHid6OgE1Sf9USdYv69kNuaO+sFTiJnqb0UoGVeuXccA1321+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Xh+DAgI8P7rtg4/V4wz5L/pbKXtsT625balYAozBzCA=;
	b=T3Tqnoskf8QOBoJBfYPoONs2a+04r256oC252njlenvq+gfP/fAT4a+nMyL4kq7dd839J5
	C/QmVlzEecvBOYDzJ94AXBCSQa6Hs9RL5ONfKUNmb2JtvKflWiGYIjWlpTtDTyjLlxdwyQ
	s6IQgzvDLb3oK1hMW0VOZhMYDxe+JCvFryNyj8FX7yVJxVFHmOP1mV9W6CQOTvsAVF4822
	sUR/vQsHzWw2ekSQf+MAwaESwmzHRL2/eykC+gwhINipIJlAzH6WAm3qRsuyBLRof0xfpI
	++gINFx9UwYvmpGvEo6GVzijooFrm4bqmPMvaL89WxgGzsxjQAbpWF/EFlRRmA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794554441; a=rsa-sha256;
	cv=none;
	b=fHgJESYgIf6Jznl4zxps6IG5ffkKbB0SyNbrC3g+Ux44KeU1Jb+IeY20STQxMbMrHMef3S
	Es+Amn/883l4bWzM/husgNpdtGpDzBheMjCLmF9MF+T1qM0Mp8xSFiihQMMlf2QOlE7wXY
	xtg/5NM6TJNUpQqWmwS3aezc9aGAZyfq4HMMbhFo02QTFemimGV3ivSZh8k+luesl4jw61
	r8UZekv3I3jZwY/Ry59I+nlgieqQNVVzMod6Nk6wnHMcih9o/W3HFLbffj0r0k0D+AgW41
	6l5iaa/mHkAzb3Ko3wDlYE2ahGN+SKdCYQ/6S6GP6UQ+nd7jzoy9B9YbJKvQKw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Nov 2026 08:20:37 +0100
Subject: [PATCH v2 2/9] bootm: revert globalvar changes in
 bootm_boot_cleanup()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261113-boot-globalvar-stack-v2-2-14c0f0a0986e@pengutronix.de>
References: <20261113-boot-globalvar-stack-v2-0-14c0f0a0986e@pengutronix.de>
In-Reply-To: <20261113-boot-globalvar-stack-v2-0-14c0f0a0986e@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794554441; l=4856;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=3qQiUoVeEyaHwV3u33zDjBJIfegpWXtQGAhAxtQhLtw=;
 b=SYjqHU9uQ81Iwxq+YLzsHgZQQbxBtCQ/yTa1yNSOvB1oKTVg0AuGN9oWBUuXHoeeOGd2te4g0
 Kg16gd/dJmFC5kY50x7lCfUksx06SKoSYKxOrhdTzM3PQFXHWhXyqiV
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_232044_108867_55659826 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  bootm adds the Kernel command line options it generates itself
    as global.linux.bootargs.!bootm.* and global.linux.bootargs.~bootm.* variables
    and removes them again in bootm_boot_cleanup(). Anything e [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 6707C2023BD
X-Stat-Signature: yqb77e4xge3uftfe13oskt6hjcugwgyx
X-Rspamd-Action: no action

bootm adds the Kernel command line options it generates itself as
global.linux.bootargs.!bootm.* and global.linux.bootargs.~bootm.*
variables and removes them again in bootm_boot_cleanup(). Anything else
bootm or the image handlers change in the global namespace while booting
stays, for example global.linux.bootargs.dyn.watchdog which is added by
the devicetree fixups and only cleared again when booting through the
boot command.

Add boot_globalvar_scope_push() which snapshots the globalvars that
configure booting, take a snapshot in bootm_boot_prep() and restore it in
bootm_boot_cleanup(). This covers the variables bootm removed so far, so
drop the explicit removal.

Besides global.bootm.* and global.linux.bootargs.*, the scope covers the
rest of global.linux.*, like global.linux.bootargs_append, which
global.linux.bootargs.* doesn't match, or global.linux.rootwait, then
global.of.*, which includes the global.of.overlay.* variables selecting
the overlays applied to the Kernel device tree, and
global.boot.watchdog_timeout.

It deliberately doesn't cover all globalvars: booting legitimately
changes others, which must persist. For example DHCP sets
global.net.server, global.net.gateway and global.hostname, and reverting
them while the interface stays up would leave the network unusable, as a
later ifup doesn't run DHCP again.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c  |  6 ++++--
 include/boot.h  | 16 ++++++++++++++++
 include/bootm.h |  8 +++++++-
 3 files changed, 27 insertions(+), 3 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 26dba7244e..0798324b14 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -2,6 +2,7 @@
 
 #include <common.h>
 #include <bootargs.h>
+#include <boot.h>
 #include <bootm.h>
 #include <fs.h>
 #include <fcntl.h>
@@ -542,6 +543,8 @@ struct image_data *bootm_boot_prep(const struct bootm_data *bootm_data)
 
 	data = xzalloc(sizeof(*data));
 
+	data->globalvar_scope = boot_globalvar_scope_push();
+
 	bootm_image_name_and_part(bootm_data->os_file, &data->os_file, &data->os_part);
 	bootm_image_name_and_part(bootm_data->oftree_file, &data->oftree_file, &data->oftree_part);
 	bootm_image_name_and_part(bootm_data->initrd_file, &data->initrd_file, &data->initrd_part);
@@ -801,8 +804,7 @@ void bootm_boot_cleanup(struct image_data *data)
 	if (data->of_root_node)
 		of_delete_node(data->of_root_node);
 
-	globalvar_remove(LINUX_BOOTARGS_BOOTM_EARLY "*");
-	globalvar_remove(LINUX_BOOTARGS_BOOTM_LATE  "*");
+	globalvar_scope_pop(data->globalvar_scope);
 	free(data->os_header);
 	free(data->os_file);
 	free(data->oftree_file);
diff --git a/include/boot.h b/include/boot.h
index 57f9cb409b..1ae689732d 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -7,6 +7,7 @@
 #include <environment.h>
 #include <bootm-overrides.h>
 #include <bootargs.h>
+#include <globalvar.h>
 
 struct bootentries {
 	struct list_head entries;
@@ -58,4 +59,19 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun);
 struct bootm_data;
 int bootm_entry(struct bootentry *be, const struct bootm_data *data);
 
+/*
+ * Snapshot all globalvars that configure booting. Whatever a boot script,
+ * a boot entry or bootm itself changes there is reverted again by
+ * globalvar_scope_pop(), so it doesn't leak into the next boot attempt.
+ *
+ * This deliberately doesn't cover all globalvars: booting may change
+ * others that must persist, e.g. DHCP sets global.net.* and
+ * global.hostname while the interface stays up.
+ */
+static inline struct globalvar_scope *boot_globalvar_scope_push(void)
+{
+	return globalvar_scope_push("bootm.*", "linux.*", "of.*",
+				    "boot.watchdog_timeout");
+}
+
 #endif /* __BOOT_H */
diff --git a/include/bootm.h b/include/bootm.h
index 8e574040f4..bbdbb8e69d 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -16,7 +16,8 @@
  *   !		0x21 is less than any non-space printable character
  *   ~		0x7e is greater than any printable character
  *
- * Users will never see those as bootm_boot_cleanup() will delete them again.
+ * Users will never see those as bootm_boot_cleanup() reverts the globalvars
+ * to the state before bootm_boot_prep().
  */
 #define LINUX_BOOTARGS_BOOTM_EARLY	"linux.bootargs.!bootm."
 #define LINUX_BOOTARGS_BOOTM_LATE	"linux.bootargs.~bootm."
@@ -80,7 +81,12 @@ int bootm_open_os_compressed(struct image_data *data);
 int bootm_boot_handler(struct image_data *data);
 void bootm_boot_cleanup(struct image_data *data);
 
+struct globalvar_scope;
+
 struct image_data {
+	/* globalvars to restore in bootm_boot_cleanup() */
+	struct globalvar_scope *globalvar_scope;
+
 	/* simplest case. barebox has already loaded the os here */
 	struct resource *os_res;
 

-- 
2.47.3



