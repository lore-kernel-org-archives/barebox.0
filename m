Delivery-date: Tue, 13 Feb 2024 10:20:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZoxt-004cSB-33
	for lore@lore.pengutronix.de;
	Tue, 13 Feb 2024 10:20:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZoxt-0004le-DD
	for lore@pengutronix.de; Tue, 13 Feb 2024 10:20:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xoIo+Xpt9XUGwsiZWeFHSlzpPJ0jncbFgjuzohyEQYw=; b=qpU+rMYX2azltCBI5vSjDNGSf+
	Dw8a4aXodeeZ/lpyN3NLBoAt5gui0NnNqZV0jWo9QzoRP2jnk7/e54JpNAVu6U0dLm0VGWayF69K1
	xsfQkU2zRNMni2TaKD8C5FMNjPsnD0Cu70JVw3+t6wAKtxPNoy+JA0FSS9/o8PLpvAB8vdzJRgPX2
	MfriCzgSjRfkJeHS49Z05HgP9kzSYjD5lX/TX+3xajzNALKO7ceGXqu0t2QjUvwn1WbOYppelceOb
	/J70eiqIAO/gKuxmnfCCKTbRpaTiY2+/tYHwPXIkC6ZHIoCC4e0yRj12Vrh0Dzff2E8sPyss7qY6h
	+9Ovq0mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZoxN-00000008a5J-2VkR;
	Tue, 13 Feb 2024 09:20:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZoxL-00000008a4m-0owL
	for barebox@lists.infradead.org;
	Tue, 13 Feb 2024 09:20:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZoxJ-0004hA-Tq; Tue, 13 Feb 2024 10:19:57 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZoxI-000SBB-VE; Tue, 13 Feb 2024 10:19:56 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZoxI-00Afwj-2w;
	Tue, 13 Feb 2024 10:19:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Joacim Zetterling <joacim.zetterling@westermo.com>
In-Reply-To: <20240212154551.2259925-1-a.fatoum@pengutronix.de>
References: <20240212154551.2259925-1-a.fatoum@pengutronix.de>
Message-Id: <170781599690.2544451.3578634795903154110.b4-ty@pengutronix.de>
Date: Tue, 13 Feb 2024 10:19:56 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_011959_270682_E00C8D62 
X-CRM114-Status: UNSURE (   9.39  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] mci: sdhci: atmel: fix truncation when reading
 out caps
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 12 Feb 2024 16:45:51 +0100, Ahmad Fatoum wrote:
> The capability read out was changed a few years ago to use 32-bit
> accessors, but the variable that it was stored in remained at 16-bit
> leading to truncation of the upper bits and breaking detection of the
> SD-Card on my SAMA5D27-SOM1-EK:
> 
>   ERROR: barebox-environment chosen:environment-sd.of: probe failed: No such file or directory
> 
> [...]

Applied, thanks!

[1/1] mci: sdhci: atmel: fix truncation when reading out caps
      https://git.pengutronix.de/cgit/barebox/commit/?id=1db4fae6e97c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



