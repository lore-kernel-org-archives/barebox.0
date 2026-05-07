Delivery-date: Thu, 07 May 2026 13:19:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKwlE-001wjT-3C
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 13:19:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKwl9-0000YQ-KQ
	for lore@pengutronix.de; Thu, 07 May 2026 13:19:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WMaR9nhtuv3zws6oyeVnVq8Ws8XLE3OH5NRqlzgOr4Y=; b=ZQ3u1E1m44iKrqSzAxrKGl427R
	tAxs2DbzZN3miSHPrTlR1c0ny0C2sdoiVILghKLmxXG4tCtT/nYXTG+3D7hD8qgKSK1aHcgNa7w/b
	lvq4pxjczDyXDWCxI0B1ol5J+H/EErH7T0RKDLb0Jv1MuJhwdKK4Rj5hWTqBFSmUSsYwoQK2XWTSg
	yyw4rZceE3AGdbg0U4n2LtCsOh+jPsrWipm3bsUonoDqz0aZ8C9DCmVn90F4wg6PFXL/HhsQ5kywg
	NNlpp0Apv4hDrIhaHKi+B9NlUfgGJZxg3aGmvN/5m8pSZFQi0WQa5VpxvVFXkQ1GnoxKrBI0H4UIt
	RKWgQdGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwjx-00000003b1s-3u5d;
	Thu, 07 May 2026 11:18:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwjw-00000003b1i-2FQr
	for barebox@bombadil.infradead.org;
	Thu, 07 May 2026 11:18:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=WMaR9nhtuv3zws6oyeVnVq8Ws8XLE3OH5NRqlzgOr4Y=; b=CtpvcnX396FzTV8fMYwr5X8ZzS
	dIW/MTQRBb/ZR+ckpubIBJ4T6HdMffw3IrUKJxbKVoCxVTMoNfwTlRCcGUetVnxn9Tp6+36aNqBdZ
	URHMZACHofNIzHaPF1lLkUNjtZDwW1w/bcDZqLY1i6zUwaJSoer36Z8NMUW9CFF+tiZl/l9v2Uqrn
	HzZwJYG7mcjdc0Bw6lHM485mBuC8h6Eh0HcSe/us53UOGGmWqGWzaThc3HbzvsFz7746i91PfP9c8
	rEFsh0ZktZAS1sqd4x/taq3qk1ne/u5NLXFih3FKtszGP2dY/DjejmlniRc9ZbpWeO3FplsvvXJYG
	tYXahyMg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwjs-00000003KmR-3K1x
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 11:17:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKwjs-0008ES-4Q; Thu, 07 May 2026 13:17:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKwjr-000ueN-0u;
	Thu, 07 May 2026 13:17:55 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKwjr-0000000Blj0-2bdn;
	Thu, 07 May 2026 13:17:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20260505095137.1123867-4-a.fatoum@pengutronix.de>
References: <20260505095137.1123867-1-a.fatoum@pengutronix.de>
 <20260505095137.1123867-4-a.fatoum@pengutronix.de>
Message-Id: <177815267561.2805055.2067642007800429165.b4-ty@pengutronix.de>
Date: Thu, 07 May 2026 13:17:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_121757_254130_CE894B89 
X-CRM114-Status: UNSURE (   7.08  )
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
Subject: Re: (subset) [PATCH 3/3] bootm: append automatic parameters after
 all other linux.bootargs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 05 May 2026 11:51:00 +0200, Ahmad Fatoum wrote:
> bootm can be configured to determine suitable values for a number of
> kernel command line options that will automatically be fixed up.
> 
> Currently, these options are concatenated into the kernel command line
> interleaved with all other options in the lexicographical order of the
> linux.bootargs. parameter name.
> 
> [...]

Applied, thanks!

[3/3] bootm: append automatic parameters after all other linux.bootargs
      https://git.pengutronix.de/cgit/barebox/commit/?id=d99ca66b6806 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



