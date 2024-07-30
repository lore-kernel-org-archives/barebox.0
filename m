Delivery-date: Tue, 30 Jul 2024 12:10:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYjns-004Qh8-2j
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 12:10:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYjns-0007uz-8S
	for lore@pengutronix.de; Tue, 30 Jul 2024 12:10:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0CAoo2vWY9MuY6lfw/a/7IqhpbFWMUYAzKP6NU0xi5Y=; b=rthepU7Hjy+uj0Lpb0YB7VKSd+
	Z8AQj+D7QPtiuOj1FGn3TRhhGDSBIxVg3l/cFKLkIUrJJWOIuov53lKrlEgQsp29Pi6RVA/qzEgqX
	nc9+tgcer1oH8CkbJvJ+0C+2DOfgmIkhnEdEPwff39DKthTWKVdhkg6PSBklDCE1kQ8D8kxtFPVKI
	aADzOCxyeEICT7ubLrdx7MzGbziHv+3p7DuCaeS+8/1DY+wTt8Lm2aJrp4NyaWd2oYwfxAbt59icz
	q/3odunDmC1Li4LwPo2/d7eSlVOL0CSUrEStlan1T1wbtbvz/+Ch8n8C8zyrrcXG8RDozTPKJyLm+
	kkUlABdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYjnQ-0000000EfZg-3jq0;
	Tue, 30 Jul 2024 10:09:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYjnN-0000000EfYt-2sSt
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 10:09:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sYjnM-0007sW-4l; Tue, 30 Jul 2024 12:09:28 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sYjnL-003GCJ-O9; Tue, 30 Jul 2024 12:09:27 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sYjnL-0096US-27;
	Tue, 30 Jul 2024 12:09:27 +0200
Date: Tue, 30 Jul 2024 12:09:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Zqi71zu6eBtQIQ9T@pengutronix.de>
References: <20240730071929.2016537-1-a.fatoum@pengutronix.de>
 <20240730071929.2016537-10-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240730071929.2016537-10-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_030929_742804_ADA81F8A 
X-CRM114-Status: GOOD (  17.86  )
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
Subject: Re: [PATCH 09/10] mci: core: remove reference to SD Card from common
 mci_card_probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jul 30, 2024 at 09:19:28AM +0200, Ahmad Fatoum wrote:
> mci_card_probe is called for both SD cards and MMC, so reporting that
> an SD Card was successfully added is misleading.
> 
> There is an info message that reports whether it's a MMC or SD card
> already, so just remove the SD from this last debug print.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mci/mci-core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

You sent this as an extra patch already (which I applied). You can drop
this from the next round.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


