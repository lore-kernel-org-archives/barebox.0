Delivery-date: Fri, 02 Oct 2026 13:44:12 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCbgS-008pNx-1y
	for lore@lore.pengutronix.de;
	Fri, 02 Oct 2026 13:44:12 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1A1532003A3
	for <lore@pengutronix.de>; Fri, 02 Oct 2026 13:44:12 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kbsoMIrV;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=GF0q39In;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790941452; a=rsa-sha256;
	cv=pass;
	b=W5wyIT8RkbbXFRDasD5KFgNrtpozhof9lbeW6am2XHCfFNZ4ijzMvZD2bPgzj1eTETMLun
	ayusrC2OQwzb5dGS3kFIt8upip+vrKVP4YurvMtfZ+97Kx1Iml+BcPCD11ZhqTVXQ/uFvo
	pAVTb+Qu+e0PCPwp2dWlyClu3L0rcLMSlbwDMuMnvbq9hlLBGmc3ey5B/1F99S6k+kEp0c
	NuGUs15wVRSVQqB1iEiQO0FVklk/wJgG3LJeBFxbrhjmVUhdyW/SK5hBDE/w4xxjT9NVfa
	O8RaNs5aww+QzQv/N2F5PUzwTo7NkoGWqBqLTZ62dDQFJ4v6apK/XjYdYtjA4Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kbsoMIrV;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=GF0q39In;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790941452;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=P3SGi3bVCm9SPRNO61lKHcvk28+KtnDiqYGmeJVTtMc=;
	b=M8DvTGi2y93P5QgFi6mE6X+l6xZGm0PzLS23+6yG+AoDqJJiTlUHLiOC3wL0K6KOkvbpa7
	lSrQvQObk0VjZi+Tbef9jWCYCu8SVV6xNU5kKyDK7ElgmzbZYkRl00CUYC/VMMD9ErpOb/
	9rJclLZxevh4gT1ac5Hj2/e0Th86hnSMjZWXge2iNSxdPfMGmhCbOXDwTQ8p+HTGMs4ZtI
	SRmD1Dnb46QJklAjZ0rmPvxujX8VPLGgi0uIOr0SVybzF4FHwxhCJlLJHn1Klwn2IWfqI0
	+VBoLnAw1pJ+h4+MQzQ/3qzPR6x46jWK/a8jrAg+L88qAphnSW0ZRyfD1r5gBg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P3SGi3bVCm9SPRNO61lKHcvk28+KtnDiqYGmeJVTtMc=; b=kbsoMIrVLFRAM9AOdc4sT6Gwik
	96xIuyHhEp4pwSVqGyChIcTslh9iE8E6Hpe+EKWB5R648+NDMSIUwu6jWE8zt8+/zuJ3sXzKuSlo8
	KCvqONlqalGJ/7EebhB+X2yuR0kgvhOK9GO1obhd1jbUhBh5uEUr712pzhHJmQbyCegCIUnNdi2D5
	4mT/Eg/lG4wiSmngsk7AoRxrOso6OV8E89f+ewhbRlefhUOeTm1DJVDVAwxxH5xvMx6RklvlzNGNJ
	1kOCqut436x0lAv7XgPvcQ9BKYGv4Rix0GCY7zkvJKvSzpKWYhDKq6VeMYzCawTLuQc4nWEidcCJv
	Yo6iRWhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbfJ-0000000BVH7-3jPA;
	Fri, 02 Oct 2026 11:43:01 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbfE-0000000BVEZ-1zTs
	for barebox@lists.infradead.org;
	Fri, 02 Oct 2026 11:42:59 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9EB5F201F18;
	Fri, 02 Oct 2026 13:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790941374;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=P3SGi3bVCm9SPRNO61lKHcvk28+KtnDiqYGmeJVTtMc=;
	b=GF0q39In9WJuxd1O1ckWrQwUB/PM3rut0Zp+jq3KMyiP2sdqznTUhOWXHKLjsdecqLyFjy
	KYth4OTw85PNPo5DJZCFb689J7TGQPB2ZPrrrhe95UrMlqyHZNL78BP/tX7jF6FVp+BPyu
	ExCdOMLVdLpazbaNsXUKmExkeQWMECNI8BC2xT3/c3xh8S11VhkEczmZFEbZxn6B6WmSM6
	K9ew+AZTWVXtoFPJ0G4E6S2qCpEp8UmYsZjHf+q4L5VnwOiCPHbFZn6Jg/1UnYz9mYXD+K
	uvws4RlZF/+iW4fQB0yMTjQbffmZVaApsNtjK0eNSkQ9K2yqVXcbNxWe8+/AwA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790941374; a=rsa-sha256;
	cv=none;
	b=IuIkL5DFzt31S593omPHBMmPTGQbb6Ok3W+57Tr6ElLDQ5UWKfIYejlGXwpVSyP9y/WNkD
	mwul4p6rfoBKcHgboppVGQZzHeDT2oHnuTzMKC1r+hQVBZfEqV6nEYQOvewfkKeQaceyY2
	x7bvc7vwAINKIghGVryVNlmlS6jwFjdSyEMFkbOD/5auY5RmsFlGnVsrhraFeN76/AFMvV
	vSiSSymEJTnnaCy5YRfhn0gJUXpHXPNQUlu1mCqkkciuO9e2bDqWBC8tNeiSRf7606k0VQ
	EUX0yNleWPquWra2kXst56K5wQdMotOesd/T5++3DGMmcRzSzwVRFf3qcU3OMQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790941374;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=P3SGi3bVCm9SPRNO61lKHcvk28+KtnDiqYGmeJVTtMc=;
	b=I/epB27lidCJCV73LolK3uio+0si7cfXpijRO+o6WdLJGO0urBjDK2X3fFHJBN2h+tDxHe
	ILy3UIcJmztG9DFQyVJ1xjxxbiHz3NmeaJssdlE0X/n8eFxNqsm/uZy0W6WXveMdKURmoe
	fRt63noKpAXnZ6udRH9SD4+dWD97htgFgs4zkGn8tU39mQmOiBbdm9HGGa2NtwA0RV1Y1N
	V//upSEhMNFJu3eqxtajbFebTmGN4uq4OFi4a7KPtN/aEPqcxxe1hLY2DyZ0JouCnIwZw7
	GCmw1NY1AwY0oyJYMB5uZFR/a0QzeGOY67A+yU0yQuz/REf7XbGwCjv0ioQrxA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 81F4E7415A1;
	Fri, 02 Oct 2026 13:42:54 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 3/6] fs: ubootvarfs: range-check the new size in truncate
Date: Fri,  2 Oct 2026 13:40:06 +0200
Message-ID: <20261002114253.2906535-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261002114253.2906535-1-a.fatoum@pengutronix.de>
References: <20261002114253.2906535-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_044258_367229_9518E477 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> ubootvarfs_truncate()
    stores the size difference in an int and checks the room left by forming
   a pointer that far past the end of the environment. A size 4 GiB past the
   current one wraps to a differen [...] 
 
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
X-Rspamd-Queue-Id: 1A1532003A3
X-Stat-Signature: 9odswuiezh4f7x1onsyuobqpjy89mgwe

From: Ahmad Fatoum <a.fatoum@barebox.org>

ubootvarfs_truncate() stores the size difference in an int and checks
the room left by forming a pointer that far past the end of the
environment. A size 4 GiB past the current one wraps to a difference of
zero, the truncate succeeds and the VFS records a 4 GiB file size. As
ubootvarfs_io() relies on the VFS to clamp reads and writes to that
size, md and mw on the variable then go well past the environment
buffer. A size 2 GiB past the current one wraps to a large negative
difference and the tail is moved 2 GiB below the buffer.

Let's keep the difference in a loff_t, compare it against the room left
instead of forming the pointer and reject negative sizes, which the
driver cannot handle either. The resize helpers take a ptrdiff_t now,
so the checked difference reaches them unchanged.

Fixes: 8daaa21b3949 ("fs: Add a driver to access U-Boot environment variables")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 fs/ubootvarfs.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/fs/ubootvarfs.c b/fs/ubootvarfs.c
index a703f16a10f3..3b5c3039e3aa 100644
--- a/fs/ubootvarfs.c
+++ b/fs/ubootvarfs.c
@@ -197,7 +197,7 @@ static const struct file_operations ubootvarfs_dir_operations = {
  * zeroed out
  */
 static void ubootvarfs_relocate_tail(struct ubootvarfs_inode *node,
-				     int delta)
+				     ptrdiff_t delta)
 {
 	struct ubootvarfs_var *var = node->var;
 	struct ubootvarfs_data *data = node->data;
@@ -235,7 +235,7 @@ static void ubootvarfs_relocate_tail(struct ubootvarfs_inode *node,
  * ubootvarfs_var's in varaible linked list
  */
 static void ubootvarfs_adjust(struct ubootvarfs_inode *node,
-			      int delta)
+			      ptrdiff_t delta)
 {
 	struct ubootvarfs_var *var = node->var;
 	struct ubootvarfs_data *data = node->data;
@@ -260,7 +260,7 @@ static int ubootvarfs_unlink(struct inode *dir, struct dentry *dentry)
 		 * -1 at the end is to account for '\0' at the end
 		 * that needs to be removed as well
 		 */
-		const int delta = var->name - var->end - 1;
+		const ptrdiff_t delta = var->name - var->end - 1;
 
 		ubootvarfs_adjust(node, delta);
 
@@ -369,12 +369,16 @@ static int ubootvarfs_truncate(struct file *f, loff_t size)
 	struct ubootvarfs_inode *node = inode_to_node(inode);
 	struct ubootvarfs_data *data = node->data;
 	struct ubootvarfs_var *var = node->var;
-	const int delta = size - inode->i_size;
+	loff_t delta;
+
+	if (size < 0)
+		return -EINVAL;
 
 	if (size == inode->i_size)
 		return 0;
 
-	if (data->end + delta >= data->limit)
+	delta = size - inode->i_size;
+	if (delta >= data->limit - data->end)
 		return -ENOSPC;
 
 	ubootvarfs_adjust(node, delta);
-- 
2.47.3



