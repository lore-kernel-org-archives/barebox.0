Delivery-date: Fri, 24 May 2024 13:44:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sATLR-00GcJz-3A
	for lore@lore.pengutronix.de;
	Fri, 24 May 2024 13:44:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sATLR-0005Xm-Er
	for lore@pengutronix.de; Fri, 24 May 2024 13:44:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/hzdPqHmhymsiEiAZFv6qCWUkX+0t3Uvj0fWoMsfb14=; b=ojXUjyELb3MvabFr3KI6dUacje
	0PYYpTa1O2H8IFWJljOAGOhPPehl/VDTyqpniphHUb53AJprYzOuPuw6FyginYQitNX1icf1fUeHL
	AkuChsiaxsX/PfY/mqgGvJEWnaOAIja7/lmxQ5eoTfz3QbTzxN+18SESDLoPHlS52LTeK3UlLFTd5
	zxU+Xy7ZsNV01E7fDLvEbuZv1+Nb6fvl19g+nu4PFZnWA8wQkfMB1spKe2wMhMnh+2R/hq93ymNed
	hxqe2OElFgGW8CqCYYfOlb2gPUHZhHVEBpIKr6bCCtS4/nozrHmj0ZZqZT49Lj0cOeHxyo7cl5hY6
	pi0XkWfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sATL3-00000008nje-1Mpm;
	Fri, 24 May 2024 11:43:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sATL0-00000008niq-0QJB
	for barebox@lists.infradead.org;
	Fri, 24 May 2024 11:43:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sATKy-0005RZ-OA; Fri, 24 May 2024 13:43:52 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sATKy-002muB-Bc; Fri, 24 May 2024 13:43:52 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sATKy-002Vd2-0v;
	Fri, 24 May 2024 13:43:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Jonas Richardsen <jonasrichardsen@emlix.com>
In-Reply-To: <20240522061819.6150-1-jonasrichardsen@emlix.com>
References: <20240522061819.6150-1-jonasrichardsen@emlix.com>
Message-Id: <171655103228.598205.11589084034414468285.b4-ty@pengutronix.de>
Date: Fri, 24 May 2024 13:43:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240524_044354_228794_CD8A6270 
X-CRM114-Status: UNSURE (   7.56  )
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
Subject: Re: [PATCH] mci: bcm2835: Set mci host for sdhci
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 22 May 2024 08:15:27 +0200, Jonas Richardsen wrote:
> The pointer `sdhci.mci` is currently not being set for the bcm2835. This
> leads to a null pointer dereference for example in `sdhci_wait_idle()`
> if the `sdhci_read` function fails or times out.
> 
> Set the pointer within the `bcm2835_mci_probe` function. This is
> analogous to the behaviour seen in `arasan_sdhci_probe`,
> `fsl_esdhc_probe`, `rk_sdhci_probe` and other, similar functions.
> 
> [...]

Applied, thanks!

[1/1] mci: bcm2835: Set mci host for sdhci
      https://git.pengutronix.de/cgit/barebox/commit/?id=5d74c69b3279 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



