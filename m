Delivery-date: Mon, 14 Oct 2024 15:23:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L2i-004Got-1C
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:23:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L2h-0001oC-PX
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:23:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a2MhN3LQmd0LIL3h5nO3IwehoD2JxkBiL/JPcvS9rvc=; b=ZetdS8WW8fDHYWrWLtnpEfLaa+
	idqzXZJhHl8izUy1iSYdiN0rllTXdxioLuyiQDi6BOlJAbrfmPnsPHfMyi4k84yZs+YhR0n/EeTeD
	QfEUOXYISW7wrFNO7Brspc2IDTYB4/rCqRWMjV2Z0wQb8V1DoL2tb6Ie/BIaMpj3/SpxCTgvQhScl
	0r3QHZ+JxOGLhhTwpETV0rCSr4rTOgNHwCKbT3umz1jb5AWtYJQ8BVOKIExsZ7ykOiY16Ny0kzPYU
	ge8iHvR7AluoqWLiKY6vr/ZmX9MGAZbUeSn1AN/MiYjtJcL16LIda0AkzOb+wIbzB6L0UMjRHehDv
	bQLP9GCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L2E-00000005FUA-1cyt;
	Mon, 14 Oct 2024 13:22:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JID-00000004vzI-2bB5
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:33:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0JIC-0008Ow-2s; Mon, 14 Oct 2024 13:31:16 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0JIB-001mJY-Mi; Mon, 14 Oct 2024 13:31:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0JIB-000HVW-26;
	Mon, 14 Oct 2024 13:31:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241009140155.1990882-1-a.fatoum@pengutronix.de>
References: <20241009140155.1990882-1-a.fatoum@pengutronix.de>
Message-Id: <172890547564.67269.4680288308852784481.b4-ty@pengutronix.de>
Date: Mon, 14 Oct 2024 13:31:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_043117_692840_ED1028EA 
X-CRM114-Status: UNSURE (   7.44  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/6] crypto: ecdsa: fix fallout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 09 Oct 2024 16:01:49 +0200, Ahmad Fatoum wrote:
> A number of these commits can be squashed into next, but I leave it to
> Sascha whether he wants to do that or just apply them afterwards.
> 
> Ahmad Fatoum (6):
>   crypto: reorder ECDSA Kconfig entries
>   crypto: rsa: support RSA keys with CONFIG_CRYPTO_BUILTIN_KEYS disabled
>   keytoc: return error on failure to set PKCS#11 pin
>   crypto: ecdsa: make crypto/ecdsa.h header self-containing
>   test: self: jwt: regenerate jwt_test.pem.c_shipped
>   test: self: rename REGENERATE_RSATOC to REGNERATE_KEYTOC
> 
> [...]

Applied, thanks!

[1/6] crypto: reorder ECDSA Kconfig entries
      https://git.pengutronix.de/cgit/barebox/commit/?id=0b8306660f2e (link may not be stable)
[2/6] crypto: rsa: support RSA keys with CONFIG_CRYPTO_BUILTIN_KEYS disabled
      (no commit info)
[3/6] keytoc: return error on failure to set PKCS#11 pin
      https://git.pengutronix.de/cgit/barebox/commit/?id=3c7efb02d7f0 (link may not be stable)
[4/6] crypto: ecdsa: make crypto/ecdsa.h header self-containing
      (no commit info)
[5/6] test: self: jwt: regenerate jwt_test.pem.c_shipped
      https://git.pengutronix.de/cgit/barebox/commit/?id=011c6cc73aa9 (link may not be stable)
[6/6] test: self: rename REGENERATE_RSATOC to REGNERATE_KEYTOC
      https://git.pengutronix.de/cgit/barebox/commit/?id=3c884a974661 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



