Delivery-date: Fri, 02 Oct 2026 13:44:08 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCbgO-008pNQ-1v
	for lore@lore.pengutronix.de;
	Fri, 02 Oct 2026 13:44:08 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 264A0201F18
	for <lore@pengutronix.de>; Fri, 02 Oct 2026 13:44:08 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1I7Ag+RD;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=VD2cMtbX;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790941448; a=rsa-sha256;
	cv=pass;
	b=ZdC2YCgMs511AHLp5juZH7/ULba2f8ELnUGlTNVWfr4yEtFmMX+emXWidlLTzFQrjlhL2F
	UZ0AYRFB1w7dl66c+cIthdZxKEQmSb8UnVypqysW5YARf8xf8YzcMI+Ftqxrs4/8g+mDkn
	Y8XZSVPb32a7v2bA4f53ebU75fi6xtQ6Ay+6W41TskHLB69MIKY1ynpCP0g7hUP1f0KrP4
	E37ocymfjSePMr5oevYlX6VrVyiNckQx5uLkXovp94nI6hKDevsUBgpdDaShWsPAeDNcrI
	22rce/5dcRQ4hJeLnqeqo9OnzbGml/1jFA+ucW8yjiYMpGNlyEXZS0MPUtzfvg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1I7Ag+RD;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=VD2cMtbX;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790941448;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=qGa3ymtqWDvVkJAebcIDYWOS8Hk+CqqAAwU9G0lREcE=;
	b=QSxKywBck5l/AXtqFO4r3pCldbenHAtaY6Bu7wCLffj6fLZGdX3LWVXO+42KStLI3leXb5
	LG7zelouUh+VAgNw2Ga3fEdLOJMkrBtlpz3MCEoB6VbEr2grQhQxpHXjr4T4zQ7MdjZITW
	yLlzTwCORiVPTeXQYbufXz+Ohw80i9fkwJWgNFuwNNvcvnbdqXqlXnNUjMxqZ64ANIa+jv
	FPgPjl33HXFPdbTozMLYx3EnGevPTadRex0BZdeFokJiSKkJlKI9vXavUz2iaz8FV0wIV9
	wrK9b+6Yppc0soRns+QG3DERYoagksuJiijEYddjxWOQS5kpGZC7sEADAfKMRg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qGa3ymtqWDvVkJAebcIDYWOS8Hk+CqqAAwU9G0lREcE=; b=1I7Ag+RDRjUyyv5ly7CYcGNbND
	/QyLTDl4vmBYxJKg0S6oW5rQFkd8+qgtYULPxfRIq4Pbv7o0HhVwYX0WJSqVpWvSavdM/LKui+WfS
	II/b42y3yy4kayENvlJeOABszihS30zKEdvBHEfghgbDVsRBqbssH1B8zzeMWjYmJR0VGyNbGN777
	Qq/VVA86fLZzJg8kZGhqkkXjYcfG6IPlUKMCxjTsI0PYXxl0qRpsuoNetrzaEp/ZTNNVBaBk+LwRX
	9zfbtz8cCGZc9BmsfvDB0BBWEsQ50mzYOGScefSVS2omAp6niQX5i8k8htQefItJzXobv8O6HV/E+
	s1Nqt/Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbfK-0000000BVHg-1GFS;
	Fri, 02 Oct 2026 11:43:02 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbfE-0000000BVEa-2Jbm
	for barebox@lists.infradead.org;
	Fri, 02 Oct 2026 11:43:00 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A7E4A2022EA;
	Fri, 02 Oct 2026 13:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790941374;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qGa3ymtqWDvVkJAebcIDYWOS8Hk+CqqAAwU9G0lREcE=;
	b=VD2cMtbXxnU2ZkKkRSD7To8msD+S8ATkyyMKAgX7Oup+JgXyTWCycxvNV2nPhXFioBP11k
	5PUtgY/Qn4mRD1NAGZS7tNYobS+27ZMmbGt7scSWc3sdbPVLXrDhPOEI1/PAjVV4NE0+FR
	0VBoVYnI01vdc48K2FXPttwLIUpnVZb6shQB76ro4WL8K6BfVLRQp0NzSm22Yz/N2e4nwW
	hCzbJ9nhMKaXBApWy+AdwJ8RT8aH7bz6F5wXmQxrVFR064RrbRpapf59prCxa1lbexzMZO
	Uxjl2UXwz8dKgpI2aQmczbi+D/nvOyeJIVTfqKQWdDBQ1Z/S/0Oq0utqjGLKjQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790941374; a=rsa-sha256;
	cv=none;
	b=BtQ6knXx8n70GzgxRYa1wewp0xYxSPp2Zs0vnXjqAU+Jn7pK3l88RuLu55R9A3pQL9NbKz
	5wkp6avre6BZqPLifSYWBP5FvYMnV1iObgLJP9EoqcQBh8Lrv/ELLPNcskR8qRYJ0POCyi
	e2Dohh8wjtd031kFSjHw26AjO1qPPpjq2sT5QmvuIUQwitSZcllHTGMwO7MzBv5ftutGIV
	RfiXHvOr87k9hByyDWIyiXLMU+7qx4Kaw9prL1KladdFC60fFtFYT5YhVBVa4biLd/J/+Y
	Ru0oThzRNRVCX20qEnDJr4xu677qLXvxViV/WvtIZo5ZxNwUkS9o+OjpqG0V7Q==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790941374;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qGa3ymtqWDvVkJAebcIDYWOS8Hk+CqqAAwU9G0lREcE=;
	b=H4iIJ5GCvADxyt0BVXcUOiyshUEckVikq1exma1Vsfr9GzqhsITWwIH6SQexchqgenaUD5
	/OD5yhY7lbcYvpF7cYKZP2DettqpReB1aeNn6iAtuPUaNT2TPJr7xKbsOJvmsSHi7g7Wz1
	x9VYXmxqpcIH1pqe4dWtImghX5sUuxwfdl4/uakSyA3i4hM4jMwVoGSXW3+ThE2fQ+dYv8
	c6Zzx/smlgLD/pdh3tDTzPNDhRMPCx6O2sBqfRX7aIUgOfY5IwMIYm/GDfXrQeHZRqyWok
	BMDse9PxVdPygEtPC3c22eusXKgYBQHAYbHC+b+exfYlnX0JvYDVf/xToV39LQ==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 8DA0074021F;
	Fri, 02 Oct 2026 13:42:54 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 4/6] fs: ubootvarfs: do not form pointers past the end of the environment
Date: Fri,  2 Oct 2026 13:40:07 +0200
Message-ID: <20261002114253.2906535-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261002114253.2906535-1-a.fatoum@pengutronix.de>
References: <20261002114253.2906535-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_044258_391106_1534DCB1 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> When the environment
    fills its whole partition, data->end is one past the end of the mapping.
   The room check in create adds the length of the new name to it and tail relocation
    adds one, both yielding [...] 
 
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 264A0201F18
X-Stat-Signature: ejczmi968istciwyimcase6mw6syrao7

From: Ahmad Fatoum <a.fatoum@barebox.org>

When the environment fills its whole partition, data->end is one past
the end of the mapping. The room check in create adds the length of
the new name to it and tail relocation adds one, both yielding pointers
further past the end, which C leaves undefined even if they are only
compared.

Let's compare the room left against the length instead and only step
past data->end when it is still inside the mapping. No change in
behavior with the compilers we use.

Fixes: 8daaa21b3949 ("fs: Add a driver to access U-Boot environment variables")
Fixes: 79f048173d98 ("fs: ubootvarfs: fix tail relocation length computation")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 fs/ubootvarfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/ubootvarfs.c b/fs/ubootvarfs.c
index 3b5c3039e3aa..72d0627fb0cd 100644
--- a/fs/ubootvarfs.c
+++ b/fs/ubootvarfs.c
@@ -210,7 +210,7 @@ static void ubootvarfs_relocate_tail(struct ubootvarfs_inode *node,
 	 * the last entry's NUL is the final byte and data->end points
 	 * one past the mapping, so there is no terminator to carry along.
 	 */
-	tail_end = min_t(const char *, data->end + 1, data->limit);
+	tail_end = data->end == data->limit ? data->end : data->end + 1;
 
 	memmove(src + delta, src, tail_end - src);
 
@@ -286,7 +286,7 @@ static int ubootvarfs_create(struct inode *dir, struct dentry *dentry,
 	 * we need to make sure there's enough room for it. Note that
 	 * + 3 is to accoutn for '=', and two '\0' from above
 	 */
-	if (data->end + len + 3 > data->limit)
+	if (len + 3 > data->limit - data->end)
 		return -ENOSPC;
 
 	var = xmalloc(sizeof(*var));
-- 
2.47.3



