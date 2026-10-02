Delivery-date: Fri, 02 Oct 2026 13:44:06 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCbgM-008pMf-2B
	for lore@lore.pengutronix.de;
	Fri, 02 Oct 2026 13:44:06 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 77D5E2003A3
	for <lore@pengutronix.de>; Fri, 02 Oct 2026 13:44:06 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=c7xMn2IG;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Um4HUDIm;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790941446; a=rsa-sha256;
	cv=pass;
	b=KtldHR6Tk3ugynsnhxz6nrbHppTBoTlM8XRzB7SSGqJ2Ildp29EOs1Hxh/IYAPdUkOPwRy
	i23qBr1/2+n+vwpkuQ1EnCKavZV6ZUPhhBN3s0aTuoBvjP0DA4gK6Bk+bHn6iDaNXiwfl5
	vYP7xX8dVYyY/jqRaJ+sSUmgL0Isj7QpYWoBsex/1BwSb13BSEgSZ2xGdR5NQuytm85Da+
	ejFbouxjGai4ig0wDhTBZFO4HsOr91Tct4DW3dUVfNzqbjwihHzL4jvPJ3JAjOInYTlpoB
	H+rcbpYG6WstWTSGw1vdrJjeSTqT+tSSk2eP8yIiQTxUJj2+qvFk5ZbP+AGS4g==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=c7xMn2IG;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Um4HUDIm;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790941446;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=sUGRti9mm3myhNnpoeDdfjM0QC6pw2iElK13YZ0uTPA=;
	b=UFzVK65bHytU/vQFl8IpRDt/4MDScjQYuN94iEdaB3dTsuWMpi3KSMuxpJs9wvJ+eohNwI
	CCaFzfqnPMXga8xaFYWvRK9kXZ6DIgSCG5jPpV55GWS00cOlqeywO4SvCKbDtRaSDQdLzB
	kblyNgc7gsjExi6z76KJlU+bNnTYLhhknnuZz9ZNsnZC2Cr6tGsMlTA9Rm3uhrSG3fL1u3
	GGgMrawt2z0nOKcj3D5QzuCC0L4iY3xkfO7h0owtoC+mw2qtuaApmVJJBjpzOzUKmCI2Jf
	B1HZd4FB4NfL7IV8htBLA5gvjfJ7pn8+Nt63F1Dub5+zpwbbTEvNH3cFDwpTGQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sUGRti9mm3myhNnpoeDdfjM0QC6pw2iElK13YZ0uTPA=; b=c7xMn2IGdde2ZbksFui5jE2rs+
	PxwGzhlLhrjDUU4hdTWVAJYIGZqTO1nyhGZBuYPd+nAqimyIJGfet8NV4/OJKRDIFq38cOzN4n/Ly
	es3s2bQoPnaAMBY0PX6K7uR0ccmFbRMjRFONzZn3tXU6rCyEEJbHcavUPr1n2I2PCTGlqmbitM3fA
	1fhc9Bbn+Lw3o9Du51V8UhNekXMOGqZdMBLWTgCg1T8zKPxLPk2aGyHUAq7+G5Z+Aa7OMX7ROmaHa
	BPlBb7stRh2Z/rZjbbRzDqiY3TIaRLSckeZooYoqyf3DpJBAtuO6p2Nzy7Kn8pxZVOAQeHQdmw/Hs
	ZQchtN8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbfO-0000000BVL5-1iqb;
	Fri, 02 Oct 2026 11:43:06 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbfJ-0000000BVGA-10eI
	for barebox@lists.infradead.org;
	Fri, 02 Oct 2026 11:43:02 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B3139202303;
	Fri, 02 Oct 2026 13:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790941374;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sUGRti9mm3myhNnpoeDdfjM0QC6pw2iElK13YZ0uTPA=;
	b=Um4HUDIm2CprJjIi0qvj/+NoPeUINGHNxPUk3SBqRDxBxkM/vZ1AWO0KVJK1CWHOLVP4Dh
	9JTJqUPTwvoonuzGSlPXasWEa+Spwf0QPrdb9/eMAHtJz5iuG1naSZuVXOJIdrZQ11fUmM
	icNK37K+rYpQMxZysOvcSXqESU854RW3deRpofsFdgRnaRrx3L1j5PfjnNtW69qIyRRrDm
	OQwvG0ZJlrZ87p2jltikgRzpxLOKi0bfV/o8Ku3UTQviBBdLVqHkCDWNktGo1AbynwbA10
	c62HJKW0zuD7ej3E2GJ8g/0tgLn/VG59Ve8tPfpLrSALpJYwtzHsSEpoZzwLdw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790941374; a=rsa-sha256;
	cv=none;
	b=Xjt1eNqGyq2K5CSnsp1VV9qZZksRqaYVDAaj1mFayDIZpgjHQjVnhTQr2VEsKKjyDea+hM
	oQml8Ol40fyMv/B76S89MNt8VAvoNXX4xdWgCceq2cOUR+Fwrb7p/Tj72RmvECSeQTs+4b
	D8lzDtrgZ9YVIwl1tPede3ExeJLr9iDwU44ZOGC3X4Hc19OLOsb2kdT8rovzhLVnVYlr62
	WxswESlk3kVl58hTsiATkgqzdcQJka++BvgKQOX+RfHN21ceZ8alJmjXiVMhgHQ2S3fGXH
	mGDITGaCNh5+Kcv2MKVkpm5K8/BFCDuvsMuhs82c5hkkb9jlHOYM4dBaLxnlbg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790941374;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sUGRti9mm3myhNnpoeDdfjM0QC6pw2iElK13YZ0uTPA=;
	b=ZrqLSUVK1F2cEFd8d5w5h6sCjc3oLwUlymvyf91GX6tE2kBEt+WTXg8GwFR0vew2YnDtcj
	fZ0h4gzaH9IpQvuA5tuVwqkSPbjpKOuKQW0axoCZDBDrGc6DxnKTsd4CfCmvBhkZoOXP/S
	uHWzURFXGXu4SMxchZL1mkRUkz9RVqsgBIEdMLX7vaZWJU0j6TW0eZ3XfJpMpU4jVsHszd
	pCNGuzk2SYlmJ38GR32USy0nqsWB0DPmfgZJ5fu3vba8YhBKhAt9s2ZteB90RhwmztxGEU
	/TRkFAxBRJS/50iKFYK7622gl2U1gtTWZBP0W9uEXSUW2o4oA8Yul78NKeUhJg==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 9967874145E;
	Fri, 02 Oct 2026 13:42:54 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 5/6] fs: ubootvarfs: reject variable names containing '='
Date: Fri,  2 Oct 2026 13:40:08 +0200
Message-ID: <20261002114253.2906535-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261002114253.2906535-1-a.fatoum@pengutronix.de>
References: <20261002114253.2906535-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_044301_752741_41A1A935 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> Creating a file
   named x=y on ubootvarfs stores the variable as "x=y=<value>". That works until
    the environment is parsed again, which splits it at the first '=' into a
   variable x with the value "y=<va [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 77D5E2003A3
X-Stat-Signature: cpg8xy74wbm9iq3ceokoabhajz8djbmm

From: Ahmad Fatoum <a.fatoum@barebox.org>

Creating a file named x=y on ubootvarfs stores the variable as
"x=y=<value>". That works until the environment is parsed again, which
splits it at the first '=' into a variable x with the value
"y=<value>". The file the user created is gone after a remount or
reboot and another one has taken its place.

U-Boot cannot represent such a name either, so let's refuse to create
it with -EINVAL.

Fixes: 8daaa21b3949 ("fs: Add a driver to access U-Boot environment variables")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 fs/ubootvarfs.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/ubootvarfs.c b/fs/ubootvarfs.c
index 72d0627fb0cd..b0353d7cedef 100644
--- a/fs/ubootvarfs.c
+++ b/fs/ubootvarfs.c
@@ -281,6 +281,11 @@ static int ubootvarfs_create(struct inode *dir, struct dentry *dentry,
 	struct inode *inode;
 	struct ubootvarfs_var *var;
 	size_t len = strlen(dentry->name);
+
+	/* U-Boot splits a variable at its first '=' */
+	if (strchr(dentry->name, '='))
+		return -EINVAL;
+
 	/*
 	 * We'll be adding <varname>=\0\0 to the end of our data, so
 	 * we need to make sure there's enough room for it. Note that
-- 
2.47.3



