Delivery-date: Mon, 23 Jan 2023 09:23:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJs6o-002vXc-9T
	for lore@lore.pengutronix.de; Mon, 23 Jan 2023 09:23:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJs6m-0007dU-HW
	for lore@pengutronix.de; Mon, 23 Jan 2023 09:23:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wDw8B+Hx73OGkUaeVMqNB8qKlPoFDa+R4vl/55r3l10=; b=wj8rDTL/LFyhdkkgajvEkRND89
	J49o6x4Iof6h8USqRhhzT/7oqylHv2bATIzbOP+iuuo33ydskrSi2BqRVX36SPn3+McXlZyfdq9os
	rX8Ri49U+5BzWHRip7Oh8SJSkNRFH4t5az1XESXVaEA6NgTfJy0VseVRaUsACQEkIBdi6f7YAL1Ne
	2epWntUVktsD7EXrOZeGi7RPXPpj7jOIOrtsij1Xruq0mBfHozD8rSmOzUnufTiEu/aOo4PFB1PO5
	Ar++YKTLC5UBzeFqBqnsgmj1/Lwx+3uhlpXald1R+u63nMc3h4gvrCQgMm3xUm51hrjiZYYFkJ+PL
	vqzY9ixQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJs5c-00GLNm-TF; Mon, 23 Jan 2023 08:22:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJs5X-00GLMJ-4K
	for barebox@lists.infradead.org; Mon, 23 Jan 2023 08:22:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pJs5V-0007Ml-Qn; Mon, 23 Jan 2023 09:21:57 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pJs5V-0003zE-IK; Mon, 23 Jan 2023 09:21:57 +0100
Date: Mon, 23 Jan 2023 09:21:57 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, ore@pengutronix.de
Message-ID: <20230123082157.GP24755@pengutronix.de>
References: <20230116134501.2006391-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230116134501.2006391-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_002159_221930_37783D3D 
X-CRM114-Status: GOOD (  15.15  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/9] net: dsa: add Realtek (rtl8365mb/rtl8366rb) switch
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 16, 2023 at 02:44:52PM +0100, Ahmad Fatoum wrote:
> This imports the Linux v6.1 state of the driver into barebox. This has
> been tested with the RTL8365MB in (bitbanged) SMI mode connected
> to an i.MX8MM FEC.
> 
> Ahmad Fatoum (9):
>   driver: alias of_match_ptr and DRV_OF_COMPAT
>   gpiolib: implement gpio_direction_input/output
>   net: dsa: rename dsa_ops to dsa_switch_ops
>   net: dsa: factor out dsa_port_alloc helper
>   net: dsa: populate struct dsa_port::index/dev members
>   net: dsa: always call port_pre_enable before port_enable
>   net: dsa: add some helpers to ease porting kernel drivers
>   net: dsa: add struct dsa_switch::priv member for driver use
>   net: dsa: add Realtek (rtl8365mb/rtl8366rb) switch support

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


