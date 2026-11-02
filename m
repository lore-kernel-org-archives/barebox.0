Delivery-date: Mon, 02 Nov 2026 10:09:56 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xNo3A-006JeW-15
	for lore@lore.pengutronix.de;
	Mon, 02 Nov 2026 10:09:56 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2ACEB200563
	for <lore@pengutronix.de>; Mon, 02 Nov 2026 10:09:56 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=M8kzW2Qs;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=PkvTWBhz;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793610596;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=0ucRyJKXtxE6hUTxvqPQgd2GGL+hWZgZck96zWUAd7s=;
	b=NIYXQbsYBDPY1CIhIfKLRmJTlEgkB1OSfHdhX6SWKznC/BeuiyfXY4Zu8QEbq1Jhd2dOG9
	kPgbn4JRjJItpb85E0b52ByiGHMWk2m40sV2bChuNtbppGwAj5gxgMROlovz1wpk5DrbA5
	7iqNjGJav1Xn93s0dW2ash72TYbOeeUSFu0+1ZK1hMq1fhQEzW8k1vjLCvlAnG9+xMs9b7
	Et0suEAPsGPWrHo5b696I4Eqfpoov1VkdjEFxHskuXZ3yDhX0YVYqIU3beWM6p+7HrBJ+s
	38acaQm7LcyLJbcyjxe6sbqp/UIIUeqM9o7VwVmP2Gqsk5W9pIskLEcWpf041g==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=M8kzW2Qs;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=PkvTWBhz;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793610596; a=rsa-sha256;
	cv=fail;
	b=EYejJ7GvCSGVj8K7gPDB8k2KDlzXetY7w9eLRQvDC3oZkWiHbBtGcqbNy0o+XRzu1qpZrt
	SiuHQijkkhMwp/bgxRfc/yUylPyFkTBR3eU9Hp5Az4ylrET42WE8nu4xJjQYGOa0EoOaMM
	nVdt5iMSjQr2jsHIAmTAE+waB13pL5enIUjKWKts83xEtHwfqd0ZolKsqZybMMDnJRDh7E
	NiZsekb3MjXXATHTFxjHyLcNrYVm2hBvi1rOvpsN/wsZ7OeltNPHZ5P3omYnezYUismp+j
	K0p3Map+UTaUqmT4Z6U3ZbJU4WPKQJCKfG3l64gyWiXsaZMto1MrMXNxGgOyTA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=0ucRyJKXtxE6hUTxvqPQgd2GGL+hWZgZck96zWUAd7s=; b=M8kzW2QsXxMv6a
	qLD1GWiDrSyehSJ2jthBnELzfZ6we7T/tj3bPubZWUvJtsqsFcMuVPuUdALpEQ8ydXUQx9uhS035A
	hzDhRvrmYh6Gx3gDs/TVFASMqzYTZjtJrudKBiSg1Udu5N67CLcJTGQOB3dQnxMDBLO9/RIuTyo4b
	j9ultOtnu87TzwzrD4Y2pGv96n3WnGEJASavLKsxbX/B+wEVeGtTeTJnb0xjk74Esi2cv9D1FR2FU
	14WBCNpjKThJ1Q6buGG+7zwMGoXS2cMwRO7Ieat03U2xTb5Evpms/N9DGQ3g+IuJLRIV0neggxf5e
	JcRQa1CyIfAq8SpZdQ8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNo25-0000000FwgB-0ACD;
	Mon, 02 Nov 2026 09:08:49 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNo21-0000000FwcU-0eZs
	for barebox@lists.infradead.org;
	Mon, 02 Nov 2026 09:08:47 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 94ED7200BA3;
	Mon, 02 Nov 2026 10:08:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793610520;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0ucRyJKXtxE6hUTxvqPQgd2GGL+hWZgZck96zWUAd7s=;
	b=PkvTWBhzE38w2JXhgnD+fPUHOWyrlVeim43Y5IASGzbfFwxBo5h8XMplErF8Wg98JyOviS
	wOOtMeBiu+Ao9wfWWI53nU3LP+xEGeWA3TMlZJaPLCqcQH+/lLt4dGCdxpVZMVSJPmHGD5
	NGPt1GBm1fsCXk+uh7CmyKJYL3UcGZt9WSsZMhlwImB7Bw6YoWNxrbJ1Y3AuX0dditiBWf
	DdMLSybY83GM9Q9uDlEieZcxLjidv8mXrgvRkn7rbW8ntxryU6FC9ev5PsxCANSfvfmaek
	vQb1JIKRdaKvfYCoAXQWZZvpnJ0qfFeFcznXiJLIyKRv9KtfPpxYQ7EiFBnbnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793610520;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0ucRyJKXtxE6hUTxvqPQgd2GGL+hWZgZck96zWUAd7s=;
	b=PKw+6AXBDP8BpD8gblu2ZKfMdg4LGT5R73ynfSMtWOCng+f89YYV0kAe+qbBnpubGUqjQ2
	wqpBrGTahOq1PAzFEGuRpDUlGEUumHRw6RDesHBuvuternKdqrwHN5Dw5Vo8/PeyU+196/
	BpQoEfBab9z1sD4Hsdy3PieczMbE713SkhlLDrAPCvZHiE9qRqKLWOhy1YJZyKoy3YfTyV
	hVZzly+miJP2lPeItvT9Da44g+akMFAN1a1eWDTwP9VS+E3RnArtr+DE5gdACt39Bvtzfz
	k/0lZazn05Sa1Hu2MhGRCk7kg4xcg8aDW2EiMhX0CnZMscF862txilkASvodYw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793610520; a=rsa-sha256;
	cv=none;
	b=cvD0uZ2IqwbHVP+l4zh+iiN9nsvDlsPBO0On0eMEs3WN2T2sECDFd2QpfZL4pJo+hgIJqb
	tWNKPp57pExJ4s/zZU80ByQ8QJF7bbL6Bddj7+XpcmrxMkFbdPen4a/yijAeHrTZPqgxx5
	NpNIfjNcYZTFCgt+kqII+c9yzJgeUCPDpoDvw8yEUGa+zSoYvJVToqUD+t8eC05BA/JhO0
	YfmoQbwMOoRhVL4LXOXqYGwbb6W0v906tXlJkhrubw6XHjVNTrbkResg/X5luYA1XTEJ55
	fwMp6DaBNFpyK2MW+8KPUwHwZsCOb1/+9F0YAvJ42o9KQLDxZAGx/2cPf5J/oQ==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 02 Nov 2026 10:08:39 +0100
Subject: [PATCH 1/3] fs: cramfs: return an error pointer from
 cramfs_get_link()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261102-fs-getlink-fixes-v1-1-c2816b3f5ca8@pengutronix.de>
References: <20261102-fs-getlink-fixes-v1-0-c2816b3f5ca8@pengutronix.de>
In-Reply-To: <20261102-fs-getlink-fixes-v1-0-c2816b3f5ca8@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793610520; l=1416;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=4aAwns8XOf0N/s5vA6mVDVF12sybcGxH8NSMPyOsyh0=;
 b=Yptl2HqxoEDWbwVjbuWu4QDph+f/btjtrvOdc9iVf5LCqVemikRreSKSUgFEIOPXNLh4V6BLg
 vkLPiJN+avLA7i+djyrnWdcFVAgWOAe5UNY98AUKfUik3niqjFL/k4x
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_010845_534659_79F4554B 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  cramfs_get_link() checks the result of cramfs_read_file()
   for a negative value, which it never returns: when a block fails to decompress,
    it stops and returns how much it has copied so far. A link tha [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
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
X-Stat-Signature: deje7i9adfkaro6ofkkkp7f85e9hfab5
X-Rspamd-Queue-Id: 2ACEB200563

cramfs_get_link() checks the result of cramfs_read_file() for a negative
value, which it never returns: when a block fails to decompress, it
stops and returns how much it has copied so far. A link that can't be
read is therefore returned as if it could, with its unread part zeroed,
and stays cached in inode->i_link.

Treat a short read as -EIO, drop the buffer and return an error pointer.
Not NULL, which the check would have returned: readlinkat() checks the
link only with IS_ERR() before copying from it, and path lookup takes
NULL to mean that the link has already been followed.

Fixes: 0a5e0f40f9 ("fs: cramfs: Switch to dentry cache implementation")
Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/cramfs/cramfs.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index d66cce8df8..f1048d3280 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -432,8 +432,11 @@ static const char *cramfs_get_link(struct dentry *dentry, struct inode *inode)
 	inode->i_link = xzalloc(size_add(inode->i_size, 1));
 
 	ret = cramfs_read_file(inode, 0, inode->i_link, inode->i_size);
-	if (ret < 0)
-		return NULL;
+	if (ret != inode->i_size) {
+		free(inode->i_link);
+		inode->i_link = NULL;
+		return ERR_PTR(-EIO);
+	}
 
 	return inode->i_link;
 }

-- 
2.47.3



