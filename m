Delivery-date: Mon, 11 Aug 2025 15:36:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulShS-009Lp2-2v
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 15:36:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulShS-00085n-CI
	for lore@pengutronix.de; Mon, 11 Aug 2025 15:36:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tTO8HqbtKEj3SesQ0EQ7hIrpqhR3YCUQHezwEU9x2wM=; b=jz6jMeb3nC7+nr9dQNZFjoXw9a
	jjqhmd1bdy2Q+/N+NV86zf2ct9sl2BmiH1Dm/wPdwuWvxqMQll/5lN9KYJD1QN16okV6KKjpVXSpN
	TQBMOTco2pZ5JdymMRx/Dc36Wwnhn2NioHBcLOYm64gAEM6opxgRk2ZBhF3e9HgckABmZwzwqOZys
	ibwUnZDOIximn7U25iiEUK7+NBj8+weYjqAXx3x7dFqVjJaQNEyV/a1GY7qHBOWi3VzUtivbbuzis
	eD3Kz9H7vQBCVKyu3BXFm6U0dZ+fo3uadh5Nd7Xk5ifwf5KEveYz1nK3RtUO/8+awLfY+TxL7XO/l
	nJhPf6oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulSgw-00000007qLR-2aqG;
	Mon, 11 Aug 2025 13:35:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulSfJ-00000007pwV-0HSA
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 13:34:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ulSfG-0007f6-JE; Mon, 11 Aug 2025 15:34:14 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ulSfG-00D2c7-1J;
	Mon, 11 Aug 2025 15:34:14 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ulSfG-00Eyy5-14;
	Mon, 11 Aug 2025 15:34:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: chalianis1@gmail.com
In-Reply-To: <20250730055743.922932-1-a.fatoum@barebox.org>
References: <20250730055743.922932-1-a.fatoum@barebox.org>
Message-Id: <175491925432.3570812.12255448855945349468.b4-ty@pengutronix.de>
Date: Mon, 11 Aug 2025 15:34:14 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_063417_112116_6174AF5C 
X-CRM114-Status: UNSURE (   7.40  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] scripts: Makefile.pic: define __NO_FORTIFY without
 value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 30 Jul 2025 07:57:40 +0200, Ahmad Fatoum wrote:
> The default for -D without = is to define the symbol to expand to 1.
> This is nt what we want, because pbl/string.c defines it without value
> leading to a build error. Fix this by defining it empty explicitly
> instead.
> 
> 

Applied, thanks!

[1/4] scripts: Makefile.pic: define __NO_FORTIFY without value
      https://git.pengutronix.de/cgit/barebox/commit/?id=3ef8fcc2cf7d (link may not be stable)
[2/4] ARM64: configs: multi_v8: disable layerscape temporarily
      https://git.pengutronix.de/cgit/barebox/commit/?id=6deab4afe8ff (link may not be stable)
[3/4] ARM: configs: multi: configure CONFIG_CONSOLE_ACTIVATE_ALL_FALLBACK
      https://git.pengutronix.de/cgit/barebox/commit/?id=d7ef4f90d425 (link may not be stable)
[4/4] ARM64: configs: add multi_v8_efi_defconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=9e42f7a95a6d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



