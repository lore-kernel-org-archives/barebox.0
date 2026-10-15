Delivery-date: Thu, 15 Oct 2026 11:28:19 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHHl5-00DrUW-0k
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 11:28:19 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B7844202012
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 11:28:18 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=lwsLqQtU;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=ki85gnL+;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=WhKX59Vm;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792056499; a=rsa-sha256;
	cv=pass;
	b=ZeVXFvBLCRmZ4BSSIu9gIDfDUeZITbAmaw7Ghula3R3EBaq88AkKiDJYAuPJEh/JZc7d76
	CBlO/5zbNREZr+ELkT3/r/GJd0ooL41AIe/IFiXtRO8Q9bgoALWsVpAGI5yQlhxUvX6aMk
	U/+aTZAoe0ubkZbHuYQtjzn7nwYVuOXtT1phMwaLD3TLdELMuNuwX4+9xRDZQ4+lprYWRO
	qf2YW3AMUmVpAoebZH283/M75g8FeLvJeKdtEhqusJiD1SQpHb49yFCJcbjcPrGgAD0dEg
	LGLGgLHCusqogSfP83XRFMs8j95AKADeQceO6E0OHiDBy6GaShyqdCA/cS9xIQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=lwsLqQtU;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=ki85gnL+;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=WhKX59Vm;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056499;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=JDK6Q36iRTNz8F6gceb0Z/kzIlCQ0H/nDMDCAfImK94=;
	b=G6SlPEjeGr4ZnAQGP2zapT8c/te5PqsQESpFscjh1MMf41HTkB4whc/LkFtT1kCX5fREme
	vSwFCSigD5sTl12K7XmY2Xzglyi1A6AcMvrGgOK9kgrtN3tadOlJ0T++Hj/w2LmuoVv60b
	Fa101cIcNujtqenBPUXUA39ihwGS2Sqt8aTHhcTfFjxVYk0VjF26zism9ZRBKCrrth/y8y
	BXQh1M/VsEWraS1ovbmkSYIgR+req/iFQ6u6dEADTz982dcb1Ls4a1c5IgQNKaKWP1tAbr
	sfMKdzSpHl5S9FJQFA3Zsw/Thj2ksS7Si63hPa+BPKAy5g9Na5s77Be1lv7Vaw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JDK6Q36iRTNz8F6gceb0Z/kzIlCQ0H/nDMDCAfImK94=; b=lwsLqQtUUNkCGqvHCuAvrAU4Vz
	OqjzUuUmu0brDNI5cVLdFeN66Fxi0WzDmLzkzIEDP71zoJ3ReElGSFgrREq9kAcpZyTWEC2olzyDt
	3KdbwvsxW33ezAcWtE5/IgtVf7QafbSQwCSLtz19Ds/sY5Fsfirwl52vGfgjSC/AJ/eVOfaEb9QYD
	tbF6z76rjSrzPgcheDSpolbufn2Flp1C/A2YJ8woUUxMOghM/6SUv0sXSWGF79AcIsrW0EBx8uL3K
	oH3tsfJLDhmyrJGPrLD9XYZMPuuMdxXNO4xVTtP+nVWE4wF4guVpnb5CknZwBsEtyBpoLhtDo7AG/
	tYbP8NCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHgM-0000000HFeP-2w7S;
	Thu, 15 Oct 2026 09:23:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHgH-0000000HFZa-2bto
	for barebox@bombadil.infradead.org;
	Thu, 15 Oct 2026 09:23:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=JDK6Q36iRTNz8F6gceb0Z/kzIlCQ0H/nDMDCAfImK94=; b=ki85gnL+ar2KP+WOnqa3xggLFn
	BO8MrL12ynRg2kFDwLiiHwUhlStBhWC/RjnzAMULxMicpsuYyzJzWUz7oXKcYYJzqMzmpGNq5jFxM
	A1zMMBcISRMyANQaPXIVeE+P0ZXWAVK+D6lFhiLPkyGj8m9B5/JR5sliQTP89ks4prco9jiiNcFcl
	Q5Am/05owFZ7s76Xp7C9p1JLcLFrqtD6KZ6hLn3BsbEugrZcwAyAK5AX5rNrl3nBzHIpGu2fakbCZ
	PplwWROiKOwGWzvbeX27Jl1/n1dFCD4lkEStU7y0hixkDRAeeQIYCRGgk7vJHS/32eDOU4p572jPg
	dRzojn4g==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHHg9-00000000ANd-0hGJ
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 09:23:20 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6CF11202339;
	Thu, 15 Oct 2026 11:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JDK6Q36iRTNz8F6gceb0Z/kzIlCQ0H/nDMDCAfImK94=;
	b=WhKX59Vmeq8V/Vw46PYR1DA1bd9Nw7Yu1EUcg2/D2EdtbQjaEuEjU49W/RX5Y+iElHMNeM
	ySNZHBIMMT/oLRgqwqq5yPGQp1c9bAM+nNKGIVDtlpt/lWOK3VBXHOJjTZiFuVlwKltgU9
	5QOq3pu0pWhU2ZshrEWvSEx3gd/3QmvyAcAwbZ/hFx9vx0KyY9WNh31ci+pIkVOpSWPCJS
	4t2cUB4C9y0PaHMR6oTifhcLNLGanzWfEuOhIBT+d1hDTxIBsqyigOHrGu+ryxe3vCxnEr
	lOAH0vDn1unHNxk5wsHBzxPoPk5Zku0xsGJTinaLAB2df0D9WVVKxQxidLmZZg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792056191; a=rsa-sha256;
	cv=none;
	b=XwhMVg1QtCTzJ4bY893VNAuyMIqsq/l1EsquTVOtSJhPAKBaL1BTm6zd/UWeJVjLMzC+gI
	B9svZl1MAUEFl5maGZb81Mhr4DxBAdMPXl+rmrHsb7QMTG+lVEOJNLmHfa6IIepyM04V8m
	hcfnjNvtyEhW9PHIprKIXBEU++/twTmb9WCzRBqESZ93egdeDzfdnkOlxn7wDg+5YGk5l9
	8EyxW1I+REOSF9xoxPus7LOror7jkx3yWb6ovxaF1/WBnjuctm5TSGVERhltm+dNxVcm4C
	FuOdovv0G+ZDjx9RriZ+RTRiNOOcKWeWXVNWodKkSnmaoaAJfpWBMq8kXhwKfw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JDK6Q36iRTNz8F6gceb0Z/kzIlCQ0H/nDMDCAfImK94=;
	b=edEkqQCHC0uDuWLknQ2FdbD2tDyu4dwea70bU4EQz/7HT/KB/yGtXDhJzs7ynGEMK0heVX
	0xk2MbnW+Bru1Y4mE3k7w0F3XuFurheX1TIxvbXOzoCflFdCm1b6XcmgmHKbDLmiE0uUEz
	PyRr71mEkT5ig20+TJh1eRAGFxlJodwm0nC9qHVpSFHZUxBUC8ZXjV3J2RhzzqywnO13yf
	8Sgr+soEerAslCGNY4ywMfBRFCuoLdgfXYl4SgKkoSCnDngEMYlsdc3g+7/R2X536Pb85c
	UaQqeZpL/j5HUOG35vOPWEmbfRi5kXd/7Y3nLLVTgb0+LiR2wdvPYiZR9PtKyw==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 4CA95741297;
	Thu, 15 Oct 2026 11:23:11 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH v2 01/10] commands: devlookup: honour global.bootm.root_param for -k
Date: Thu, 15 Oct 2026 11:18:43 +0200
Message-ID: <20261015092308.146516-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261015092308.146516-1-a.fatoum@pengutronix.de>
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_102318_174679_F1259805 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> devlookup -k prints
    the root= option that bootm would add for global.bootm.root_dev, but it always
    calls it root=, even though global.bootm.root_param now allows bootm to use
    e.g. verity= instead, so [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: B7844202012
X-Stat-Signature: 5sfc67djtq48rnpp86gezw5pjekxqxpb

From: Ahmad Fatoum <a.fatoum@barebox.org>

devlookup -k prints the root= option that bootm would add for
global.bootm.root_dev, but it always calls it root=, even though
global.bootm.root_param now allows bootm to use e.g. verity= instead, so
only the initramfs and not the kernel picks up the root file system.

Let's use the same option name as bootm, so scripts can assemble the
option bootm would append for images it doesn't append it to, like
unified kernel images.

Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/devlookup.c | 5 +++--
 common/block.c       | 5 +++--
 include/block.h      | 6 ++++--
 3 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/commands/devlookup.c b/commands/devlookup.c
index 8f3468735267..164c005236de 100644
--- a/commands/devlookup.c
+++ b/commands/devlookup.c
@@ -85,7 +85,8 @@ static int do_devlookup(int argc, char *argv[])
 	}
 
 	if (kernelopt)
-		val = buf = cdev_get_linux_rootarg(cdev);
+		val = buf = cdev_get_linux_rootarg(cdev,
+			getenv_nonempty("global.bootm.root_param") ?: "root");
 	else if (paramname)
 		val = dev_get_param(cdev->dev, paramname);
 	else
@@ -109,7 +110,7 @@ BAREBOX_CMD_HELP_TEXT("parameter with that name is looked up.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-v",  "write output to VARIABLE instead of printing it")
-BAREBOX_CMD_HELP_OPT ("-k",  "output kernel rootarg line")
+BAREBOX_CMD_HELP_OPT ("-k",  "output kernel rootarg line (see global.bootm.root_param)")
 BAREBOX_CMD_HELP_OPT ("-a",  "output resolution of cdev alias")
 BAREBOX_CMD_HELP_END
 
diff --git a/common/block.c b/common/block.c
index 5441c7ca1848..16075bb146ec 100644
--- a/common/block.c
+++ b/common/block.c
@@ -665,7 +665,8 @@ int cdev_get_linux_root_and_opts(const struct cdev *partcdev, const char **root,
 	return 0;
 }
 
-char *cdev_get_linux_rootarg(const struct cdev *partcdev)
+char *cdev_get_linux_rootarg(const struct cdev *partcdev,
+			     const char *root_param)
 {
 	int err;
 	const char *root = NULL;
@@ -675,5 +676,5 @@ char *cdev_get_linux_rootarg(const struct cdev *partcdev)
 	if (err)
 		return NULL;
 
-	return format_root_bootarg("root", root, rootopts);
+	return format_root_bootarg(root_param, root, rootopts);
 }
diff --git a/include/block.h b/include/block.h
index 065ae81358b4..91ab91f9109b 100644
--- a/include/block.h
+++ b/include/block.h
@@ -109,7 +109,8 @@ static inline int block_flush(struct block_device *blk)
 
 #ifdef CONFIG_BLOCK
 unsigned file_list_add_blockdevs(struct file_list *files);
-char *cdev_get_linux_rootarg(const struct cdev *partcdev);
+char *cdev_get_linux_rootarg(const struct cdev *partcdev,
+			     const char *root_param);
 int cdev_get_linux_root_and_opts(const struct cdev *partcdev, const char **root,
 				 const char **rootopts);
 #else
@@ -117,7 +118,8 @@ static inline unsigned file_list_add_blockdevs(struct file_list *files)
 {
 	return 0;
 }
-static inline char *cdev_get_linux_rootarg(const struct cdev *partcdev)
+static inline char *cdev_get_linux_rootarg(const struct cdev *partcdev,
+					   const char *root_param)
 {
 	return NULL;
 }
-- 
2.47.3



