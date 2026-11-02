Delivery-date: Mon, 02 Nov 2026 11:52:56 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xNpeq-006LTU-0D
	for lore@lore.pengutronix.de;
	Mon, 02 Nov 2026 11:52:56 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B802E20177D
	for <lore@pengutronix.de>; Mon, 02 Nov 2026 11:52:55 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="b0JTk/T9";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=S3My2KCY;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793616776;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=MdiakR9gr5ycTzudXsIdp6CK/EWFRY6ACtW546IVYMg=;
	b=Z1uOawB11D1wi9ybbhC5bWXeaKtT46ECFIa9p+Dh1aCJuoyPx7LrmlmuAU8jasVtEMzouw
	LT48Az8T4JauucUGzMttEQIVeWP3bdjXkdPA5uVmoHB16TJcqIHR2VKdN+F1bBBF9k4OQi
	yyX/p3i4yIz8rkbvNXvgOkJQazybF8TgCzZQ3FlUAkRTQpXD1f8wtPeCmTtyV3jHQzxLGu
	UPzeWoZbGj61a6JH42SnmXmcx1Hk3AtrQCjdM1q5/C+ALucD46b0+9/GS++yF5ysrt3KBE
	y0nhe6P7c4fJcnYc5B5pCQQPZ8tB5xzcwH01aRIqu9/w+2ksZfECmZ2AEJpcZA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="b0JTk/T9";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=S3My2KCY;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793616776; a=rsa-sha256;
	cv=fail;
	b=BDKAGJvWfQyf67hWccFApnzHhR9GXA29yci/p8kmMZ4bf7cbhVWShTBde6OFI1jWW5+J7e
	kGnerZESL3CK196h12b2BsVeJy5u779HnZ/NZ5HsBkLeHnp2PhqtKJp1XTtiSJTE4E+Kmd
	PcAfR8ejXT+azFE3o6OY7dCoaDA76oyRxg6upUQkPwzMkCarxpNUMdY7+O01tbBpIfVj3r
	Ag9qf6BQZLpd1vTQ+3py2mSw4mChAhvRWgbfJbop/W7U/jRdrM0Q1WohhANvj22JZkkFoA
	wV5EEOY5syPgymzBDSDThxptFFK1alBOcxwzcXp67KZ5Bcge8Xak2DBwCSBp4Q==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=MdiakR9gr5ycTzudXsIdp6CK/EWFRY6ACtW546IVYMg=; b=b0JTk/T9D8YyqN
	TjD80ZKvQAONaEyXCa9jKe1p5H9ZHsdXb8Xt3nhwCDZgwdcFoIekFih6IIGLPt/wx+HLhUeZC8Rnt
	RTd/Dn37sdpQyTDoUPbIjoILBiDba+BvzDpwyQcLkZA8/OWW8pUpw9BO1Blk+PD0paZq1LQgz7Tns
	V4MXsE3zq3z6gMWP4qQrJFeRUZ+2ysnOBB1S80XbgfiVk8OgqN/ruswiTX+WPqRlSsQBK9cGKyt+4
	XlcOp6bFWaC6HzigWMTXn5aFmRRtTgtRQ47929el863M0ZWedwCHOycL33iGdm0JFSCarxKxYhjbd
	+CmQq+0eJsdanTa9IGlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNoNy-0000000G1Go-1pQj;
	Mon, 02 Nov 2026 09:31:26 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNoNv-0000000G1El-2sBY
	for barebox@lists.infradead.org;
	Mon, 02 Nov 2026 09:31:25 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 67DAB20177D;
	Mon, 02 Nov 2026 10:31:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793611881;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MdiakR9gr5ycTzudXsIdp6CK/EWFRY6ACtW546IVYMg=;
	b=S3My2KCYWcmHWtWn7nVa8EoZuvUsR/7VUK6hadEuoPZL+icyxR2QYlMXfh/wMG2EShrNAM
	Js5rj7fZMp9+HyTv9Aw14onhDTrOiD8wAJL4eNfDyOdPBwq11qbL2Iu1m+fKJg31JYg2as
	rH4DKPeLBTdH/M2EbCAYJeEK2IhkjQMaYpqZUBmbl7ze5kEA+R4q5yJ27Zm0DP9xBpAC/A
	EORcznxLMCEgn0m0zGtpSkfykxU8ng4dpia9pyj4jnEfIfcIUOsRe3p+A2pkaqKR4ytkw2
	oJIatCrWmMK8HkSCVKs2yT/MQ2yOolP5IfNgJ6bcNqW409s093qNUKuLuv5DXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793611881;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MdiakR9gr5ycTzudXsIdp6CK/EWFRY6ACtW546IVYMg=;
	b=TvVot1Uy4Fcwe6YertcpWdweP2DIdw7Z7NTZotPCopHHJerv9NwH7JLfANYiVeNj6ibHQX
	UavNhg3Hq94/xbFLGMCCDAAwTzjboHn58/APx8xyimO5IZ31lfx06HFt8MX/wtJ+x4FQ/F
	v8L5GK3VfeuAbHKO1rJPH2saHzhz52AnrE7Hw02thT4qDs6exAyfQzeFRIBawiE7v3BpnE
	Kp7jZabWSJutKxVy16i/AiauLNF94qB+wGxftS7D7SyKe25dg8rpoqa7mLcGwaB/Q2oVKy
	hQ+7RSZL1LFK72PcIUvvZJhIswH/ibKAeyJkS/N9M3SY6hiS1bnGR38uHJLFTQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793611881; a=rsa-sha256;
	cv=none;
	b=RDMN+GDb2979slUB+JeOodUAZwZqFVL+ki9LT9RdJTgGbKwT9vLyTCcYSIKJJCaNAsDncb
	csBTe+RqyVoPZqd3ZeimshmvDcqABKVbWpTD78+I9snGtvuAp9fEWprlVufEjc37rMGwIC
	K6gVqH9+v95wQl4LWEuZFZ8GS0HM7wCfd/NXcDVgftf4x4JmoAlwnb2TvG3raK+dQQZV9K
	wcpYgKZhl2193mKE2QMKwTCawxSgSQ/wZD6TpWREJDayTvSFVAiy499iRo48nYbJVwsLQn
	gOskyO/tu/CyeM4MA7py//1V+Y4LZWAwvOTt8DQg0187vdAnsA6C+We2lxUFcg==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 02 Nov 2026 10:31:22 +0100
Subject: [PATCH v2 3/4] fs: ext4: return an error pointer from
 ext_get_link()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261102-fs-getlink-fixes-v2-3-37df92e4d0d3@pengutronix.de>
References: <20261102-fs-getlink-fixes-v2-0-37df92e4d0d3@pengutronix.de>
In-Reply-To: <20261102-fs-getlink-fixes-v2-0-37df92e4d0d3@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793611881; l=1244;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=I7ca15BTXbLdocLLK+/ODkWsfKCMV+pXXdPr1Pi8qVs=;
 b=Z1FgsEdHRnrLw/GepFVcA0tTAagrYJmvydrZakeI+lsKc2ZLTl6dmckbkWlmUirugjTnKU2it
 Wz5lIjlZVkNAzrh/6ABbgDZ7nrMbpl77UpcLQDce6WqgUpsjZBc1z6d
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_013123_876761_4D0B2D51 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ext_get_link() checks the result of ext4fs_read_file() for
    0, which it can't return here: the symlink is at least sizeof(inode.b.symlink)
    bytes long, so it returns the full size or a negative error co [...] 
 
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
X-Stat-Signature: u1ew71a441zo9g9ue8i4pbb4n9drbmh1
X-Rspamd-Queue-Id: B802E20177D

ext_get_link() checks the result of ext4fs_read_file() for 0, which it
can't return here: the symlink is at least sizeof(inode.b.symlink) bytes
long, so it returns the full size or a negative error code. On an error,
the link is therefore returned with whatever was read into it, and
stays cached in inode->i_link.

Check for a negative return value instead and return it as an error
pointer, the way readlinkat() and path lookup expect it.

Fixes: 76cb57b4e1 ("fs: ext4: Switch to dentry cache implementation")
Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ext4/ext_barebox.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index 8f6802e94b..4035d5cf59 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -203,9 +203,10 @@ static const char *ext_get_link(struct dentry *dentry, struct inode *inode)
 	inode->i_link = dma_xzalloc(size_add(inode->i_size, 1));
 
 	ret = ext4fs_read_file(node, 0, inode->i_size, inode->i_link);
-	if (ret == 0) {
+	if (ret < 0) {
 		free(inode->i_link);
 		inode->i_link = NULL;
+		return ERR_PTR(ret);
 	}
 
 	return inode->i_link;

-- 
2.47.3



