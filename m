Delivery-date: Wed, 14 Aug 2024 11:25:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seAFd-009UQL-1D
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 11:25:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seAFc-00075q-5s
	for lore@pengutronix.de; Wed, 14 Aug 2024 11:25:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GlLlNOh2lOGoXWnrdjTbXjwct+jdHI8EbFxMIDfnEB0=; b=s4FxeMt7+hZqDhs540xmNqHSUt
	o+gaJc06bpuRId7TVJfVjSvV5WSnkSzsvUv1xGFCBO29XM1S/CsmlVSeo39FOljH4txs7SmaD6lVv
	pswtSk1LzkhYlPbNGrwULs4vc5IcTX+8NJWqW2zBdrJncnB8enOXLZUvAPghYv64rBgeFA2+kVD16
	IVD+rqekle30GsYi0QLubh5LFS1VxTGPXXYvm+iTG3XvA5w3xsmA3SWFaKYKEJUK18XZqZG95b3a8
	2Fp7OoocPwLej6nahY/VkUZwKk7Ev1T3E79dDOug+4J/4IYUGS5KteFaqwI7YjnqlV1JfK7cjKPo3
	myNSZskA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAF7-00000006Msg-1Y9A;
	Wed, 14 Aug 2024 09:24:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAF6-00000006Ms6-0BFn
	for barebox@bombadil.infradead.org;
	Wed, 14 Aug 2024 09:24:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=GlLlNOh2lOGoXWnrdjTbXjwct+jdHI8EbFxMIDfnEB0=; b=KCkiPsHUBRtrFbXuYzVLU2HSo3
	dV+foRXi7KqxOW8R8Yh6cyuKGAoLAj4uaRcmaBkfaKBfpJE4EaWRarVPgSGWXOiJnsEj8hoDCxsXs
	Vfh5z/CzGWfYWL3n2kmb+FOWBE9YBEwUO534/UjOAJM4f4o01F47O4COtZkZWHlEtIKU5wnTYO3ch
	2C7Okr0hJF8yDs2qdA7dZjYmbyDIy/kF823DmHDtdanPgguimsUpdn6amTC+x/sUdnQuxslJLiWX+
	sBaMel/09f/qE8v3Q4b7nyVh2Ap+dRD5SZokUAdz96g1g/erVjdoXUqZdh/z+mFWc5aW8RJHGURAZ
	62l/m4vQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAF1-000000080Lc-0Gkf
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 09:24:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seAEz-0006sa-St; Wed, 14 Aug 2024 11:24:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seAEz-000KMk-G2; Wed, 14 Aug 2024 11:24:25 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seAEz-000AUW-1J;
	Wed, 14 Aug 2024 11:24:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Aug 2024 11:24:20 +0200
Message-Id: <20240814092424.39878-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240814092424.39878-1-a.fatoum@pengutronix.de>
References: <20240814092424.39878-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_102427_526675_61062385 
X-CRM114-Status: GOOD (  11.01  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/6] efi: fs: fix determination of read-only files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The negation was erroneously applied to only the left-hand argument
falsifying the result. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/efi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/efi.c b/fs/efi.c
index 11073e9961c4..cb0eb40da4c2 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -360,7 +360,7 @@ static int efifs_stat(struct device *dev, const char *filename,
 	s->st_size = info->FileSize;
 	s->st_mode = 00555;
 
-	if (!info->Attribute & EFI_FILE_READ_ONLY)
+	if (!(info->Attribute & EFI_FILE_READ_ONLY))
 		s->st_mode |= 00222;
 
 	if (info->Attribute & EFI_FILE_DIRECTORY)
-- 
2.39.2



