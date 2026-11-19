Delivery-date: Thu, 19 Nov 2026 11:17:48 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xTzD9-0014U5-1o
	for lore@lore.pengutronix.de;
	Thu, 19 Nov 2026 11:17:48 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DF88D205AF0
	for <lore@pengutronix.de>; Thu, 19 Nov 2026 11:17:47 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ePUVGEWf;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=KXLjYs4v;
	arc=pass ("pengutronix.de:s=20260414:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795083467;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=kBrBlVfu+JN2anGktri7RKOkVvrm4qRWB2wyZ2To9gA=;
	b=C4lkwGvfRoyScdFgHNq34k9gNosgtATTITw4zIViMMztM4dY4tgipDBtBp4lqP5L3FFJeC
	m8qfDGDE/1CuV8VVb36BnwvsXF6ZgNBTWSrokuFj4mSFc+DKTSkGtSsLVx/2LScQiZiGrx
	xzZyM2Ac1yjpIerB+NHD1uurL5dS6O6ArirdRmttu7k6bhrys8TexFyz+CxAAsLN5lZECm
	JLXIOnfyrUkYCCsUVNCvircI7MQvhucKovouck0fzj4unbUJpTXImar4x5Okd71FkfE42r
	03KDJ4CieX+nBawNVKMNsnN0S6O4o+G4A1QBe2XPAR4EN9qNhWSrvLITAzhXWQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795083467; a=rsa-sha256;
	cv=pass;
	b=gvu1draWUcYRbM9m48KHW9wIyLVbVXPDWaCWMasyvwaWF3JImIG8fTVaqdEOZIZxvPRwLH
	kvAY2qhYCvolWxjAHuUVjVRgDqlaVywfBW+yixzGf+3uX9T/PkMMRvODdDgW4vuj9k4ZLU
	L50Wcm3Wpp18QC5UojVkFsw7GvVOpTVQWfBmnDJ/CRvS/2wV/T3wBx1ON6qFFI7glXT1kH
	gTRZ5dNqAne4ZERi0yKHo86t5BHcI6GTdWgsG/ak64hS7Z+eEHNuD01jtAB26mjtVt1AoB
	LmLJkul6YijPJSs+zF6KpkslwC0dBK7Hh7GBa9of/qiKh40C3Li68n23/ktdSA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ePUVGEWf;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=KXLjYs4v;
	arc=pass ("pengutronix.de:s=20260414:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=kBrBlVfu+JN2anGktri7RKOkVvrm4qRWB2wyZ2To9gA=; b=ePUVGEWfiFGiovmFxwQ4bZc70A
	n+v95XnH3NW/COZ9O0UHioBD70/UQOG/ddM6YKfFNoEj3CRuoe4wM46O2dGm/kjlRB0a2NvnppB2L
	WOLAF4dbacgoh99HJPzkafHwsJqZtxYbWnhgHz640NFIzn8zKHqDtU+PfM+CMKyPq89qgDUbYbmfO
	2puwtXHmaac5v5vNWbHuOhFVJsf/1pUXS/rRMu3k+HMyYVWJ8Ml4oiPZn8atu687bJ8NWGHmdwLBe
	J5tPh5ao7aMppUyGX2dsvIaFXsegcM2vtXbEh6TisuKLdBRw2uPHMbsheMl4moKN/0dtkBIIJqEMI
	bkB5Oxow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTxhU-0000000BDoV-3W1C;
	Thu, 19 Nov 2026 08:41:00 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTxhH-0000000BDVQ-3Fqj
	for barebox@lists.infradead.org;
	Thu, 19 Nov 2026 08:40:56 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D5700200878;
	Thu, 19 Nov 2026 09:40:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795077642;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=kBrBlVfu+JN2anGktri7RKOkVvrm4qRWB2wyZ2To9gA=;
	b=KXLjYs4vqMUj6yy5FqGpAM2qbx4NU/srn3HAER7FaIeQQ0pRk1aLtw0YRWmiIQok49JPmS
	l6Bez8iuBg/gX9nu0+u8+InlKI/5PqFADUhZ4Ik9eqTraT2ldA5Gw5AB6aVi08k4mQe223
	72rzFvDat7aBLxD3I3yfrW7y6zJXmLUl/157P0AxUTLnwBRPc3tTkoe2r1DaHvPB8Y+Iw/
	9rYL8JfIQHTzkZWBuAtB6grygEAJM2bJr6xOOqaZulHSJKTg1BjL63/43n1fHR5KoUSCET
	0y3f+n2Qf046ks7PRSpcIrtQVCKZGKU0Xu/wcoD4FY2gLKne1J97Jyo+J5WpLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795077642;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=kBrBlVfu+JN2anGktri7RKOkVvrm4qRWB2wyZ2To9gA=;
	b=XBOysisjGH2P40P/gweaF3mA+VBPuTOIRKd4QsOshI6eIBv+ffSv6exMx67YKIVIZiwqB8
	/YL6A9Nkx4xdfVaFIerPBZs1Id8qJ9Dlb2wGm+8IBkkIQ7N9gQhpOdFSj2armM2KDGLWRt
	rxeAacciCx1JNZr+0TeZCVqHoROtemSNc7Uval8e5nDhm8RvJpsPbywL0/3Ymg9OxTxdRN
	yvLGtRopAFB7TDOFU4fFJwO9n9nGfj4X4gLvNRgTIHLrqq0Xmdm1H7dO6XWbXlvo9WoezJ
	oZ9EiYb65dQGHysUYCfVBku9J5K4LGjIR4Rx12VmNs590DFxQg6bluwdAbdaIw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795077642; a=rsa-sha256;
	cv=none;
	b=CMV3o6yyYicD1ftTIMWeRoYoRGzDlKVnJjqff2iFf5Y/NKpdxBhJ/KWB2FhGsUkYYFr0ko
	Wv+HTe65NoRnS2i6bYtUs1ZPdQeakhFpSYudZFXi/Z1DBorR9ZN7vIpSIrh3qPLvDhJI56
	R/cOvyWbzPwC3IHUeyve8MN28NE5zzh2APfAUTBpsbelkqVl4qKban0nA6h1d92k4V56t5
	PWhAHdyAkQe3iz0k8XfZJNHWkhuYD9pqk3iPlkvEs8n1nzu+L0bzk34+vagHYc/mZojaCE
	aoZwzkwsV6KtJM0PsxyBcxmXyzD25Vfl+U7KOmIRaYUozLpITN8PQZimE/8/Sg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id BE058740E2A;
	Thu, 19 Nov 2026 09:40:42 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] fs: fat: fix build of the fuzz test without FS_FAT_LFN
Date: Thu, 19 Nov 2026 09:40:26 +0100
Message-ID: <20261119084042.2161333-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_004050_707979_70C24D5B 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> The lfname and lfsize
    members of FILINFO only exist with long file name support, so guarding their
    use with IS_ENABLED() isn't enough and the build fails with CONFIG_FS_FAT_LFN
    disabled. 
 
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
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
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
X-Rspamd-Queue-Id: DF88D205AF0
X-Rspamd-Server: mx1
X-Stat-Signature: ymqas31fnfeisaipqfkb9oznyktoc1mx

From: Ahmad Fatoum <a.fatoum@barebox.org>

The lfname and lfsize members of FILINFO only exist with long file name
support, so guarding their use with IS_ENABLED() isn't enough and the
build fails with CONFIG_FS_FAT_LFN disabled.

Declare the buffer and assign the members in a single #ifdef block, and
zero-initialize the FILINFO per directory entry rather than memset() it.

Fixes: f585092b1737 ("fs: fat: add fuzz test for FAT filesystem")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 fs/fat/fat.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index 7ef879ebad41..96075e4f097a 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -408,12 +408,10 @@ static int fuzz_fat(struct block_device *ramdisk)
 	FATFS fat = {};
 	struct fat_priv priv = {};
 	FF_DIR dir;
-	FILINFO finfo;
 	FIL fil;
 	BYTE buf[512];
 	UINT br;
 	int ret, i;
-	char lfname[256];
 
 	priv.cdev = &ramdisk->cdev;
 	fat.userdata = &priv;
@@ -432,12 +430,14 @@ static int fuzz_fat(struct block_device *ramdisk)
 	 * directory or a cyclic cluster chain.
 	 */
 	for (i = 0; i < 64; i++) {
-		memset(&finfo, 0, sizeof(finfo));
+		FILINFO finfo = {};
 
-		if (IS_ENABLED(CONFIG_FS_FAT_LFN)) {
-			finfo.lfname = lfname;
-			finfo.lfsize = sizeof(lfname);
-		}
+#ifdef CONFIG_FS_FAT_LFN
+		char lfname[256];
+
+		finfo.lfname = lfname;
+		finfo.lfsize = sizeof(lfname);
+#endif
 
 		ret = f_readdir(&dir, &finfo);
 		if (ret || finfo.fname[0] == '\0')
-- 
2.47.3



