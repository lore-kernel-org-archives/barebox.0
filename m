Delivery-date: Fri, 30 Oct 2026 08:35:54 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMh9W-0053wG-0E
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 08:35:54 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id F14AF20296B
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 08:35:53 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DokHmYif;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b="gqcgom/u";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793345754;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=VnH6h3u5q5qlnB2YLOVVPQ/SNNY6ayXYbVK/4NnCSGI=;
	b=VA8kaO0Ao+9i8BiFb8z1YafDfAUFq6HC51ChEItHnzwnAUF2WMNGnZUS9S8QYHQ2oQ99Tz
	z73Nq2Glw561fbSaMVjeoL9bB6sWi3eaGhlCaB2sjtXPshgBroaQhSTIn9pKWiHnTXeROV
	1Uj0i/lQmzWf3KlTDSTmVRXMiz8lflLq4gSOkUwZvcY7YIbMLBTQV+W9xgcxa8dmFB4SNp
	7YDv/Lu3KyC2CDt0rdtjiMpjOVfp3Bv/QXrtwltCDsTpJK6LYF6V/IDKiNwabcQDgnhcdk
	X041bakY8opxMN6qAYjTQ/4Gzj3ookrNSZU3pFQTPZFBhjrdrn9JJJROdEffsQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DokHmYif;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b="gqcgom/u";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793345754; a=rsa-sha256;
	cv=fail;
	b=U8prn2v0YB9nGj2IhfN1SHod728fdbHgR4ztWQUi3OzEjj5Neq8CF0TMU76IHMrRt1aV/2
	DYSw8J9tBOGk2I51H+LHj0tw1JvZDf6xV9rEJwoq/ZxwqwJ5dbeRXV8o8c6ZMXe2+A9ZbL
	BLhXD+Djdpe1zBmukbgA6aTSiLC+meublsuGAml1tCfkKkvYFVLOtBjlynpEv+If/r5/Mq
	FSFfX0rhok/1rdSi3Gr4dZM38sbsv37OYPA+dYyfNljCgVS52Bjk2oB7HYSkX7gxlHYpoi
	/fqYEgpbBb3M9+tK3xH/R4l6b16a8B0Rh7I7bM8hdZK869UMrimL22OmZpE3QA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=VnH6h3u5q5qlnB2YLOVVPQ/SNNY6ayXYbVK/4NnCSGI=; b=DokHmYifbTTd9X
	KAx1kxSupaEjvDmPVNUVYzzqgW4EBPSqMxVbl5XQm2nQl2ucXaLmp9fySPStD44RLAO68NVjwfyVY
	iSU2Z/cKZUtSEGbk+4l4bL1i6iAVfha3/1Ggmy9V7YP5ED8asa9R2jtFBixUqebdDJwPIujwA3MhX
	I/7J0GdqTcPZ86foEimDdoBczUJUbGcXDFlv+xGxqIb0xJDcxJsJH8P7dKd0CRJy6KUE9sE2Rtjpk
	jQ6kLmTDxhpQSl7/Tf8X272Agxh7DQxc4TNy0lS9LEw5IRZWhSjnSIhDZpaVCYMj0RGS+/fw9TwYr
	nKm901vd1D/ihZ7dP+Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMh8U-0000000Azyv-1olr;
	Fri, 30 Oct 2026 07:34:50 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMh8O-0000000Azws-28Kx
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 07:34:47 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 127F620295E;
	Fri, 30 Oct 2026 08:34:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793345682;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VnH6h3u5q5qlnB2YLOVVPQ/SNNY6ayXYbVK/4NnCSGI=;
	b=gqcgom/umdnP4gABviL+w0whqTixSethvTOksHUWP/NRbSyron3D+IiEePct187za4zpJW
	R/wteVAontx6iG65wcof5ArmvFyUmni5/efrg/T36vAcv+MSbxirZGmd5FAPp9DJ01ABqx
	Jlm+806oq6gMhl03nj59HFyFyXhGLA3xXNO51OPN8zpkfDWSe861t0GUU01FDK08rQ9mZh
	39qnfN3w1Au0HojN9Wd0jKYdjE9GjiuhIB8GzdiG+Fjor0LNQYcxd7/puCu3n7m7TP7lAV
	94e41E3oJ9D657cY1xdJRtXpJVn/n4g4jG4bXg2VLiZwGGyDbQtoHwSXx1eG0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793345682;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VnH6h3u5q5qlnB2YLOVVPQ/SNNY6ayXYbVK/4NnCSGI=;
	b=eaEZVcvLO6XaJRQgAZ072M+W1nvJZERSrDGekZR1APzSAVVGHSo138ZYSGA/p4vXbmoWdT
	uyyi43TfaVWuAez643mnSfk525KY3j+dsnKIUcxm3MTv43gYlWumeJzZFI7NHB+hjh6wge
	oGCFfwtAb8Y2tn3INr8Q16g/QC7S7TrhHqzWjul0aql83JqcKCD1fE4itMNEQAcfmuDYj+
	akL6rpq5DcJClPtoKc2YoYHs5JQOFwimneZaIHVty8hMfJXlVhz5h3Dyzv2oTEQSLuK8H5
	XqZeAxR3w5WjZluTuTZI1W6upwbH6TBbZCjJ/tr1JTuVcvwae0wlJmGm0WRmQA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793345682; a=rsa-sha256;
	cv=none;
	b=NJM75qk3Q3My1TYiVXtiKC9XvZCf+cistr8B6tPpQ1CvQJ2lXU5EnfEqE5K7aR+Bzg20Yt
	vE5tSZg/hL2HYVaQNG+SaaKSGXChu6pJDeBSTb3nd7SUopqf8SIZ82q3gtevbhr0U3WNAT
	iwREaiXZSQqZoaLe7afyjEXhUVWJtvgbdBlqon5oJbcZe15eQWOdtFjhiweivTmlZkOdm0
	Qda+uaPhGVyuYKqI/DKAo58yK7Sr9po3tciveEyd7U6654w9n/jpAtzkLBrN/XakMoReJC
	Lue2FuHZXUM+qLpSYLhbecgZeOmsTxf51KFXqlW1CweyzxriavSu8xHEQtFQfw==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 30 Oct 2026 08:34:41 +0100
Subject: [PATCH 1/4] boot: fix use-after-free when restoring bootm
 variables
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261030-boot-mem-fixes-v1-1-6d64824356eb@pengutronix.de>
References: <20261030-boot-mem-fixes-v1-0-6d64824356eb@pengutronix.de>
In-Reply-To: <20261030-boot-mem-fixes-v1-0-6d64824356eb@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793345682; l=2268;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ZqxxI2YttUvq2q7r07UILekMljFk0wIsOuBRsd5basM=;
 b=jc0ORZdNofMl9z172b02G+JjLqZqR6qL0X347Gf/ok9cjWgBNdu431ZyUxybz+eir7xDDvm+a
 IMwLG7d4tVyB84RAZgwAe2lttOU3zeQ/CKv3rHXt7yK5ZikpUPwtFRR
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_003444_716271_D62A8296 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  bootscript_boot() takes a backup of the global.bootm. variables
    with bootm_data_init_defaults() to restore them after the boot script returns.
    The string members of struct bootm_data are not copies, t [...] 
 
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
X-Stat-Signature: ba356uqig9ct3gccfosr856iuhb83zfy
X-Rspamd-Queue-Id: F14AF20296B

bootscript_boot() takes a backup of the global.bootm. variables with
bootm_data_init_defaults() to restore them after the boot script
returns. The string members of struct bootm_data are not copies, though:
getenv_nonempty() returns a pointer to the globalvar's current value.

When the boot script assigns one of these variables, the parameter code
frees the old value, leaving the backup pointing to freed memory, which
bootm_data_restore_defaults() then copies back. This is easily observed
with a boot script that sets global.bootm.image to a nonexistent file:
after the failed boot, global.bootm.image holds the script's value
instead of the original one, because the new value was allocated into
the just freed chunk.

Fix this by duplicating the strings in the backup and freeing them after
restoring.

Fixes: 926985a74ee0 ("bootm: don't clobber global.bootm. variables after script boot fails")
Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/boot.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/common/boot.c b/common/boot.c
index 149bfeca00..1d8768b864 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -107,6 +107,16 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 
 	bootm_data_init_defaults(&backup);
 
+	/*
+	 * The strings point to the globalvars' current values, which the
+	 * script frees when it assigns new ones. Keep our own copies.
+	 */
+	backup.os_file = xstrdup(backup.os_file);
+	backup.initrd_file = xstrdup(backup.initrd_file);
+	backup.oftree_file = xstrdup(backup.oftree_file);
+	backup.root_dev = xstrdup(backup.root_dev);
+	backup.root_param = xstrdup(backup.root_param);
+
 	globalvar_add_simple("linux.bootargs.dyn.ip", NULL);
 	globalvar_add_simple("linux.bootargs.dyn.root", NULL);
 
@@ -136,6 +146,13 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 	ret = bootm_entry(entry, &data);
 out:
 	bootm_data_restore_defaults(&backup);
+
+	free_const(backup.os_file);
+	free_const(backup.initrd_file);
+	free_const(backup.oftree_file);
+	free_const(backup.root_dev);
+	free_const(backup.root_param);
+
 	return ret;
 }
 

-- 
2.47.3



