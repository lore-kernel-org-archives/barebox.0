Delivery-date: Tue, 05 Aug 2025 11:36:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE6G-007FYl-1A
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 11:36:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE6F-0004Ax-K5
	for lore@pengutronix.de; Tue, 05 Aug 2025 11:36:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=auoB/ofAFibm2xyGh7Ftro6Cwr3xEPjZjkMgi8pnA0A=; b=wVKgeUwXL/8nVl8apOtz0AiFx6
	x8PO49av65Utbpj2MRUkvN/ukNXlHNQTdZE7QgW4uZ30uPogFI/tatMqqK1qeikgjkiws1iVppjj9
	b1HLUa+ex+DN77M1Dp3+KZUHgeWOSk37ZIUm9KbyI9yMtsV4Nfw/k82gBR70VnoqfMUCsqtISmos8
	3+Z+uOuilGJPpDq48SATUYhyUDrmjgAnb0kafTi1wSvI8ehzitqbULLBKtavs7iwuEZzLbEm+V13A
	D0enp4pSCXp3/3+PhXavhnxRRc+2fVrvsu6ih1egUxKk/jDoJjbQ/smfzzSkaUDViKmbELtbD9NPK
	GESUJTHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujE5n-0000000CO44-3lFc;
	Tue, 05 Aug 2025 09:36:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDzK-0000000CM5q-3NOM
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 09:29:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDzJ-000269-D1; Tue, 05 Aug 2025 11:29:41 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDzJ-00C1Bv-0h;
	Tue, 05 Aug 2025 11:29:41 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDzJ-00EjFB-0V;
	Tue, 05 Aug 2025 11:29:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250702110139.2235318-1-a.fatoum@pengutronix.de>
References: <20250702110139.2235318-1-a.fatoum@pengutronix.de>
Message-Id: <175438618115.3510454.7550480690935997570.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 11:29:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_022942_847154_D0992C0C 
X-CRM114-Status: UNSURE (   8.16  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] mci: clean up MCI idle delay handling a bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 02 Jul 2025 13:01:35 +0200, Ahmad Fatoum wrote:
> Stuff I noticed while looking into actual issues that have been
> submitted separately as fixes for master.
> 
> Nothing critical in this series, so can go into next.
> 
> Ahmad Fatoum (4):
>   include: linux/iopoll.h: evaluate timeout_us argument only once
>   mci: bcm2835: allow core to request timeouts longer than 100ms
>   mci: sdhci: use sdhci_compute_timeout in sdhci_wait_idle[_data]
>   mci: sdhci: reduce duplication in sdhci_wait_idle[_data]
> 
> [...]

Applied, thanks!

[1/4] include: linux/iopoll.h: evaluate timeout_us argument only once
      https://git.pengutronix.de/cgit/barebox/commit/?id=828aa7a3c609 (link may not be stable)
[2/4] mci: bcm2835: allow core to request timeouts longer than 100ms
      https://git.pengutronix.de/cgit/barebox/commit/?id=962179a82898 (link may not be stable)
[3/4] mci: sdhci: use sdhci_compute_timeout in sdhci_wait_idle[_data]
      https://git.pengutronix.de/cgit/barebox/commit/?id=3054debb58a7 (link may not be stable)
[4/4] mci: sdhci: reduce duplication in sdhci_wait_idle[_data]
      https://git.pengutronix.de/cgit/barebox/commit/?id=fb25385dc3b8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



