Delivery-date: Tue, 26 May 2026 08:44:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRlWn-003upm-2s
	for lore@lore.pengutronix.de;
	Tue, 26 May 2026 08:44:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRlWn-0003hF-AZ
	for lore@pengutronix.de; Tue, 26 May 2026 08:44:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KLfpaQUt6xSaBBGWme5twVBtK7XAMQ/PFb8vZots82s=; b=jUSD4jsTl1qa8MSbhFserL83KH
	ZmVI3ksJIZNE1OcWTEfvgzLRiPABLV4zCsDzukrIsmq/VB9YqT+1MtvNyMCLzZ/zMngzGhez/uwQ9
	fcu1rRBRwusL3j2oKm63sLgdZfkUvWxdVRg7kZKyDf9kPLkH7pp3PsnWkijm4kvc3Jv4Zv4De8BpI
	grPJJ9eFRyCQDluqJUD80DpJsOQuxgTjsblXhj5XVSm6batYsZly4bnHhkVJebaLC2ZjxizvERZcS
	ZFKwPUP61MHgVofMxRfRjkRBVNqLX9pGyovyMft3kLkxvvIIFUQlSDpNpM+G0vfTEkjFiLw+Hghs+
	yFUyyG8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlVo-00000001C0r-0Nls;
	Tue, 26 May 2026 06:43:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlVk-00000001C0O-0joj
	for barebox@lists.infradead.org;
	Tue, 26 May 2026 06:43:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlVi-0003Yo-HX; Tue, 26 May 2026 08:43:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlVh-001sAx-2x;
	Tue, 26 May 2026 08:43:30 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlVi-0000000GZqB-1nQg;
	Tue, 26 May 2026 08:43:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: ore@pengutronix.de
In-Reply-To: <20260522083644.2360282-1-a.fatoum@pengutronix.de>
References: <20260522083644.2360282-1-a.fatoum@pengutronix.de>
Message-Id: <177977781042.3950940.12655481843878351380.b4-ty@pengutronix.de>
Date: Tue, 26 May 2026 08:43:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_234332_220258_8D4675FC 
X-CRM114-Status: UNSURE (   8.19  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] MIPS: remove non-functional zbarebox.bin target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 22 May 2026 10:34:51 +0200, Ahmad Fatoum wrote:
> To be able to build zbarebox.bin, HEAD_TEXT_BASE must be defined, but
> HEAD_TEXT_BASE is dependent on MALLOC_BASE and this has not been defined
> for MIPS since commit 2eecaafe20ff ("MIPS: relocation: do not use
> configurable memory layout"). This is more than 6 years ago, so it's
> safe to assume this is not needed, so just delete all of it and then
> remove HEAD_TEXT_BASE and MALLOC_BASE that are now unused.
> 
> [...]

Applied, thanks!

[1/1] MIPS: remove non-functional zbarebox.bin target
      https://git.pengutronix.de/cgit/barebox/commit/?id=ee8d0ba55b9f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



