Delivery-date: Wed, 03 Jan 2024 19:36:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66A-002O9O-3D
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:36:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL661-0007QI-QV
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:36:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4oAZh53tcsrSoOggxpuQjZU0mrvZLww67glbpgWA4Ow=; b=MuZng7BmlYQnyGPiGNnDtfUprI
	XkfUrfv4gUu6DPbU5LydjsDX5yzLQwIkMVjOLoWK2R/JA8FsBjXbH00UTX8BqrX2c+XCfE/Vs0Dzm
	oAk/R0UFtpFMGvMSF6XXSi0a3JDGtiorFBWHY/ycjdHvGrxne+jaAGzMGP7Sq5TMtwcW2v/SLqcXJ
	gJXnmUlXdQYru0mtONtWb1IBbDqkuH3V4CeBCdW1to/GLWdkwyn0jnKoGnuLk3KQaN3EaucTdR1yk
	HJbuLz6eZfhRWFYIA2spmgrH4AcTQxi8cHvBQQZ6TDSKeeY6pSEShlGvNDblqD6hmyUli3dDMd+az
	WuD8j1CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL64N-00Bl0O-1Z;
	Wed, 03 Jan 2024 18:34:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61L-00BhP9-1b
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=4oAZh53tcsrSoOggxpuQjZU0mrvZLww67glbpgWA4Ow=; b=R5urZTRASfzBK4HoTx5QP3RiLK
	mhbpTQEzu7/DKL8XwTX0bW3Q36xlrjG4C9qzu6CE8n8tj7XYS8CwllZNKGkVun1NMbI6wI+cia6dE
	KJWvRoGT9MuX/f4fSN+KCT5GP7/iRj7y2BsCZXV/hvwhg8dTYY6mK0o1n2maXaKl/HnxxDHGs+kAJ
	/tDbAM0DfTVcBXfLkea1chEr2cgfbTVQkd+2JDr8pxQyoOH9w9aMS0qAolc+zU/oG8D+KtMVxze9J
	pwgy1UoQU1G/ZqRJc1BJlwMyIIy836OkcI+TX82kpzMv56JZsUXbRUwwmHvaci6fANyP+AFBHjOJJ
	rX2ZeTJA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61E-005eC5-1E
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-0001at-K1; Wed, 03 Jan 2024 19:30:56 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-000AwT-7b; Wed, 03 Jan 2024 19:30:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k2-001j4X-1Q;
	Wed, 03 Jan 2024 19:13:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:53 +0100
Message-Id: <20240103181312.409668-34-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183108_556135_545FFEFB 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 033/112] fs: always check path_init for errors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have three calls to path_init, but Only one of them checks the returned
pointer value for errors. This didn't hurt so far, because the function
always succeeded, but a follow-up commit will cause it to fail in some
circumstances, so prepare for that by duly checking the return value.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index be0b38d8bc30..c034f2cb9a0d 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2324,6 +2324,8 @@ static int filename_lookup(struct filename *name, unsigned flags,
 	set_nameidata(&nd, name);
 
 	s = path_init(&nd, flags);
+	if (IS_ERR(s))
+		return PTR_ERR(s);
 
 	while (!(err = link_path_walk(s, &nd)) && ((err = lookup_last(&nd)) > 0)) {
 		s = trailing_symlink(&nd);
@@ -2529,6 +2531,8 @@ int open(const char *pathname, int flags, ...)
 	set_nameidata(&nd, filename);
 
 	s = path_init(&nd, LOOKUP_FOLLOW);
+	if (IS_ERR(s))
+		return PTR_ERR(s);
 
 	while (1) {
 		error = link_path_walk(s, &nd);
-- 
2.39.2



