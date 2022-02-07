Delivery-date: Mon, 07 Feb 2022 14:49:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH4Oe-008Iiy-Ck
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 14:49:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH4Oc-0000fh-VQ
	for lore@pengutronix.de; Mon, 07 Feb 2022 14:49:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=98SzhkSpbnhbhsAC88lbki6P7oeO7r1sbcs3VMDN64E=; b=AWs2UAS6Yt4lGn
	kb3FfNMvMMyC5fbLWVMNRlO/sXxmQcHfcjC+DVI6bju4Gljb7eUCkoj2vFPPDkqTD0+u6q3e3zb2m
	Hq1M01HJ4zE+n/Tt5E/BFg9IQKlyIldy+P6hxCOFmUPXSYSmcHviIV2BTcfNdATpt3PkfztjTy2QB
	6JeIQDZr91OV2wv6OGuOPFzDjpHGqFGYpVofKMFQraEsess50mxvqHgv7fh9QHE/rmltkXMouxxwN
	k15wqKtS3KZ5JWlj1pNjKGhZ/zjqIeny8TCRjpZHpEvBZUkpiDdkaLAOzfhM8anze/eBGMs68KQdH
	bJJPNkb7F+iRvjXUZKGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH4NH-00AL7w-3d; Mon, 07 Feb 2022 13:48:11 +0000
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH4NA-00AL5l-5w
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 13:48:06 +0000
Received: from grover.. (133-32-232-101.west.xps.vectant.ne.jp
 [133.32.232.101]) (authenticated)
 by conuserg-07.nifty.com with ESMTP id 217DlilN011109;
 Mon, 7 Feb 2022 22:47:44 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com 217DlilN011109
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1644241664;
 bh=rbcCHlPrWsh4fvd8xxq8sHK7Gzv5xKws/cB+ejnwAOs=;
 h=From:To:Cc:Subject:Date:From;
 b=Pzm6UIndY6vt0ehyAmJ6ah5TihhYWVSikvrrM+1w5hUigIobd9knfA8JfYFAE7YWy
 kQkziVHFRDGZEEbFnolv28AjWCNUVrzEkiwLI5E9u7x+h4ZPn58lqPf8joMrhb97lN
 fSkcZzYjdYatq7z5OpcBcX8S/PLJ+CW2L2NOK0g1sZExaTDzr82+QxIT5ovc1EtfsA
 k0uIXNJUvx5sRSWI+qeDQwfp5tw9HVlUYue6GqbkFLNTM/SBtmcN1y2pLQFrTJsbWH
 S6RJsHlIXA58xvdrNd9dMzkEQaUB8XCL7E41axCaFwYvKhft8+4J5IX7xRzqMc9QbE
 OxXm87i2U7ZRA==
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon,  7 Feb 2022 22:47:43 +0900
Message-Id: <20220207134743.1775403-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_054804_474275_F86C58A4 
X-CRM114-Status: UNSURE (   5.02  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] kvx: remove unused CONFIG_ARCHINFO
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is defined, but not used anywhere.

  $ git grep ARCHINFO
  arch/kvx/Kconfig:config ARCHINFO

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/kvx/Kconfig | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
index 1c3e29a9f..5e7ddeea1 100644
--- a/arch/kvx/Kconfig
+++ b/arch/kvx/Kconfig
@@ -38,13 +38,6 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x110000000
 
-menu "Kalray specific"
-
-config ARCHINFO
-	string
-	default "coolidge"
-endmenu
-
 menu "Board configuration"
 
 config BUILTIN_DTB
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

