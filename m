Delivery-date: Mon, 26 Oct 2026 13:12:54 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLJZN-003VCW-2n
	for lore@lore.pengutronix.de;
	Mon, 26 Oct 2026 13:12:54 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B758C2022E2
	for <lore@pengutronix.de>; Mon, 26 Oct 2026 13:12:53 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1epjvCaj;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=FhZ5yFmf;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793016774; a=rsa-sha256;
	cv=pass;
	b=RBMajnobw332V5fRuS/Y+YqrzLG6rDqU8JIUJPCxDI1X2TKk3y2r5b3agIJTAv8jmOGliP
	kbGlPELvzTufBjhPC1GTYrDQ+rtb8UTq1JXjANJhzZHe/6Q94JI5ALY4ku3O3EZJ5hUUL/
	HVwptdQTPC7nNlPLKedJ603Ti8IS4Z7Niy4ryx6jUOhcITZfKkJlDraXSRmrgbBLByjbV6
	80GMH1FrCPG3f0HbhHh/uJqMzPYlz15rKQlq1igGBDLh5jtSO6gZ+G/YX1ZWjLeP1h/nOJ
	CYO8hG2MeSQDgZcFr2S0a/+5m7Dko62LRJrIlp60P47OC8nfDCqGCWbTiX4rhQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1epjvCaj;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=FhZ5yFmf;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016774;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=kguf5NK0c9tI0eJ8B5+yjpWue1GtWbh3E+YEbz9veTM=;
	b=Adb9rVb/F1QZ8hcSZXNTXkORO1IT2/pbFIgWGdPYuVmazQAInizlde+Rguitbc5e7czAte
	dFAbwSN5nxQ2vfaGK3uc5PFcePcbiSLFmxk4kHVcneW3Dy9plYWKPy/xaPNrsQ7I7QLOzT
	OO8nw1IHAtFWVX+lMO1WXhIwcfiw0rRfhmPaYXIBU6e7WrP9c98EGqK8GZOujtyoaY2WV+
	aBCrBBeBl+kEde+mQm/GfTNvSdO3nqxnVj5on1ZuKEJNof0zmYKCU5sRIl2nusHhY5Utkr
	2fEBNr6NZ+jwfJaY/+UKXsNn87PGvJJiP7sWlEYGaSrZRNyG2j2rlQZ78c+LZQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=kguf5NK0c9tI0eJ8B5+yjpWue1GtWbh3E+YEbz9veTM=; b=1epjvCajxIB/5F
	e1btCfenAL9ZSOpRPrFps+HB9HElMaDMRBF9Z4MTWf4AOOmjAKDQ57F4FDWw9pQ3aeTQqf6WpTVaH
	0O93ub65YsKUZeBQotmq/D9+dUSAXfsJvgI2pCaA6xFAl11f5kl7XNppT0B+9j7zw97IB6DmylUhX
	5SEGGmVJPT+X74AX3cte1blQJieGtV9i/IyuArzfk0dtN3QGhzYnC2kdlFFYXfmmM7lrR1LiFnkSK
	OtghaVnu3oBDMkNEZhTGUsSN9di8KtmEbkFuk3v866+LHhEb+gGEN+bJConSyRkvke4PCA8TSWWKB
	maCaqPCVhlBmmu0Z/taA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYa-00000002TEL-1z8o;
	Mon, 26 Oct 2026 12:12:04 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYV-00000002T9z-2B1C
	for barebox@lists.infradead.org;
	Mon, 26 Oct 2026 12:12:02 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 852142022E2;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kguf5NK0c9tI0eJ8B5+yjpWue1GtWbh3E+YEbz9veTM=;
	b=FhZ5yFmfC7mFr8t6PuT2ZrvgEgM1LJ5EF3fuNHWypuCv7AFc8YNFZKHLRg27h5X0WU6e9D
	i6QSo0IO9mJ6hHmUqV3fQGhqKLkCo7Y1uCc4JQwS6D0Izj4TcgXxbcK5OI45MAvZHscBax
	QSjAWdN1wzjqSHCaUDtyzKF/g1JkedvN/cEXi0T7P+ptdSZm9RrBAx8vZO+rAWi5B865Fl
	68dK5n7mcNXaT+8LrvWJj3A3qLkPZT4XloKxHXrLdV9UVlMQn0RbU/y8bQSsLpwa2NwH52
	6lxTiCMwp7NdsLQEf/ZXh8qv5C1XtpgVsLmNS1GIyxbj/JdqJA+x1dqwzuh35Q==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793016716; a=rsa-sha256;
	cv=none;
	b=V9sDZ1quJsXHhlMNWnD25Mk+OWz29LsVbxry/dV+Uk9rC+rfZZ6d1x3GU/PD+FIlX7rSyC
	BmoYpZeCdxPKpdd7QoObaWCrpflaySu+kVM2boIUYZemal4BBBUgT8L+aDTCojua8UYMuv
	tPm40uoNDCA6pMBXRjpDiY7V/JV1br+k7XDSOSi6uqdycF7mZGMyH9O68eePKF7B4oLpkK
	U3X7c+k4L8bYR85U/HUrwTzQ2Ei7PHLmu3VkZ9pE8fPsGQrFgXOCNO9aLBkbfmji1Sxg6j
	2hgnWSAm9HlZeYbS0K2Lf4Yg3TP7zfYDP6StHehGZbV3ibkFqx1174fbdOCA7Q==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kguf5NK0c9tI0eJ8B5+yjpWue1GtWbh3E+YEbz9veTM=;
	b=IxE48B3Dy1U0R3t7oLeSKJ+N4m1lONJLfEXyJ5uHPvYv49AbaE4wwlNiqRw3GFB2Gcw9MF
	CAcG2VS+rvzWbTVu2UzU1o+vQDOt1iM8N19jatbF0PpNWnmhSW9oxz5zkzq3rKVndLkB2x
	/f9MFTHQ7oQGUjUzIRfqorZsNgloHze3VhZgHtQ2BWT0dZ5B4xCNA/F/wjW03FZ7ZVLDdc
	CXsdTlIvOmsxFR6vS8dgqwgpay7eKEAG3eU4mrQKMbXD7fU1UVoFAtv0TXqa32w3GIekae
	jSJIH6Hgd54SD3qj+ISJ1lnV5LvokX1QD5UAmLi0Et5boaeFvop51QzPnPeA5Q==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 73FF7744100;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH v3 02/12] commands: devlookup: honour global.bootm.root_param for -k
Date: Mon, 26 Oct 2026 13:09:53 +0100
Message-ID: <20261026121150.455510-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261026121150.455510-1-a.fatoum@pengutronix.de>
References: <20261026121150.455510-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_051159_737303_FC6D72C6 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> devlookup -k prints
    the root= option that bootm would add for global.bootm.root_dev, but it always
    calls it root=, even though global.bootm.root_param now allows bootm to use
    e.g. verity= instead, so [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Rspamd-Queue-Id: B758C2022E2
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: j7geu7qz4kgmzce7ogogh18xkxxp91f6

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
index ac03479e2aca..c8b17f29f4a7 100644
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



