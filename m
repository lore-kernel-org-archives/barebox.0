Delivery-date: Wed, 18 Nov 2026 15:53:38 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xTh2Y-000ng7-07
	for lore@lore.pengutronix.de;
	Wed, 18 Nov 2026 15:53:38 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B615D205AD4
	for <lore@pengutronix.de>; Wed, 18 Nov 2026 15:53:33 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=edBh0Zfg;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=NhVSYRem;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013614;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=R4Tqiu08qeUX9HCrbhfeSSz8METP9gWEKo6JadLQTKY=;
	b=cRf2ohY9zvYJqzhXRWIEESUAt2XQunz4MDCOPje6fuG5Ln5Xtx1H+AA1J7ikmQ05XhgLgl
	8sIWou60L9b+BB1F+Z9L9BplCYI5537pnioPRaiY+/cuIeHlnrbLkuixjcCkq5rLhLTN9L
	mYB0eV2WmcSnqf90s3TtbZh2i4AUTX+XhiiKmAW8EHy4FtXVsWaqJh5IVeYagr2Onk+AOu
	x06fXlCl7TqfdLc15CWINJ2eqWuI2DwugUkvZQhMg2tEGOWkYQI9+fYR3OV841URIqj7Wh
	36NfEvtlz9eoKECZ1T0Sg0+DJ5OWtZiBy2ODbh8yhjYWjJm6vrkZAOTRFloDpQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795013614; a=rsa-sha256;
	cv=fail;
	b=TfasRQz83OJh6lxDuw6gO+XOVMTn2lwnTsMM0pCFhHkibRHIU965GmdAW0NYsTsX5Xl1mO
	KwYON6J819lSwXq38VdebZlSNF5k9UlEf8/YBa4D0JEMuoQlBdHCEINe9PXCLuoaqOZKOK
	7Jv1pJ1l8kN9Q3CIVibUNjISVgIcDe16khOB+Z9iCX+R5pztyhT2QEsNPahfIyhNx+Kiyv
	985Blo1i/084NN9jU1QkN1UmfjBPDu62njnRImnigKotBUfUrAzoL55s6koFUx3m2B7tb/
	JZg/TbyHHUEOggG2+SeelEuwuQQXhXSej1MJiov8Ncjpb3wqDpCEjx698shyXA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=edBh0Zfg;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=NhVSYRem;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=R4Tqiu08qeUX9HCrbhfeSSz8METP9gWEKo6JadLQTKY=; b=edBh0Zfgd3pzf9
	23BSE4oGHxgSdWQnqWuH6nz/nedmVWwHhf/p6AATtuDeijLo9/zAOIZ4DUSZUBTUO4UGjkSXd/OSj
	EP3AOfbg+CYATWsRd7fDCKZ8ITL6ANlBzje+iqzgcm8LQ8uioIxp6j98++hlhX9BgoPIIVVVMA/4S
	nM7iTpV+PtqVVMeeTuDRYMQKoMZJsLP4G2vO/S88jbRftlVuC0wi0uQ3Z/rfvt27J3SzEvKs6cOEM
	RpkNnWba5tjpMyR2ijy/t2/HSf/rT453wSKjJLqnDSspR4Pn7fK5H8R/vhsoJe+eU63+MNlbg2cPU
	X2w+PIYjZvwiO2aQ9zzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh1G-000000099oC-4B0w;
	Wed, 18 Nov 2026 14:52:19 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh1B-000000099l3-2GoP
	for barebox@lists.infradead.org;
	Wed, 18 Nov 2026 14:52:15 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id BEEB7205AF0;
	Wed, 18 Nov 2026 15:52:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013527;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=R4Tqiu08qeUX9HCrbhfeSSz8METP9gWEKo6JadLQTKY=;
	b=NhVSYRemupBx248V8cUVyCObAu69utmjo3U+CzwsMdyGQayIYuqxbQyaDga4VPSCSOmNBP
	ExWKU/tMZhrUwauckElZpKGgPUr9P+4wACfP1aSCpxFdwD+ButIm0ZJMwFZbPCerwBi3wS
	SCDAtplNwc8c4cJ8Mm+94ahiARYRxVe5LaWjKZACJ1gblAEu4HARSHVXCDxevlx9Q5/+Kx
	JAXMc9cOKXnPHvDdfkt8Jy79xP3CoqXUJfzLDs/GgRZxRQwChcJKEylvr8XnwrrNVqsPQX
	z4HbMjTtRmKN0q9sKBZwqjRaFDj6nSxd8DWg9LuxJpy+gFOdGKhJCQ4B7m3BFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013527;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=R4Tqiu08qeUX9HCrbhfeSSz8METP9gWEKo6JadLQTKY=;
	b=NeW8ge9ABeC+z9F7wnV+UPjZb23ABSKtnJb6KrUzSQiNmO1/tCJFIhQXBhirnbNojeCB4I
	k2pDyH1ASIUwem09c1tZ+NVbR76s272nad88z3tdP8Gt/K1y+77W3wVeFX1YgLo1/s0O0j
	STZtCsaBfX2ulpQP6LzHRZ34TdABpEv+jRZ7sPTCAa59m4H0hjP1LAcQwMuEgZ7obyx6vI
	AdEeKNsbtniQs1JRf2FlDJMD2MdJb1dR9OVXlwnH6uXXwZ/eVbcqso488DR7U6qFt7qL7Z
	6ukn4pxQSAjUZ1y8pdrv9UIwUQGJsG9/ViDR7UCGs/tKWF8P+ot/UEOneD1ONg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795013527; a=rsa-sha256;
	cv=none;
	b=F+1/HCoTBYZ/gLrIsSOJd5rAx/Meb28hswFTuZ96OKiKp8A0Ks24cyWOfxJKA+/nAyhXxA
	Xxi/FYCYkofyvS8QBhy6JyP9u762cCDXuyoNc2PHAwX7loTSEqEPT3mHew0GQuMuWfkHld
	yPKUJQu+RajQPGhkIRZisawOcpS04jKneVwvxgHUOO1A9EKLbNET/EtD3RRuH4juY9tLn8
	ST2kgwHgU8rBgYYCmgOH4pxLozjOBsdri+dGDkvu7CxdF5UJFwY8pnRytbHYKmFg1n5UKb
	xA3Zcetss+d7Bmnp7O8cMyccQgADF4qcGZzFwdI6f5gIktG6Ui+UnIMV5WRNIw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Nov 2026 15:51:53 +0100
Subject: [PATCH 03/13] fs: keep the file size when O_TRUNC fails
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261118-fs-conformance-fixes-v1-3-59b59ec15d47@pengutronix.de>
References: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
In-Reply-To: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795013515; l=1029;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=VLHiw4SIfgWoul8MZFDRhwEw3Jbormc7RhOYLatCZXE=;
 b=5yo5zZ2EOTwhp2bmwmBXibbGxBgoxmZFJNvlDOSsuPlKs9pq7AM9BqKjFhsoc345Lst1cwBMa
 hnlpMO2pUsvCMX0LE0LkIJchRo7nHQiMoHLUBfLB907jkJeU6Xp0X0E
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_065213_741421_F6216AF8 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  do_dentry_open() sets the file size to zero for O_TRUNC before
    checking whether truncating the file worked. f_size is the size of the inode,
    so when it fails, e.g. on a read-only file system, the file [...] 
 
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
X-Rspamd-Queue-Id: B615D205AD4
X-Rspamd-Server: mx1
X-Stat-Signature: x1cta4dya5ozy7znpst3qxxoeg8z7h3g

do_dentry_open() sets the file size to zero for O_TRUNC before checking
whether truncating the file worked. f_size is the size of the inode, so
when it fails, e.g. on a read-only file system, the file stays intact
on the medium, but appears empty until it's evicted from the cache:

  open("file", O_WRONLY | O_TRUNC)  -> -EROFS
  stat("file")                      -> st_size 0
  read()                            -> 0

Only set the size once truncating succeeded.

Fixes: 7d91d56436 ("fs: replace FILE.size by f_inode.i_size")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index e05d3b7a4a..88969fc287 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2736,9 +2736,9 @@ static int do_dentry_open(struct file *f)
 
 	if (f->f_flags & O_TRUNC) {
 		error = fsdev_truncate(f, 0);
-		f->f_size = 0;
 		if (error)
 			goto err_release;
+		f->f_size = 0;
 	}
 
 	if (f->f_flags & O_APPEND)

-- 
2.47.3



