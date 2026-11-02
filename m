Delivery-date: Mon, 02 Nov 2026 15:54:16 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xNtQO-006Pub-1F
	for lore@lore.pengutronix.de;
	Mon, 02 Nov 2026 15:54:16 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 835A82016D6
	for <lore@pengutronix.de>; Mon, 02 Nov 2026 15:54:12 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=x3uyKEyX;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b="IzQwu/ya";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793631252;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=fNFA7ExHUQIqH5u7dyUtJbq5YrYAMCm0yzAjS1l5QsM=;
	b=LB+YLbholFf9O6ytFin0+6nJSzOMBE0S/74j00jKGx43a8GhygdbPwkz8A144ysRGPyUZg
	PH8pTA5FhdfOpQnJgONtR4ilsHpbAM6WTI2smKxmSJXf813Y4mafJYyZtp31A+PdJDvc3u
	kHVagQe4QmOysGE9RH9pzfJbnSESm1N4F1DYjmgCwhpQEAkKIc4gQOmRrcqpJXWVrTnwT4
	wnBi4lXacnCt/JbhUvf215FH5G3AeXLrR5dhiv7JAKT3q/70kWUzYpO0V9tIKfQF1OHmV+
	Sb22DD5Qmd6h1kiY/xGSWkoTKt2RV1+HbEbun7IYwQoxmg7C5HWE+HOFa/ze4w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=x3uyKEyX;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b="IzQwu/ya";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793631252; a=rsa-sha256;
	cv=fail;
	b=XwYkrmHCUaNUU/1wRzFJ6zE6Ht+M6OxfPTA8oA2YTO+FEy9+Ndsfsjm0lN6/SdW60Dq+1c
	M4GZaUGAYAFGR1ADtAMUOb+TUkg7XHT+pbyq5q+PWmCQwi8ylQUyo2j8k+FS4KmhaYxoMT
	qcK0cfozqVu+R3Cac4/OLZf1SgaljtK76twGp4gftackJJK6S9nbbIPeFPU7jlC+kwLcZn
	HqdrJuvNjhlGyp0jn6qKoD2ZMaJYYKYEHmLRALTQ+4mAVe8sJXUcrf/WesgtKdL05J00u8
	rSTt4/aTzhXlddCAR+ODCMq3xUApGRjkRvft2suWd12mDK21RlCCrjUpDSIXIg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=fNFA7ExHUQIqH5u7dyUtJbq5YrYAMCm0yzAjS1l5QsM=; b=x3uyKEyXsAMSAYEiHPoaqyEKRO
	HXcfrt78KWzODTgv0ln7dSOO/hMXMqgby7cjxTfxEwYEnNVYjNmf8aTvMdm4YMLWPxHzFAaGfXP9y
	ZbREuMKOop6IIxtdopiNuzOmBlDJY4xv3yWokSQAu84MM0Xg28ZqNQMeAioC/uwNOWSZI67f1vlZT
	0j1n5LsJs4EsruxweA2EWtX1KsqSobEjB/Y6JkGgMGpj24ClBlHEMG9LRuwoRHzko2DqkkOdsVWoD
	KhXcWSloUMAlw4hMJ+c7iJzm24a3fYHT5QTLxuFjIM9BQXCgZBCu94StUnOhhlubzT3du3W4uUGgd
	Vu3fIyBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNtPL-0000000Gv28-2xeg;
	Mon, 02 Nov 2026 14:53:11 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNtPJ-0000000Gv12-214p
	for barebox@lists.infradead.org;
	Mon, 02 Nov 2026 14:53:10 +0000
Received: from dharma.fritz.box (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C36952009CF;
	Mon, 02 Nov 2026 15:53:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793631183;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=fNFA7ExHUQIqH5u7dyUtJbq5YrYAMCm0yzAjS1l5QsM=;
	b=IzQwu/yaZ+PrnuSDumfCMNyBmhZ6Z6n/I3/hVd1aHW0lvaS8sfGgYcLX9Wr3CaV/kZC2fc
	Zzjbm8jXbWKOHtPsswYq6/2FxXkHkTebldvU8+HY7LLA4dWU3UF44cMqN0EC8/esWxXiCF
	m6zm0i2kfG8K94OVJs3FjFPtmzLitx3bSzlhze1DdTkvNiPvd5Up64TUujljDcyHOs/goU
	U3mT3IC60DACHnD582dnyeET5Y2TaI3GJe0bSKjM4aqt7A88vgx/Slt5kaMQKJh0MBTns1
	a+wnfEAzy0A7CJlfrk1FnGLwmWv9QYlqUxkdSijvbRvEWFVUYQDiKcxLv8BX4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793631183;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=fNFA7ExHUQIqH5u7dyUtJbq5YrYAMCm0yzAjS1l5QsM=;
	b=gyQLHprelJbLfMRetpmkiEuocdvh5sNUYlzFbupEFDu9EA0BpcPTEc2FRevekXIq8SDU4c
	5jbTNnBnEZemI6DAKeAd7wIEjV1KEDuOtAkgNIs8cNUPwo/iQAcmcMGJgheh2noV6fN59n
	PqysOictDJBkLGKRgGxG0l81jVcyjvIbbJj1CWcAjyNPb1agmVDfjsXKqa3pUValf29RLn
	L/JWh/uoqYBdMd4afLcBkLDrqlx4EK4zdTYzFLrRkaGZ1Vyd67IoJJOZSxA6wBz40L7ZAG
	wFVdbEDp7N2hn21w4RMM+tObSqiBVjgAAJ2tz7z5m7kEhqNHaiVq8Vm4zG1FLA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793631183; a=rsa-sha256;
	cv=none;
	b=BimaJNm59JX87URiNs91Lkc329UZsucE6i0ZSdmizaBSPFttS5jdjST1LVIltldt6xvkIr
	TXwYRWXnWeKsxqaaoWA4XYwe3OHZRHLUf8CNLthhEs0LILIGYZfwT0k2hS/WpNgjBvp/Lx
	2YDNSs80qyXHowLdyGsVI80le08osS4RIZYWBvcWq+EOHJRx9qtjcRdlKm0vRvypI6X6j/
	gk+pZK4SCA8wTc8v93zqsGDxXV+KPv6ImKAUEs6k7KCuOmXZrjvyn6yw9sXD9eFCFgIRsF
	zUrKDSfOoEPhJnNpRj4KkrT12daCNt1UdWuwZlvLY6xre3JrCBqXH3rZtIQ9JA==
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Subject: [PATCH 1/2] fs: ubifs: don't free the symlink target twice
Date: Mon,  2 Nov 2026 15:53:01 +0100
Message-ID: <20261102145302.3025815-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_065309_699102_407176DE 
X-CRM114-Status: UNSURE (   9.63  )
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
X-Stat-Signature: hjdkrqyqomfa8e68rg3ejegkd9yz54s6
X-Rspamd-Queue-Id: 835A82016D6

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
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
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



