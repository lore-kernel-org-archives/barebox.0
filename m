Delivery-date: Thu, 06 Jul 2023 10:42:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qHKYv-00HQS3-LB
	for lore@lore.pengutronix.de; Thu, 06 Jul 2023 10:42:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qHKYt-0006w1-EE
	for lore@pengutronix.de; Thu, 06 Jul 2023 10:42:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a/4FDthYfunVReRtdYgqlcmdbtZCYqCcm2yY0oJuCcs=; b=HmSXqL3FZDOJ64WmYLjswY6DZL
	Z+VjSl0O1XNpq6Th9IBBJyJD8SIlpyrYAO/J5AReeya1xcF5ebWfPF1gdY3km4ajsPIr0Yn585xhl
	mLCRuURZxFEDFuhWrEJxKZVUXKVeEPSqRzVC/Bh4m04NGlBikd5hGE6ZDULl1qWo4OtUaBpOD8LjK
	fPqiZ3KS4QSA32IpnC8ku51+U/7ILWH3IIzoMWnUmFyIrSzytC1sHOorhchiTDwNfJJOEdD8RIUIK
	J1EcAXHUQ42UWeL1aJ7Yo2c7OXoZ7c6E6VZvVNE/4T/iC7XK38H+tAOncNgJmD1fKhawE0bKzMYFs
	j0vTnG6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHKXh-000yZ7-1f;
	Thu, 06 Jul 2023 08:40:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHKXd-000yYK-1y
	for barebox@lists.infradead.org;
	Thu, 06 Jul 2023 08:40:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qHKXb-0006mD-OC; Thu, 06 Jul 2023 10:40:43 +0200
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qHKXb-0002Ob-Fy; Thu, 06 Jul 2023 10:40:43 +0200
Date: Thu, 6 Jul 2023 10:40:43 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230706084043.GA5688@pengutronix.de>
References: <20230706081126.784759-1-o.rempel@pengutronix.de>
 <20230706081126.784759-3-o.rempel@pengutronix.de>
 <577b4021-a9a4-dd65-4614-a5dd2df95428@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <577b4021-a9a4-dd65-4614-a5dd2df95428@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230706_014045_645668_C0D3F148 
X-CRM114-Status: GOOD (  23.00  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 3/3] ARM: at91: microchip-ksz9477-evb: migrate to
 sama5d3_barebox_entry()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jul 06, 2023 at 10:32:30AM +0200, Ahmad Fatoum wrote:
> On 06.07.23 10:11, Oleksij Rempel wrote:
> > We have sama5d3_barebox_entry(), so make use of it.
> > 
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> 
> I expected to see a /memory node removed, but I see now that I removed
> them already in commit:
> 2e7e1d2512b0 ("ARM: AT91: sama5d3: always read memory size from controller")
> 
> Given that I missed selecting HAVE_AT91_DDRAMC, this means that booting
> recent barebox without your first patch would lead to an error message during
> boot up that initmem is used as no driver or DT added memory banks.
> System should continue normally though.

Yes, I have this error message. But it work without noticeable issues.

> For boards that already have a memory region in the DT, adding a memory
> region by the driver that is identical should be silently accepted.
> 
> Could you verify this to make sure we don't introduce breakage?
> That would also make patch 1 a candidate for being applied to master.

So far, it seems to work fine.

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


