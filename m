Delivery-date: Wed, 18 Nov 2026 15:53:50 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xTh2k-000nh8-0D
	for lore@lore.pengutronix.de;
	Wed, 18 Nov 2026 15:53:50 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 30A52205AC0
	for <lore@pengutronix.de>; Wed, 18 Nov 2026 15:53:46 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=A31VBsrv;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=QKGbMx0W;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013626;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=MyJxr+V0a4/+HuAZKPe1H3u+ybLe6JE9XlqiCdx5LFk=;
	b=J36PUmv2Lh+hKOdq2SeecbdqozAVBUiAUmtCyfdxLBmV4ulPKGD4uch6AUp5jus0hIxNUL
	V1Tqh85XnW4w34866c8kRdU+K49GSKmmTP/o+CMQon4LN0ElpkamlWmosae1nqYeM54dHX
	xEmJen066P1ocm6g/KCfs7hHzkrWyU3R5ogMQjRZ+VPd0bS1WSesnbNRBxZa0d2ggZhfo5
	crctXB+Kohkcu0hgen/3lopbUwuq7SUlo6Uq/LdDxc7Wt0qNsMavDm97YFTzSuN7p/iJWB
	4ZMlZzI5kZDa36UbQVH3thPPJ/6sVMXzy/GK1CvL0H0I2bT1XtPdFyUJ9A6YmQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795013626; a=rsa-sha256;
	cv=fail;
	b=Kyp3oysG+h9ZWrUNLpHsimBODbOF+WIfQnf/jCZ1CTVkoFdvpuZcsP9enD8jeCnWFoDbBa
	N1j1ZSjdabeyHvRHRCXy9sxQiiNCm8mEy9+KTxoUPnfmA7cv55JIc1j1w133yVmp4P5DZ4
	iCx4su7RoK6/lqPGkoyDZhuWpiGLMgIj5U5RmdGrWPKNm3JQGHO4eCUXryQhutULxJ3V6r
	hnohrFul0rxPUlmL9G5WXYpqsnqramKdAccDxevFV+AefufyZ/4jYbTdXnqh4tVPRINryb
	Y18mMTUP9GWTCH/m2WdV+SjHQ1/kqBZE3jyrtGwnyBHaFWfH2Uk1AtB+HLbWbQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=A31VBsrv;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=QKGbMx0W;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=MyJxr+V0a4/+HuAZKPe1H3u+ybLe6JE9XlqiCdx5LFk=; b=A31VBsrv6o/NFW
	JK118gAb5+dTQg64Y39QQBc6xbdT/V+zKVf0E1+nx8i2BHz/Thj+u7N3FwWSYwGJ6Fmd+4InMTm07
	NSxuJ2dogfqNyWLD5fe7wbCIM3hRBYtTuPnX7P9IlTIA9uhWpwsZLD0/a9ZJdXhqV1o9Y3JKZkaME
	8qKxF5w8Q9+1QSk4uKRMWS2yMavuLLeX2NegeWBqwGi0tilPKjrla20JCssM+uSkoNIbIv7MsFn8R
	RxTujIkLlMhn8O++mVkCRKsa0iU1+xRyrr+ouoW0ztYYrGTRR9t0i9PlkYJLGTxLELCQQYWhkSeh9
	W5bcJEJRo7FOGOxgTIkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh1k-00000009AAq-0VeP;
	Wed, 18 Nov 2026 14:52:48 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh1e-00000009A6D-3Zzm
	for barebox@lists.infradead.org;
	Wed, 18 Nov 2026 14:52:46 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1F19A205AFE;
	Wed, 18 Nov 2026 15:52:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013557;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MyJxr+V0a4/+HuAZKPe1H3u+ybLe6JE9XlqiCdx5LFk=;
	b=QKGbMx0WEgclTALpqQPjFCw0te1X0GNokX2XuuBGWBIlE/WjxV0lylfS0pNpSBV9JZE8yt
	u+GVOtFYx5K9e4JgZ3epIHw5PjMl86PH8Jd6ceEc8SKvd1j+U3lhFYfgD7idfX3NTU7+Lf
	fXHkuQrZLR7VmSnN9CNgln+m57KRGnM367DjZdM25CI1LH2va6FyINCXHQ0BuJDIGdrYKS
	ANYxYThaMLVrqKQdqzmvhUy3FVbK60gCIsfSc1kak1rEsebJqJm+dfDUFTdse0jco7wLvc
	jRE32NCbdSNlc2sC90I0xuQphucGulYMct3O8OV5o2D9ldc0PONx/CKoX2ZusQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013557;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MyJxr+V0a4/+HuAZKPe1H3u+ybLe6JE9XlqiCdx5LFk=;
	b=F1MXY+rvwA0uKv2nzGoAd6uRFp46jR+IHhsaNADk/9t4LH7XEKTV8wmOIDgRCQ+LFK2HfC
	0Ng74iMdx9F/iZq/soEAagotUnpuwhmp4OMXWZwcIq+JRaax/CAiP4hRnIft+ffbO61LWn
	d4k6OLSRfTrmEJYQsQRIVqjhA9G1zZES+nmVNyjlfo/z0MeOFS9g9c4ynEMGFNKJzgCEGA
	LrAcB5DiKYk4XQxVe5hnByQ4OWRiCGtoy+cGcPKvxgI4iw9hjWXw70KnqBlVTMDQqIFtqo
	r/B1chAKstED+8JOe+yvNvWX2rpRGZ6ITog7KmjUI32n5OYyjGHW5U8X/OCqTA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795013557; a=rsa-sha256;
	cv=none;
	b=GTteZFP5raq+30bU+PCcDojtJzGjPr7IxftoBf5Y/RILuwaaSUxvXal7v2zNFsmETBgGwo
	P8p2jiEwRdqlo/nQELKaq3iFQt+IsS7o/xSHeaPKwPr7JVdXw5TjfCgYGGRwTCe6C4YNvP
	DjMbOdu/q/CrJ5HOnJADJQZULNdVySyCOHrRykMh4CJDkjvtpyK5tWzE/a7ZXwiH0Tw4Qw
	c7sWouMO0uo4OdU4pvXjbqXY36pWWDLa06XcAyKPoyyNifgJip2ptANyEi0nU9j1DCUBa9
	8ATG8kVwbK8fZCqPtzKMLjbMoFKjPX0I6OtNVA/ZUgK3dHVmrFMClxj+c3q8pw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Nov 2026 15:52:00 +0100
Subject: [PATCH 10/13] fs: bpkfs: make room for the NUL after the checksum
 string
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261118-fs-conformance-fixes-v1-10-59b59ec15d47@pengutronix.de>
References: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
In-Reply-To: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795013515; l=959;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=nTm8iT3WKyf/+uNQ0hyoOaKGhkI4MLKN9K31+qx7VSg=;
 b=S9bCMG6b5pk5Tn3p/T/fdAzL9xuhDl7AxFawOxIKfC8/UMdq2/UidCRfew8ZTiMrI4BIZDtl9
 KR8EWgbWnpXB1JhvR9+v6xapoFe8HbdRQ0yjmFbgYfoWMPZopCuqF1b
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_065243_092086_4F2319FB 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The .crc file of each image holds its checksum as 8 hex digits,
    which bpkfs prints into an 8-byte array with sprintf(), so the terminating
    NUL is written behind it, into the list head following it in [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [185.203.200.13 listed in list.dnswl.org]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
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
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
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
	RCVD_IN_DNSWL_NONE(0.00)[185.203.200.13:received]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 30A52205AC0
X-Rspamd-Server: mx1
X-Stat-Signature: q5nohcjuwu1uqz88nouj1ogqthyznqt3

The .crc file of each image holds its checksum as 8 hex digits, which
bpkfs prints into an 8-byte array with sprintf(), so the terminating
NUL is written behind it, into the list head following it in struct
bpkfs_handle_data. It's overwritten right after by adding the entry to
the list, so this went unnoticed.

Make the array 9 bytes. The file still is the 8 digits without the NUL.

Fixes: 2f677b9b1ed5 ("fs: add BPKFS support")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/bpkfs.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/bpkfs.h b/include/bpkfs.h
index 252cee90a6..9a12f5a1ba 100644
--- a/include/bpkfs.h
+++ b/include/bpkfs.h
@@ -50,7 +50,8 @@ struct bpkfs_handle_data {
 	size_t pos; /* pos in the data */
 	uint32_t crc;
 
-	char data[8];
+	/* the checksum of the data as 8 hex digits for .crc files */
+	char data[9];
 
 	struct list_head list;
 };

-- 
2.47.3



