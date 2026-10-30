Delivery-date: Fri, 30 Oct 2026 08:35:58 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMh9a-0053xA-1U
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 08:35:58 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5B96E202962
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 08:35:58 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="F/lVACam";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b="DcB8B/9R";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793345758;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=oLzVe7D0TIDgAIyvQ0kCgaOUxEzmPFDEU8HCAn+Swvw=;
	b=TzmNqiU/b5lIuq5OnJnIp2ZECi7sYaKc5mIqfseRa3kv40eMMqX2BvsVNY/wisO23uufZB
	85Ac/iKrIuNC/ne4mjtK8STh/CPrsEnmS0WFXQwsmkhxuztMUZ3KrcmOd3Tcjcd+X5TS8c
	a1VVmz+XKvflECAPQCJccctTVAimRDT7Zmixx5gI39xC2ucDOz2+S3/M0mKFHR9vq2R8/Y
	PGGTbN41L8yTJPR9Iz9jevecvvS+OiQvMBCUvxBlhSAMgNsW9CCaOANuSmJwI/C/M0NXlm
	D2AvI/FUt5oN5pyvtewF5Sa/7DhNam+1OZ4eQ/rvr3Y01sfQPM9/4fCxpJ3n7Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="F/lVACam";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b="DcB8B/9R";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793345758; a=rsa-sha256;
	cv=fail;
	b=SH3RcS4nLlnqXvSyFtlMG1av0EbYB+oxvgH23ym56LOuPUGsCL/+RnLUvvNGsq+JcwM5o0
	FJJ6upMAYusFpJYnLnPn2BfTAF206sjUHquLzkuGLIi655KQN9G58DXDQm4OMNKUWU7nxF
	M4lKgFPjKFFot9yy06wQLuDXL3+8yg2qqzoHbvnC0qXVhYUxfVH/CHIdULRYOROVABdjgI
	NLv+1F878Qw/pDm2XjnlNJAFiser2L7MXCgHOwMr6meScu9SeI/ZM0KdKUEGXAZ4dldaCX
	lhPQtvobisQgbcSh/RYzO90nx/W4jcC16O0IeMpoRNYOdQzMjibG5dZ477YdKQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=oLzVe7D0TIDgAIyvQ0kCgaOUxEzmPFDEU8HCAn+Swvw=; b=F/lVACam16Yrd0
	lsIQFqVIBdvamGypllC3+I9xsdfrUbDgKRQPFF2YKxiMijU0Av/JmC9pbCrg0/YNv8W01JSrRD3Y2
	k+CiTHaui+TxLSR+YlPYMXPbgKWPcVW8m/S8aaROAVMjzxP+DWnvdiqZ/n1l6SzeGJ+Oy5ZeoL8on
	KEQopenrovvkkeWpcHH+ytwmINiH/mec4esX//VVkSeEkhBmL3OGrmk6XTKWmPfH2jdWAypa9XT/x
	4Xh7V5orAyChzEmOpbuXPQYxU1exQUVzhK/Xtm5GZXkZHIwkNHQYYHJdAP19BAQSQdppyIx7VrFFq
	ayb+dOoe0p8dyP62a02g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMh8V-0000000Azzw-3Ky0;
	Fri, 30 Oct 2026 07:34:51 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMh8O-0000000Azwu-28Pt
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 07:34:47 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2D309202962;
	Fri, 30 Oct 2026 08:34:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793345682;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=oLzVe7D0TIDgAIyvQ0kCgaOUxEzmPFDEU8HCAn+Swvw=;
	b=DcB8B/9RVSf/i8IN9/BuWzzvisLuMODVUynFA4Y7JFphaCGZGCfrZA205OfwFCSMJq2Zno
	dNd36S6zekbSPXq2yzmuTGJfnUPaS08UzujG4LBpshM6F8Bl2DYLfaGhCqE512icSmgNJe
	8o76onzwgsrQS7V0cC9ZQe0ODQNwuYGfYny4YGWlqhsNSAhzZALo5KiBRUctMqIqHc43/E
	RX2fg8iGwVhi2SHgGw+TJ8wxeAGq44flSiuMRAKuJhIpn/HAx5GUz43BowEf/Zale7R+Yv
	icoqATcYR5gEOezTbkr3IMmbnT90qKDbXGABrEBEJ39h9FSg+jT0RFPH1BHo+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793345682;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=oLzVe7D0TIDgAIyvQ0kCgaOUxEzmPFDEU8HCAn+Swvw=;
	b=N8xBswhHgr0uKevaqCbnzpy9igL09CtwcbnJq3EsERYA326FnBNLlIdIJNfjSjgRjrLBXl
	EMonUDx4xFVyE/15QgxDC7FAKcF+3xIc93N+y9kQCSit5f7NkaXncZcn+LtnCoQnkaSgKb
	zDAkKKWW/+k/LHNyZGJWjzASWdoHwcZL7wsyzJIYwc/lgqDWz1brg6ZwQAPebeKmsJaCci
	sLnJPeqS+0Ji9iz5XzbLsThYfJNT7exJHae5u3B5TdGJphuQz0lwJtv2ZIsI65DwgVtsaK
	HFdrn6Aps4zkH+oU7f0NCsONG8+BuEEIsu0uC5MEV7W9HQeaO8VkS4kUQWfbaQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793345682; a=rsa-sha256;
	cv=none;
	b=XioCJTtv8Wur6emcDkSWRU6AQmkdNNGrOCNS8ZRN9jrQ//mhz7yrps6KO6aemWqz2TK+oI
	h0hQm85BxlxwBq7iGzK7PL+5wNzgVDv9xqmOYonD5vnr0VnT/1ZHSTF4eS9OTgBuLPQ6Ns
	ojYAvwW4SYGiiIMRC9T6XSBSTbIBDELGbSlXODtM+w2FLXAb+7NDlDzlIKgHQFmEz+uFug
	C39NYKvjOpblBBhNRv0dqzMmG7qtRNugyjFq748ikxq1taf16JKEp2bQf5m517MSpgEdeM
	qmocfnCyjsyZMdH7KIYyAiiIR9ZHLvEJJVekGuDx9A0hsNefk7ATed4ca42Vzg==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 30 Oct 2026 08:34:43 +0100
Subject: [PATCH 3/4] commands: boot: fix use-after-free of overrides taken
 from globalvars
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261030-boot-mem-fixes-v1-3-6d64824356eb@pengutronix.de>
References: <20261030-boot-mem-fixes-v1-0-6d64824356eb@pengutronix.de>
In-Reply-To: <20261030-boot-mem-fixes-v1-0-6d64824356eb@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793345682; l=3437;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=rWRLKNgHDKsmLiJ/o5J9pw0ZnZPl2pGug7LAGNv+eX8=;
 b=nyVkdonfQpl9f9LSZY70h4VuNs7imUFvFRj8S4YXHGj2MN0YkuMPB9cDD1QARiX/gnj2ASHqR
 Auun0UCEinEAizAgsrpMHAgRfj5EuJtM6rlqJ/su1II6tTfZN3e10tq
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_003444_785978_BB077C99 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  When boot -o is given a variable without a value, e.g. "boot
    -o bootm.image", boot_add_override() stores the pointer returned by globalvar_get().
    That string belongs to the globalvar. When the boot en [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
	BAYES_HAM(-3.00)[99.99%];
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
X-Stat-Signature: dr9t8ajcne5tg6f6r7o3uqtdchf683qt
X-Rspamd-Queue-Id: 5B96E202962

When boot -o is given a variable without a value, e.g.
"boot -o bootm.image", boot_add_override() stores the pointer returned
by globalvar_get(). That string belongs to the globalvar. When the boot
entry then sets the globalvar, which is what boot scripts usually do
with global.bootm.image, the string is freed and the override points to
freed memory. In practice the override silently turns into the value
the script set, as the new value tends to land at the same address.

Store a copy of the override values and free them when do_boot()
returns. While at it, route the remaining early returns through the
cleanup path, which also fixes leaking the boot entries when the menu
default entry is invalid.

Fixes: a5e4c4340ef6 ("commands: boot: add support for overriding boot artifacts")
Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c | 38 ++++++++++++++++++++++++++++++--------
 1 file changed, 30 insertions(+), 8 deletions(-)

diff --git a/commands/boot.c b/commands/boot.c
index cc7a64bcca..b436afa91d 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -25,6 +25,23 @@ static char *next_word(void *context)
 	return strsep(context, " ");
 }
 
+static void boot_set_override(const char **override, const char *val)
+{
+	free_const(*override);
+	/*
+	 * Copy the value: if it was taken from a globalvar, the boot entry
+	 * may change that globalvar, freeing the original string.
+	 */
+	*override = val ? xstrdup(val) : NULL;
+}
+
+static void boot_free_overrides(struct bootm_overrides *overrides)
+{
+	free_const(overrides->os_file);
+	free_const(overrides->oftree_file);
+	free_const(overrides->initrd_file);
+}
+
 static int boot_add_override(struct bootm_overrides *overrides, char *var)
 {
 	const char *val;
@@ -44,11 +61,11 @@ static int boot_add_override(struct bootm_overrides *overrides, char *var)
 	if (!strcmp(var, "bootm.image")) {
 		if (isempty(val))
 			return -EINVAL;
-		overrides->os_file = val;
+		boot_set_override(&overrides->os_file, val);
 	} else if (!strcmp(var, "bootm.oftree")) {
-		overrides->oftree_file = val;
+		boot_set_override(&overrides->oftree_file, val);
 	} else if (!strcmp(var, "bootm.initrd")) {
-		overrides->initrd_file = val;
+		boot_set_override(&overrides->initrd_file, val);
 	} else {
 		return -EINVAL;
 	}
@@ -124,10 +141,11 @@ static int do_boot(int argc, char *argv[])
 		case 'o':
 			ret = boot_add_override(&overrides, optarg);
 			if (ret)
-				return ret;
+				goto out_overrides;
 			break;
 		default:
-			return COMMAND_ERROR_USAGE;
+			ret = COMMAND_ERROR_USAGE;
+			goto out_overrides;
 		}
 	}
 
@@ -139,7 +157,7 @@ static int do_boot(int argc, char *argv[])
 
 		def = getenv("global.boot.default");
 		if (!def)
-			return 0;
+			goto out_overrides;
 
 		handle = freep = xstrdup(def);
 		next = next_word;
@@ -181,8 +199,10 @@ static int do_boot(int argc, char *argv[])
 		int idx;
 
 		idx = bootentries_get_default_menu_entry(entries, default_menu_entry);
-		if (idx < 0)
-			return idx;
+		if (idx < 0) {
+			ret = idx;
+			goto out;
+		}
 
 		bootsources_menu(entries, idx, timeout);
 	}
@@ -191,6 +211,8 @@ static int do_boot(int argc, char *argv[])
 out:
 	bootentries_free(entries);
 	free(freep);
+out_overrides:
+	boot_free_overrides(&overrides);
 
 	return ret;
 }

-- 
2.47.3



