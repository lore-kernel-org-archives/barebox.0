Delivery-date: Tue, 20 Feb 2024 08:18:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcKOv-00Fi3q-2y
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 08:18:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcKOv-00054n-Cw
	for lore@pengutronix.de; Tue, 20 Feb 2024 08:18:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K68OkOYPcB3niUhNWu55NFg3CMw0aKjMvaqcJmoKOag=; b=flzRf98cv4Px7rFPN+9YXeiSUf
	Xcg7pEM/p+QgPji6w5/5Cs2wYGO/iqes6Uum4ksjYXSUCxxkXEcNlboX96qL7oYJd/wXauDaxkfRe
	D6fXb8JX84m4QJxKV3E+h3OQ4C+jcN0Bk4gZHblTsW6+JIqSfVuQ0NhYPkNevTsev584IbPVz4UZv
	s50Ka2q8bKHI1QdJygOJl9axNRQv361rTI9IZSfujYYsBZdqmtBCx6clLfMbjf2s82RM+AAdSdZmM
	1v3jNh6ibgKRcs1odcZ6SSE5OjsIZQgXGM7pCfEAVG2MmAkNnlYq00VN4K9had8w4552ed/dMreII
	c2U/+P/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcKOX-0000000DUbm-0VYY;
	Tue, 20 Feb 2024 07:18:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcKOT-0000000DUb0-3RAE
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 07:18:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcKOS-0004zh-MJ; Tue, 20 Feb 2024 08:18:20 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcKOS-001nbC-9l; Tue, 20 Feb 2024 08:18:20 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcKOS-001jaf-0o;
	Tue, 20 Feb 2024 08:18:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240219133340.3873032-1-a.fatoum@pengutronix.de>
References: <20240219133340.3873032-1-a.fatoum@pengutronix.de>
Message-Id: <170841350025.413299.10224364906947824133.b4-ty@pengutronix.de>
Date: Tue, 20 Feb 2024 08:18:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_231821_890918_CF9EC858 
X-CRM114-Status: UNSURE (   8.59  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: Layerscape: TQMLS1046a: switch to upstream DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 19 Feb 2024 14:33:40 +0100, Ahmad Fatoum wrote:
> The existing DT was added alongside board support in v2019.05.0.
> The board gained an upstream DT in Linux v6.7-rc1, which was pulled
> as part of v2023.12.0. So let's drop our copy to avoid duplication.
> 
> This change will introduce user noticeable differences:
> 
>   - barebox compatible, which is also used to match kernel DT, changes
>   - hostname changes as it's generated from DT compatible
> 
> [...]

Applied, thanks!

[1/1] ARM: Layerscape: TQMLS1046a: switch to upstream DT
      https://git.pengutronix.de/cgit/barebox/commit/?id=3644f6ce5e80 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



