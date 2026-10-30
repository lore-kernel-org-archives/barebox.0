Delivery-date: Fri, 30 Oct 2026 11:59:06 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMkKA-0057Nn-03
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 11:59:06 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DA35120296A
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 11:59:05 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=JAecE75m;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=E+9GE3Hq;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357946;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=4aGMqSKoOJEvAdvy76rSJwfc8jhVfLt+aaJh/jG57Ao=;
	b=SXMpejHWyPkvb+MNeGjCcZVZRvFILwIK3j2HmYOrHWIGCDjgaWsxJo460XuBUYqm7tLY58
	S1UhCMUdvBb4W1ha2M7Otmb+q7vfRb3rfmKxvRwbJzf5ciqq4Hw8mBfBSpj9rz8jnPUdBx
	IBcdK4jr0KjgO8u/JdX3VrfAojrBei3QhuVl8WFgZwaFkEpEL09Wh2v/QB31RghVafvtYm
	4eJVvgq2WddAItYyPfJQ41dEzsZM9lygw9Rtgf039JG9JqJ978kCNQOzPBLBxOkdKBCEE/
	LPb9HyqBNapoZHW3Oh1wbUtGSdAyO6nXwbORTaH+9cEupnL4GJ7POLSvo/qr7Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=JAecE75m;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=E+9GE3Hq;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793357946; a=rsa-sha256;
	cv=fail;
	b=TfW0jKOas0T+oZ2tOpfR/dCS9TpLeaoJtTpWifSpuIOVy0Wpr0knmmL6yvQSU7zOXtzUgM
	1Svq8MS7p9r9w16uEwXWbSiOnuXVB/079zIglYIYs96YmZ17r1h0BGbDkZZBFp0eE53gAt
	mKvtczEte3PQn78GP0dWJxgJx56IM5f7+I1NGDNl2n72ts560AUgGEOwCF5f8kBY6axJa7
	uJqrR1dfcmCGPRL2Fu1bJAvONt5h86yvVimM50CTaoOnLghGAQAICpVGZNvpWbpA/WO5/Q
	7wLKfCvblVBxwdkpEVOwHYKwTkTYAKTy5Am/dIyQy4vs0MmcIZcCQftSvrrv7g==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=4aGMqSKoOJEvAdvy76rSJwfc8jhVfLt+aaJh/jG57Ao=; b=JAecE75m9zHmg4
	aGAvg4jw4cXU7ad8LLo7zmm2a9/Xfen36+uwBysSWg7iEQZxclwl2VXAJr339rJyYzzsr1CRo8xuY
	l279BpQOd09rPo99jfwAFzw7jA6o6oS0X1LZsF0z4SLAocXvvyn8YhQsNEVN9LKQacx0FCC9fYdwk
	WeBoicjcKGWRUyF6WAW18301gjYs1C7Wrm8iOn161lsjlnBvsvX+mSpVJrgbvjxAKfy/Mnftl/TKH
	YnUvCpiT2U4e2XdkBZ+slWrffQ5mRIWh6Tv2Mrw1k4gHUc4RSeWxct0DnW0eFGZ+WXJhXfcKV9UhA
	lwRGpf2C1RZ5ElSTZ9ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkFM-0000000BSp7-1B22;
	Fri, 30 Oct 2026 10:54:08 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkFH-0000000BSlF-1xVW
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 10:54:06 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A45C0202961;
	Fri, 30 Oct 2026 11:54:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357640;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4aGMqSKoOJEvAdvy76rSJwfc8jhVfLt+aaJh/jG57Ao=;
	b=E+9GE3HqawEAqLx6oQQeeqT2mPcZBq4E+GyDwR42rskpuI9thzTgiAPh0R1VbxRHzVNZAB
	tVGcOedfSs6wpZBsI8sy9wnEkIQVSh17vITW0K7SE/dgQ81hWL8bWVc+b39A7VoaO0EqOS
	ypxhMgOTFVHYmkscj4OVbIX5TBC1oPRUvH8epKclFebP4ngdvaxVEj7v49dooO6BUowocW
	J+xv8o6ddv8fKCdMdJaMDnoKB/9tczq1mNFJkzfPjNzC8pSQwfipeMeCdbjnLw6hmF5wNM
	HvSP73VpYatiGw4s4wn9bxaEVIRzg+YyvoTpMIcusVvCpJ3gffO5bPNfHtMIdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357640;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4aGMqSKoOJEvAdvy76rSJwfc8jhVfLt+aaJh/jG57Ao=;
	b=Fsdytm7JrW0RO4QfKppFDPocleKE/yfdKAiZ0oGhoFTnmfN+N4ZgAv/on/0xgejZzVlwpd
	cn+NsNNvpKovkEZidgfRl6TqvV73xXp9cyzrCPaWyxk1X4+IVjdfdR6QKfc9RaQPzLk1gT
	NP3Q59heEcOm+3j+QDTpxBkk70uFkleGKCD7nlVz5UuIF5Zu2D/spfmKNQMIZsuvvMMB08
	U9nmpVNTntetNpffuzdyQ33vAHdnjVvUq4BdZhN7uUmiXBK9o2VICCyyEhpoezNovsXAIy
	3G8JuJdYkJTz5dFrjmu1jMW15qjdvntQLh2R0qqwooyf8hj6lUM/IOlKGLV+GQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793357640; a=rsa-sha256;
	cv=none;
	b=BvadHk4a9EDAGAnQXgPkFAF2PqHT2V2lgP1rdiO63aTM9A+l0+GhynPARMVDvGYC7X0UEb
	GpWv0F2MpP1mtJLu48WPN88frc4kEseyB0B582PZNQ1YVqtjWvvAncg1xXFLuuT4/s/BD+
	YREey8yLDFrBQVMCRwxMPywJAFVGr8NtvLyFAiWDbP1I/1cCxXO5//JC0ZSIxVsaJfOFhw
	YSqPcCMxU/5ws2SaqNrqe7qafUbIWM7CMm7M9zgOk0ZDTAbg8a/xxwgDoQTKUnN/8dzdqV
	HosWJuMg5HH/Ii7boYcIDFH8x3nnL3dKG/sIsuurrpYK8KssR//9Zr8OSXTweQ==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 30 Oct 2026 11:54:00 +0100
Subject: [PATCH 02/10] bootm: revert globalvar changes in
 bootm_boot_cleanup()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261030-boot-globalvar-stack-v1-2-a03803e1100c@pengutronix.de>
References: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
In-Reply-To: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793357640; l=4890;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=m6n8WYOYtYoh/rr7p/mx/spDGHSCZwQZgk0vovgCU9A=;
 b=wrb5f04hbwouu1Vsuj4C0amU9oy/O/ii38VOdQGmHzMFqbsyUxuj840WP5GJZ+kQt1nGuUfN/
 oOIIODfoymWDk0wdulb0eALs46JSAs43ddV0ZBYOQEssv3NlZfYJHkW
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_035403_673628_80758566 
X-CRM114-Status: GOOD (  19.03  )
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
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 1yq95hr65mh4w1f767fqhqeffx66szj8
X-Rspamd-Queue-Id: DA35120296A

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

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c  |  6 ++++--
 include/boot.h  | 16 ++++++++++++++++
 include/bootm.h |  8 +++++++-
 3 files changed, 27 insertions(+), 3 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index bcd557d679..22f2ca4081 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -2,6 +2,7 @@
 
 #include <common.h>
 #include <bootargs.h>
+#include <boot.h>
 #include <bootm.h>
 #include <fs.h>
 #include <fcntl.h>
@@ -533,6 +534,8 @@ struct image_data *bootm_boot_prep(const struct bootm_data *bootm_data)
 
 	data = xzalloc(sizeof(*data));
 
+	data->globalvar_scope = boot_globalvar_scope_push();
+
 	bootm_image_name_and_part(bootm_data->os_file, &data->os_file, &data->os_part);
 	bootm_image_name_and_part(bootm_data->oftree_file, &data->oftree_file, &data->oftree_part);
 	bootm_image_name_and_part(bootm_data->initrd_file, &data->initrd_file, &data->initrd_part);
@@ -792,8 +795,7 @@ void bootm_boot_cleanup(struct image_data *data)
 	if (data->of_root_node)
 		of_delete_node(data->of_root_node);
 
-	globalvar_remove(LINUX_BOOTARGS_BOOTM_EARLY "*");
-	globalvar_remove(LINUX_BOOTARGS_BOOTM_LATE  "*");
+	globalvar_scope_pop(data->globalvar_scope);
 	free(data->os_header);
 	free(data->os_file);
 	free(data->oftree_file);
diff --git a/include/boot.h b/include/boot.h
index 57f9cb409b..b30cdd314a 100644
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
+	return globalvar_scope_push("bootm.", "linux.", "of.",
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



