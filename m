Delivery-date: Thu, 04 Jun 2026 07:56:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV14C-002B32-2Z
	for lore@lore.pengutronix.de;
	Thu, 04 Jun 2026 07:56:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV14C-0008QQ-7U
	for lore@pengutronix.de; Thu, 04 Jun 2026 07:56:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dJeSA65rPc/c/LQjZ/SydTJ7AEXf0fU7jyi1ZVYjZ9g=; b=M2ngei781PfocQY9/k5K7ffHHf
	9RpFzJ4QVmlGQgWoZLXc9MKpAYoXYI5LUGvuTulDfJDNV8tzpFWUohLFVh0E+zDjHpZ1j/OLrCDd9
	orH8wsVPgYWVb08D4XexNjmggpReJuoloHAx/jgP41uRdVNFTfbCtVKeaghFaPsBsKSAvvzzRm19T
	FzfXQKMaxDr4jtHOOJaKorhgI/e6GVuGer7MwLzHqkLgst0I1AiUYSaXMbEhVso7Pbo3uQMcSf1Jc
	gtUFVZpZyFwozt7HQphSJkkRHOKqSDA/qly/2EqRDqwqJzYm5eJYGC21dGd4/K0YRuX/cVDB1PhwD
	rTO3rI5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV13A-0000000GCZQ-05bt;
	Thu, 04 Jun 2026 05:55:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV135-0000000GCZ1-2wwK
	for barebox@lists.infradead.org;
	Thu, 04 Jun 2026 05:55:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wV133-0008I4-9b; Thu, 04 Jun 2026 07:55:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wV133-0011nF-0n;
	Thu, 04 Jun 2026 07:55:21 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wV133-00000009DSc-0kuR;
	Thu, 04 Jun 2026 07:55:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260601-debug-ll-conflicts-v1-0-bf17f9f0e23a@pengutronix.de>
References: <20260601-debug-ll-conflicts-v1-0-bf17f9f0e23a@pengutronix.de>
Message-Id: <178055252117.2196663.12286886318886273784.b4-ty@pengutronix.de>
Date: Thu, 04 Jun 2026 07:55:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_225523_756927_48939203 
X-CRM114-Status: UNSURE (   8.83  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] debug_ll: Cleanup conflicts for multiple SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Jun 2026 14:29:52 +0200, Sascha Hauer wrote:
> This cleans up some problems we have with debug_ll when it comes to
> multi SoC images. debug_ll relies on having exactly one PUTC_LL()
> implementation available. Most SoCs have their own DEBUG_*_UART Kconfig
> option and the Kconfig choice around them makes sure only a single debug
> UART can be selected. Some SoCs do not have a dedicated option though
> and provide PUTC_LL() whenever the SoC is enabled which can to multiple
> definitions of PUTC_LL(). Fix that by adding a DEBUG_*_UART option to
> the SoC that currently do not have one.
> 
> [...]

Applied, thanks!

[1/3] debug_ll: give PUTC_LL a common prototype
      https://git.pengutronix.de/cgit/barebox/commit/?id=1bc53b756011 (link may not be stable)
[2/3] debug_ll: Add Kconfig options for debug uarts that have none
      https://git.pengutronix.de/cgit/barebox/commit/?id=b804a356447f (link may not be stable)
[3/3] debug_ll: pl011: define PUTC_LL only when requested
      https://git.pengutronix.de/cgit/barebox/commit/?id=cc145f79779f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



