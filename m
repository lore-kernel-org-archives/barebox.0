Delivery-date: Mon, 02 Nov 2026 15:54:24 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xNtQV-006PvD-2L
	for lore@lore.pengutronix.de;
	Mon, 02 Nov 2026 15:54:24 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DD796201E05
	for <lore@pengutronix.de>; Mon, 02 Nov 2026 15:54:19 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=MOm1OSu8;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=B4XUuTRV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793631259;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=/iziGgIgkTljrtDVP0hUL9HZie9ubpSDVzCPDLrbDj4=;
	b=YNHhn/rjh4Y7lVCE1cjz3yItr9LBBAWHnNBV96TiACVbdylF6NQzPvY2wiAiruJSua5Skn
	tFvhVpOemnzy5ru80YctRg0aVdNpPz9W1BmKu8+38EM7r/CEvEtNBvmTLYCBAZl4tnDN3P
	P4J4FTPJn++eFhE69O3Dj0gYXJjiodK3JY4fDL9BiUZM3twysZ/wnHN5/FaGEyTN85UOe3
	D1jjO052L37t9L9wZZmIoziwv5GnhV6I1/PtPIrFF5XCiM817sFMpKfjL5aNd7jGG+X/B/
	2OYINW53rKNx49vOiizBLxYdn5LgJEm2WEptXDk7rX6nXyn95gTEDrH+OtR5Yw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=MOm1OSu8;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=B4XUuTRV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793631259; a=rsa-sha256;
	cv=fail;
	b=VTwO4jrECUmrMsVZ6f/6y5jeSb8Xb9MDVLb4s/MbkeAAAIbvYgWb7TEgtfdQok0k58n4q/
	5npKwZaiHKnP+SIIfiUIKeIvmwA0HPnQfRrMwIO2es0Ql4qLT4oOJwQTIO1jl2ktmtg8mk
	Psx+Ql0HtTaMFqnjRMPjhys8bvcXQONQ5OPn+0DisHRzWNixPshVbzKPEyTG9w/2n2HPUI
	kw9gubtiBhGISo5RbdT5rUOqW2AX9tFDm/1Z5kEGNqE9kBtWVsKXMa1cdyjUzhCZNRusYw
	tP2Ep0nZS2Bp2eujcHX2Rnn18Dnfkb8xTAJTjkBFoewYFoU85+r/YtIQF20EFQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=/iziGgIgkTljrtDVP0hUL9HZie9ubpSDVzCPDLrbDj4=; b=MOm1OSu8O3UgoU
	PKj3deKUZJ1D2Bksos1IO1HE4uiiwZSmp/ivpWtKO0I9ry0z7ntVqACiE6WmDzrN6PSY+T4lwkgn1
	vN7BxyTXpBKNR8aBSwGHHRF8wE/KJ1tDlIDKt4F2NUlQ0BXP1nq4oqoSgf2nkThyhQdZwgvIHZWfq
	HloinWwH5/TsfNnoIIVSvJGMM0nrfVgWrIydA5Hau5EsIpjdYmZu/tG5h2Lv2Aa682Mrcdh6OD0iF
	qJNGpQ8BA2lVc5OL7HCVGmKA1PHdHr7FUxQ+TBNA1OWLF4t6pteBqzOyAIAk55y3U+y+esNKGWMpK
	njUYDQtrFPmjoMML7TDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNtPQ-0000000Gv3f-3GT6;
	Mon, 02 Nov 2026 14:53:16 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNtPN-0000000Gv2R-3qBY
	for barebox@lists.infradead.org;
	Mon, 02 Nov 2026 14:53:15 +0000
Received: from dharma.fritz.box (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id EDF682006AF;
	Mon, 02 Nov 2026 15:53:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793631187;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/iziGgIgkTljrtDVP0hUL9HZie9ubpSDVzCPDLrbDj4=;
	b=B4XUuTRVFeZtEQpa+JAqJypABjEi4oeJrIIgDg8Te15JBp4+4WJLHvqfUGP/iyCnWj0U4B
	kC7qg5pdulh7IjgAKtupv5UPwdoDENGHoDIoxWp+PHupvp44Vg9u6TuVp/kl9z2iCutkJI
	qdF3xGp7r8H0XSZMRNsa4D2zAoRAhw9hAXe8hmGQM2NKsQkEEdz9ryxg1GXVLhp6VxgGFc
	5WnsutGg6RPwThUTbbD/GrCfQfrJGx64CgOida1D6roePtnhbir18CWmJY42PgyBBcbZN0
	JwYIUG68VtWlCkyjybXOwr3O5HDLO+GkrCsNTjiGuFC8NvjDfxxPBvw384484g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793631187;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/iziGgIgkTljrtDVP0hUL9HZie9ubpSDVzCPDLrbDj4=;
	b=LUpZzCrlK9eaIW9eKiOdAoR4ewNb9j2YOXG8QN4f+0quVUfWWbLEyCvVMlDyeNI8DZ4X9E
	lVPfEHaeCrK13cMDOT4itDnCAHya4pbWtN0JleUw73pCHBiXmQ/gUIu+Aiow9FuqoM9dVl
	xMGtiq7Cp7TX14V147ll4+04Z5tiH935zyoesm3gLhLyIjDxYVF5Ai34K9cJPWNxrV8nz4
	WWxGYumj1/r6D/pmGMYFy9M1ogMi/XNtagtqsclDLx9csbmgj1F9XasoMnN4+rGHJ0WSqk
	utZw/3kNO7HmoXuHuC85C7FToi9hB7NUVQYJKTb1mWZhYcl/w+k5D+dK2S/IYQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793631187; a=rsa-sha256;
	cv=none;
	b=MWsTXhWWQpK8BTh5IYcCPvr2dXT6xIcvzqzjnO2TpDFRxbNviq40k8vIWq37u5KCN0N6j/
	WNALWdAu83UJhryj6peu4ySgq8w3+JhHAXwdrAIyEqsX+JU7RiREz3BoknuUeNvHzhFSye
	j8jmlhLE2v5LIttE7Inosl+u0NeBWNQ3TGnvlXE8Um+vlnOSlU3bbLkTbABntZE48deJ+8
	wSXgfViRwrvgp4n8ygdMdZpGbqLiEzlgnYaUBUi4/RKJKvuO+hJI3MoCpCywC51/wOucKn
	EJij4nuWDIpchO7JJF6FgE8DHTVV1Ust9SXyB9I0EHmm2TfG0Fy9R72SB0fZ1w==
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Subject: [PATCH 2/2] fs: jffs2: don't free the symlink target twice
Date: Mon,  2 Nov 2026 15:53:02 +0100
Message-ID: <20261102145302.3025815-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261102145302.3025815-1-s.hauer@pengutronix.de>
References: <20261102145302.3025815-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_065314_128835_3EF42459 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  jffs2_iget() makes f->target the inode's i_link for symlinks.
    Since commit 66666e887c ("fs: free inode->i_link") the VFS frees i_link when
    destroying an inode, and jffs2_destroy_inode() then frees f-> [...] 
 
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
X-Spamd-Result: default: False [-54.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: mgiu85x7zdsbsmi59bbbgtjxhziwkejf
X-Rspamd-Queue-Id: DD796201E05

jffs2_iget() makes f->target the inode's i_link for symlinks. Since
commit 66666e887c ("fs: free inode->i_link") the VFS frees i_link when
destroying an inode, and jffs2_destroy_inode() then frees f->target
again, so unmounting a JFFS2 that had a symlink looked up ends in a
double free.

Hand the target over to the VFS by clearing f->target once it is the
inode's i_link. Nothing else reads f->target after jffs2_iget().

Fixes: 66666e887c ("fs: free inode->i_link")
Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/jffs2/fs.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
index 84f39a0f2a..1a125f9185 100644
--- a/fs/jffs2/fs.c
+++ b/fs/jffs2/fs.c
@@ -181,7 +181,9 @@ struct inode *jffs2_iget(struct super_block *sb, unsigned long ino)
 
 	case S_IFLNK:
 		inode->i_op = &simple_symlink_inode_operations;
+		/* the VFS frees i_link when destroying the inode */
 		inode->i_link = f->target;
+		f->target = NULL;
 		break;
 
 	case S_IFDIR:
-- 
2.47.3



