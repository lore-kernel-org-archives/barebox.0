Delivery-date: Tue, 16 Dec 2025 08:39:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVPeQ-00C22e-27
	for lore@lore.pengutronix.de;
	Tue, 16 Dec 2025 08:39:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVPeQ-0000u6-49
	for lore@pengutronix.de; Tue, 16 Dec 2025 08:39:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dHYaD5QaDXAPHbvy/PFnE2odoeWPQ03W5hDO/u1RAmQ=; b=0uT61F5foKvWWQ7LFowurm+6DY
	UgqH5McjMUAkyfJv9IjN/n173Gk9/UfzrKUwvekwsZFKg2CV7EAe3zvuwHXNrTP2qNmpyezl1F2EU
	cPKdh83/YY07tXvkYnTqu63yb7x0XSa1l3gOjMHIZ8zUKDUdqlr8m9JjX5xE4b94DU03GQN1ZyZGg
	FFfXIGlPf8YufmlrNMeEcorG1wEd8GpHGeDQPtPnxz/BtPnduD0nhfGqYyy8oKqbRt7Kpq4/TvIG1
	84ZeyYv7LV2edW3JYy6mLvzTaJqLis3Ufp1I42yC6EreqcrZKPGt7ziSQOOCymYKHRF9N+yRlhQGE
	CEv0gwPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVPdw-00000004rsD-2px4;
	Tue, 16 Dec 2025 07:38:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVPdt-00000004rrf-3I3n
	for barebox@lists.infradead.org;
	Tue, 16 Dec 2025 07:38:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vVPds-0000nE-5j; Tue, 16 Dec 2025 08:38:44 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vVPdr-005udl-3B;
	Tue, 16 Dec 2025 08:38:43 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vVPdr-00Allb-2m;
	Tue, 16 Dec 2025 08:38:43 +0100
Date: Tue, 16 Dec 2025 08:38:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aUEMg1fq13m2K8Qj@pengutronix.de>
References: <20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-0-11eea1b2ef41@pengutronix.de>
 <20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-5-11eea1b2ef41@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-5-11eea1b2ef41@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_233845_823755_0CDF48C2 
X-CRM114-Status: GOOD (  19.04  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] mci: cadence: add support for version 6
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Steffen,

On Mon, Dec 15, 2025 at 03:21:27PM +0100, Steffen Trumtrar wrote:
> There is a v4 and a v6 of the Cadence SDHCI. The Agilex actually has the
> v6 version on the SoC.
> 
> Port the driver from Alteras Linux tree [1]
> 
> [1]: https://github.com/altera-fpga/linux-socfpga.git socfpga-6.12.33-lts
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/mci/Makefile         |   2 +-
>  drivers/mci/cadence-sdhci.c  | 714 ++++++++++++++++++++-----------------------
>  drivers/mci/cadence-sdhci.h  | 118 +++++++
>  drivers/mci/cadence-sdhci6.c | 373 ++++++++++++++++++++++
>  4 files changed, 818 insertions(+), 389 deletions(-)

This changes the whole driver. As the original driver only has a single
commit and is not enabled in any defconfig, could you remove the original
driver first and add this driver in a second step? This would make this
patch more readable.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


