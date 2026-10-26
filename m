Delivery-date: Mon, 26 Oct 2026 13:13:16 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLJZk-003VEw-0U
	for lore@lore.pengutronix.de;
	Mon, 26 Oct 2026 13:13:16 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5AF262022EC
	for <lore@pengutronix.de>; Mon, 26 Oct 2026 13:13:16 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=J36RWWAK;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=QLUHXnC3;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793016796; a=rsa-sha256;
	cv=pass;
	b=O5B4vkgDYrJ/waMYupOv73hi22un1cR09A+5z6uruT67u7ra7Jc2pWq9st6k3YmuYSPqwd
	6++J2IUMf+ZVv+lo2l5QteufSGgumxyor2SVlSZYJAzYXHa76DC9LQ/i734uVFtZcMX2X/
	z45Cr4FZ+wkGoOJXQsfOSL0xFyKQI8QfWwXX15TdstEUvFmYSN4jWuRvcZw0d+P56ydxrU
	F+bz1RYZT5v2O6po8kJPnwYGMjJ8PCJ1DhidVWmNJOn/WUlcFDOtLmLkyK3KDf1Sb7coJG
	cTM+08kiIAchkuomReTNKud2LsvnKu97EiicBefdbuQOtvo3vToqqLFoqF5srg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=J36RWWAK;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=QLUHXnC3;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016796;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Lu/jSH+AkGcps5S6QUwF8Kq/dqUIs7k49tssseTdQlI=;
	b=GzHNK2sAgjam/U+FqL+BKUOro5d1Rxz2D1t/DUXv9ai52Cl9AFZA7kW9/7g552rycSchmS
	zY55nfDVdL8VGElsvQGBI4E9o0UcPDN4jNx4RawM05zl93opo9isA6l0SHQeGLJ0iq38QJ
	q+OF0w0fqeZRT0yjy07RFyX4Ls1uFmdsuraibt/SafaiK10NZ6uyAzMXaLd615pU954z3o
	6sgeHf2Dowq54oiqs614u9TGO0RZNMIYw7F41iVbvvDOMtBPZ/bBfrDTiduBgXue+DsKCk
	vHCw1b/vizxH54/QFLUBh1631wVck/5bplAwOx4KzTuykg69fKXz3imCGNU+2Q==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=Lu/jSH+AkGcps5S6QUwF8Kq/dqUIs7k49tssseTdQlI=; b=J36RWWAKUu1Jvm
	BCpTf9QSHLOgQpCt7IClX8C/gi67kEBwuVsP9R+iolcLpT5/txMXZV2z5I9chTcylaiOWMjItERYY
	UiuKHhZ4wcbG43t6EveWkcw07dOXjUH/tUChSg0CRbPDlIb7QPym2yszFCndNSD9QsjqhwgRmJDUh
	y1jsaJBeR6apNPk+wiVnudru8hAD1HgrCz3xRrhJWcVmS2POIG8B0MJ1SfCBp8rcc/ZnG93/WGjis
	mg3iTrKCXxPSyrTT6dAAByeGW992hEmmBXKkuT3dvjWHk82+XN3uH9qiBh2n/ffYj6PyJiv/1Dl+C
	j4t3dOOQFJvy5M2dYBVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYZ-00000002TCi-1TxX;
	Mon, 26 Oct 2026 12:12:03 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYV-00000002T9y-2Azc
	for barebox@lists.infradead.org;
	Mon, 26 Oct 2026 12:12:01 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9C548202342;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Lu/jSH+AkGcps5S6QUwF8Kq/dqUIs7k49tssseTdQlI=;
	b=QLUHXnC3DXu6B1FsIN20vsXsru4uYPmxrERxMz71lr7AzXBEDXtGLWpayib5IeCPYey4oV
	66wmKj2sDrivTRaLv7LJaWr+k2xR+0si6BHUaQNrts2V0C9Ub1LWPBmb4KQrGx45PmdfrD
	GIfv7cW0QLkpB4K0y2OE/xbHvaMva17pouC2M9Cg3/eMeStt6tWnvvdgHBeAaQE9E0tAOi
	VinwebPIJ6VUpPyd7GI+vzre1rlhjU1MWSXe+tASTpVA1+ZWoVcpAIuTv2pK/JFLbM0vff
	/26t7trVpozM91M6nZspvRDOHNCpEYrfMkuMh8ySMSvd7v9zz1Xy16bEKkxZug==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793016716; a=rsa-sha256;
	cv=none;
	b=Fnpnuv992bKW7k8y86skGsRiBXsG/ZpLRzbquG9FibfhKAqE5RgkBETcy/XvP+6XaDT188
	AekuWCwDU18Og0ZsVipSJBcjf3OR8ofwdxFA1yVSl+Eq+6CZHKAbf611OI7AkEUzYKkE9J
	1BCg3EFNaMtI9ydLyG+rDKH1rYX2lF5xI9cjQqlnFGVoWGw/nWqw8BzB+MQM0sqF9cfxL8
	zXwoA2j4xosocgEOoV1wUXF5Ss8eD35DqS63AQIeRD4ei/kIqB8mpcHYgArhCBnXcCPq6k
	5KpVjRpirNKWSKLw+eZ1q7lyobpBUzcb1x+E38M+HdNMl1xuBNFSogCM6O1ONg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Lu/jSH+AkGcps5S6QUwF8Kq/dqUIs7k49tssseTdQlI=;
	b=fPYYFXtGc4tPrtekPjG3G/JSJ801j4Px4qqWqNAnjUMGMfh/w/sviGYqkg5qihL98Pi+vb
	CqtvcNirbrKhwwXBZ4DcS5JMRAo89t2lxBn0IfExMmwiYqrm7zfLYlR0mDRrCGD5H4ebZ0
	noAPoeSjKxToeDh/OdeCadUafaUipy0/6DYJCeLRvpVhQD10j56j9NqWMlM7pfTsOxsNHx
	Qvg6bc9gMMWcytQVinCaQPu4wHhj5NNjSmYILk47o8aRVPnFeoGjjOhlsWjUFnPXNe3gj6
	aArudYY05PvFPAEhyT8aJDQxD1hTXs2MHm36CiDk8fNgOZa+YtI/V0AFP0lTgg==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 7ED23740A5B;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>
Subject: [PATCH v3 03/12] common: bootargs: don't leave linux_bootargs dangling after free
Date: Mon, 26 Oct 2026 13:09:54 +0100
Message-ID: <20261026121150.455510-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261026121150.455510-1-a.fatoum@pengutronix.de>
References: <20261026121150.455510-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_051159_736182_89BFC170 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  linux_bootargs_get() frees the cached command line before
   recomputing it, but the early return taken when there are no bootargs leaves
    the static pointer referencing the freed allocation, so the next [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 5AF262022EC
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 3e68dswnjgbqyam7kuwiyycjo365fhhu

linux_bootargs_get() frees the cached command line before recomputing it,
but the early return taken when there are no bootargs leaves the static
pointer referencing the freed allocation, so the next call frees it a
second time.

Clear the pointer right after freeing it.

Fixes: ee4cab9e5874 ("booting: more flexible Linux bootargs generation")
Assisted-by: Claude:opus-5
Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootargs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/bootargs.c b/common/bootargs.c
index 36528b8b5827..6373d9ccb1f7 100644
--- a/common/bootargs.c
+++ b/common/bootargs.c
@@ -32,6 +32,7 @@ const char *linux_bootargs_get(void)
 		return linux_bootargs;
 
 	free(linux_bootargs);
+	linux_bootargs = NULL;
 
 	bootargs = globalvar_get_match("linux.bootargs.", " ");
 	if (!strlen(bootargs)) {
-- 
2.47.3



