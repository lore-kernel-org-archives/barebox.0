Delivery-date: Mon, 02 Nov 2026 15:53:47 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xNtPv-006PtQ-0F
	for lore@lore.pengutronix.de;
	Mon, 02 Nov 2026 15:53:47 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 30B06201B73
	for <lore@pengutronix.de>; Mon, 02 Nov 2026 15:53:43 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zyz64q9n;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=eGABVqlv;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793631223;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=RgJtu1eKhjY1nPGRSnWy81VDfH1f6Lhist1gKXMAoa8=;
	b=PW+7Dp0rMcn1ZUdYnPVb85UNXTq+yjL8pmNWBUArnpG6Rc+1jNHHpZWNvvXBYnul5tOlNX
	4fOvv6as4XOT+eeZd+SP1GByi+QT6WiDKrr3aTt4/7gqdZXnPQcuIy4od1Qywuvj2WkBmK
	nRl4CDyThpEX6E/5LP5lTsK/tRS7OFdk4OR8+HsNCn72K90V/zpMNDXjL6+0RHbGo2C9mm
	2tAGiNXcvWmPkrWhRvJw/z7SCX4+4kuUaemi/ez8PPkQl5AMJeFpQ47XUhy/qj0FjLn/Mx
	mGS/kwcAUyFwa4395+/53Snn168wQMCF/RPpaw4EkLY5NDpvLtLv0m6uJSPU/w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zyz64q9n;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=eGABVqlv;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793631223; a=rsa-sha256;
	cv=fail;
	b=V7daOcDqMXvxWnkEmZsizLj4lhcNTtnHSkKF9lWyZWgwLTxe6uzSMiPgAi0Q8VnAKzanyY
	FSwTQsU+dcEe29fCgpkGRMy0yjRcCKnSDU+sEy77YEQp/eo3iTd5D+Uh8Wj5wiZsTKp3kd
	88KKV6PlZMyRUicRczmjHW8OeYvEdK0sY8UUq3fwU/+kKf1To7SOvLMONypzhdgnKj9tzl
	IeKuIOszydwlswEq+AdIKwk0qHrUpMtNwDKOCTRiDzpefspz2m+RpWY4n6YzFfnlGOLesu
	3+J+OA77QHYF0/340ZTf4Wi2ZHcOgiWRP0PZVgPnMVWPGmbUJHKcZZT+OVaUUg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=RgJtu1eKhjY1nPGRSnWy81VDfH1f6Lhist1gKXMAoa8=; b=zyz64q9nLaD+L3jB/DE6K8nIue
	iNYKvNeUgBCh9o04xGu7bLLWrOyym8gXCT0t4HZPtBiKwgxK8kHk2++x1mOd8JX4U+W2y3Y9hu2Ww
	B7oAp8sWU+94DUQztoAhB1/+GGd/dK01OTrp2eZCdKXJPlDhGlmAIF1hmTSddLDRbh1sPLHQ49xKw
	fIbCR+jAMJqJwsR8aVDN7S2zIQSbgOzEQZJdXh3O9XB2uw1nepGpDEdRwTGrUIK9baKBvFYH7Bms0
	YeSdkobVk/sFrVB68fdi+6F5o7ciK2++0OdiiBsU0iJgNgR4Cx/PdGOny/a7DlSzVz0+I/aO4QERv
	l6lc+Pxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNtOd-0000000Guk2-3dOo;
	Mon, 02 Nov 2026 14:52:27 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNtOb-0000000Guj5-26Xt
	for barebox@lists.infradead.org;
	Mon, 02 Nov 2026 14:52:26 +0000
Received: from dharma.fritz.box (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5DF702009CF;
	Mon, 02 Nov 2026 15:52:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793631139;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=RgJtu1eKhjY1nPGRSnWy81VDfH1f6Lhist1gKXMAoa8=;
	b=eGABVqlvXpejH45Uf5SecEBIf+30C82AfEW6Cf3DsKnJXn6LqxiLfVUfuHnVJd0YURQSbv
	unH+eqJv4ocbtgrGL+OL81ZbBDI5A9YuYj5uVipF/RvWchjqviTDskENGgiSt/mpMCINBx
	gOevJeIpi3gAxviyVhIwiFf01EV3m+QimZXgYe5A+ZvuhErAOkViZma2VYoYrUhS6V76/m
	wHzD9tdF92nXB4+fTSImGsXMMGx6G77UBMqfuzJ3KAfk58nWhubiadm0FwBQ3e74Ddt78r
	GEWfUSUMievcbcLa5S5ruvErZs/UscKJOyi6UpHnGF9JK3gk6rvsHhwgamUFUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793631139;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=RgJtu1eKhjY1nPGRSnWy81VDfH1f6Lhist1gKXMAoa8=;
	b=ftc6xbAJW+a0NopQKBXqiHVEIWei682LfTJkPMWb2dadKgxVF2aSYRQ3rOL9Ze3Wzzz/Z7
	/pU5gOpJGddmoBLLcTu5hDJDKzqwrcUm3iaWJRstp9dBmQw37U6atAzD7O3zJ/9NCxKUHz
	qL+QqrI9CIOGw0Zi/6APTBAKM+mbDpwhW4MvU93nHAPvEnq4kxVIY/lJo/wvnopXDTGheN
	dWcFqErH5HSrRYoF5AJCKKFJn2+CNOcnuJ6gNSOUpx2R3Xs+GjKZM5qAMSeBFrPNT+Kuow
	si5tR2Yy8aXFALaSyGv3/iN2Vbnd+W2q0TsfVnbBsKUhVhhLwWpcv7PuT+VBkg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793631139; a=rsa-sha256;
	cv=none;
	b=gLrl138PXt+49nZT2ZAkQiJOwHNVWMaE6a/TLODpq11CqIuSNlWK3nTmOhadrk/QPBuo2T
	Oob/FuQEzjLYCkmRqz+noHZ5ErR0kP++joZpCbIwVjHX1fgIKBFZ4CjuFMx5Jjb591U/uq
	KqYXv5hpvvqm+XKWt81vnLopLkrXDEM2H0ex+pNmQXgWZa4SUFYMc12rqSjlsT7bIyt0sq
	WBbm8C/K6i17Ua3us+xTe5qqdUnQb/eB8Ppg7k2JnhZxcfQj46RU8yG733f7TuhA9QPAom
	p7e0/s5KqPUkvaNeVeeenvTAx6hln6J4CPEdk9ux/3l17NFTKO/D++xRVMLQUA==
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Subject: [PATCH 1/2] fs: ubifs: don't free the symlink target twice
Date: Mon,  2 Nov 2026 15:52:11 +0100
Message-ID: <20261102145212.3022411-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_065225_710571_54D81783 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ubifs_iget() makes ui->data the inode's i_link for symlinks.
    Since commit 66666e887c ("fs: free inode->i_link") the VFS frees i_link when
    destroying an inode, and ubifs_destroy_inode() then frees ui-> [...] 
 
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
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: ch7hbkfxoccjfcumn5ob4r6r1zjpqhww
X-Rspamd-Queue-Id: 30B06201B73

ubifs_iget() makes ui->data the inode's i_link for symlinks. Since
commit 66666e887c ("fs: free inode->i_link") the VFS frees i_link when
destroying an inode, and ubifs_destroy_inode() then frees ui->data
again. Unmounting a UBIFS that had a symlink looked up thus ends in a
double free:

  !block_is_free(block) && "block already marked as free"common/tlsf.c 1069
  ...
  (ubifs_destroy_inode+0x18/0x2c) from (destroy_inode+0x38/0x4c)

Hand the target over to the VFS by clearing ui->data once it is the
inode's i_link.

Fixes: 66666e887c ("fs: free inode->i_link")
Assisted-by: Claude:claude-opus-5-5
---
 fs/ubifs/super.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
index 8eb8e574a8..30f2c03e69 100644
--- a/fs/ubifs/super.c
+++ b/fs/ubifs/super.c
@@ -211,7 +211,9 @@ struct inode *ubifs_iget(struct super_block *sb, unsigned long inum)
 		}
 		memcpy(ui->data, ino->data, ui->data_len);
 		((char *)ui->data)[ui->data_len] = '\0';
+		/* the VFS frees i_link when destroying the inode */
 		inode->i_link = ui->data;
+		ui->data = NULL;
 		break;
 	case S_IFBLK:
 	case S_IFCHR:
-- 
2.47.3



