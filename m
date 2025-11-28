Delivery-date: Fri, 28 Nov 2025 15:11:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOzCX-005nxI-2O
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 15:11:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOzCW-00042o-A0
	for lore@pengutronix.de; Fri, 28 Nov 2025 15:11:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PbtgDiJk6NL4RORim2JqM9y6G+bn7R//bOxFZRf7BjM=; b=07B1v+aCEm86SqS5/kxQfA28+m
	R58UAAofg7xg5+1dceA03LEtS5QU7TS3XCPgfvmqIEmIs+0WeZ/XIQEUIWlLLYmCwUqyPXtKUriGR
	qaYxjhwm2nVTFpDIpjgtOFo+/rmpqen9CWPmdJxrzeqCCeZOd6MPFnrA7C0MkRPtBi7nQ9gnVYi09
	o5+Gual+YYPh+E1BgXxvj2NUnDwl6BhBbrZfEH//y/87CSJu9KKp7z0NPvXHI6fr/erTUwN1Niy+w
	DGrKv+7hAITVqvLebKKBLL8IlsP0DothcpVRCE2Rjhg7N7gEfcAlIkp/KqXk0B4ITfKhJrvN9bA00
	8SUa4fCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOzC3-00000000WVc-1Ii1;
	Fri, 28 Nov 2025 14:11:27 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOzBy-00000000WU7-2klr
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 14:11:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5314E42D7E;
	Fri, 28 Nov 2025 14:11:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 34BE5C116C6;
	Fri, 28 Nov 2025 14:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764339081;
	bh=rxLSYvxsssji3EfiPsufLU6AKIoPNpmZEp0EUkr4C28=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=GTx2BEQXW8xIOXrPJWL1Czt3QAv9EyZl2SkYJgBXLmOf6MBCHPkyCDWQa/e5EM5sC
	 1t7668PfUW6lVYhOOjTcxaHoXeyRoBGpRK6Aw2TDHn5HRulvaH1XHFobr+/546gKwW
	 4H/Oyt/IUWLYVoPTI07r2KQFgUP23AgphnLoU0BhOC4kX0VKs6fv+1y80X8ySvKWOW
	 OpaIeJV7xYGr2Fbk+w6yXhPsC2LPK7CnYovAmm5OlChP1KC/doqGQDbVASNBs6PMp5
	 Gb2s6/jDkTVrqzlAlciQcor1sPTnfJWuKwnU/DFPo22TXI1CONRKawtfBuvAR/zkig
	 aXYGGiMpEDC1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B158D116F3;
	Fri, 28 Nov 2025 14:11:21 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maudspierings.gocontroll.com@kernel.org>
Date: Fri, 28 Nov 2025 15:08:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251128-imx_usb-v1-3-bb6a5180b38e@gocontroll.com>
References: <20251128-imx_usb-v1-0-bb6a5180b38e@gocontroll.com>
In-Reply-To: <20251128-imx_usb-v1-0-bb6a5180b38e@gocontroll.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Maud Spierings <maudspierings@gocontroll.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764339080; l=415;
 i=maudspierings@gocontroll.com; s=20250214; h=from:subject:message-id;
 bh=rBeLpcpDYXlRocbeFNy26wAbndybequTHRKMHaxq3x4=;
 b=PixO3gC8jd2vxpymDlUm9EtSzJ591AW8fubPh7VLtK0Iv7LWz4xCKhoYuxklx9cuaOt8fOuoG
 8IaFVQcOjJSBzjzlnjeJBAr7pajBou+/7deAZhFepmPfzCWJZyON2Q8
X-Developer-Key: i=maudspierings@gocontroll.com; a=ed25519;
 pk=7chUb8XpaTQDvWhzTdHC0YPMkTDloELEC7q94tOUyPg=
X-Endpoint-Received: by B4 Relay for maudspierings@gocontroll.com/20250214
 with auth_id=341
X-Original-From: Maud Spierings <maudspierings@gocontroll.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_061122_722180_A430E865 
X-CRM114-Status: UNSURE (   6.43  )
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
Reply-To: maudspierings@gocontroll.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] gitignore: ignore *.exe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Maud Spierings <maudspierings@gocontroll.com>

windows scripts produce .exe files, which should not be added. Add it to
the gitignore.

Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
---
 .gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/.gitignore b/.gitignore
index a235f9f7de..74cb7b0928 100644
--- a/.gitignore
+++ b/.gitignore
@@ -19,6 +19,7 @@
 *.dcd
 *.dcd.S
 *.elf
+*.exe
 *.i
 *.ko
 *.lex.c

-- 
2.52.0




