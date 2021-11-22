Delivery-date: Mon, 22 Nov 2021 09:51:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp53O-0003Wa-UH
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:51:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp53N-0001Gv-Lj
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:51:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rY4efOOCV8qfxluiLcdh4u+v0GmJb0sQZPROAldrYb4=; b=rKllTGFTlGLr4Y
	fNaOuAKfTm57iiDwS7jj7WaUSvpbD0NK9juVAWYQDx9pAIVb0PkNZBxsY7+gKsxMEcGyd2nhhhX3x
	KhfUPQxYiOENJRoBRdAb3qXUyZ7da+zDemTss4C385uq58y26arx+S27PdxcP+iNSe49zLwf/3Ut5
	yWwETd16jYJ6QduFBaAvw+J0gAFl0AklkDvvYelw7GCVGFG3IAwA40g3OJ7ZgqEzBXf4RXDQ7bMKf
	J0oTqR6VicH+evhOnTEzsHYGHuyYFHR/xbWNehVbIBdP7R4MaAHu4843kQ+OyYrdLTUwA/b2dkM1O
	xZDbWRCznFxQf4esULrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp51v-00FMVr-9I; Mon, 22 Nov 2021 08:50:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zE-00FKzJ-N8
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:46 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zB-0007wk-LD; Mon, 22 Nov 2021 09:47:37 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00Atff-St; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:27 +0100
Message-Id: <20211122084732.2597109-26-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004740_790686_154CC7B6 
X-CRM114-Status: GOOD (  10.62  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 25/30] efi: don't zero executable buffer before freeing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For security, it sometimes makes sense to zero memory before freeing.
This is not the case here, so remove the memset.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/efi/payload/image.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/common/efi/payload/image.c b/common/efi/payload/image.c
index 3bcb8fce2df5..c1206cd6e211 100644
--- a/common/efi/payload/image.c
+++ b/common/efi/payload/image.c
@@ -106,7 +106,6 @@ static int efi_load_image(const char *file, efi_loaded_image_t **loaded_image,
 
 	*h = handle;
 out:
-	memset(exe, 0, size);
 	free(exe);
 	return -efi_errno(efiret);
 }
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

