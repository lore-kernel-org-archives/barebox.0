Delivery-date: Tue, 31 Aug 2021 11:44:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mL0Jq-00023j-2Q
	for lore@lore.pengutronix.de; Tue, 31 Aug 2021 11:44:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mL0Jm-0000vP-3J
	for lore@pengutronix.de; Tue, 31 Aug 2021 11:44:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PnF274Gp9o9Gm5VZ5JWgERpe39pcs0UWx9+i+gNa70g=; b=LCQUsN2qBSHkJ6
	+L8e4EDRK9CDIH8M/YrMSvgSFIZgeyZ1pgSGNUvHoGXhLkplCZ56vNjEP8bOcNi8r34zOqhRstQF0
	I/UrvmS0nIdxO9UK2VQ/qYbbjFFoJQ4/+Z0A1KvbIpCC8OK2ahXMdZwR6cvgnar25KBupDX7HRnPG
	nyLniwAnB33EJ7vQAedyZjKeAnL+NW3n2Txsmhh6Fbao311nKMYbOgIdqC6SKx4d9S8jP8mVrp6eB
	G6cEAe5rLEO37bNua/UtwuKYw/skpdJgyeX8oxMY8uL7Ussy7NZlrdu8mwHhVifnaGKbAOO/S+TBr
	KqKQMEB6wXY53aCePKhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mL0Hm-001xN0-EL; Tue, 31 Aug 2021 09:42:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mL0Hh-001xMe-Jd
 for barebox@lists.infradead.org; Tue, 31 Aug 2021 09:42:26 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <rcz@pengutronix.de>)
 id 1mL0Hc-0000pu-A8; Tue, 31 Aug 2021 11:42:20 +0200
Message-ID: <c4653e6641f43249c0a511b211e0ea08be56afb3.camel@pengutronix.de>
From: Rouven Czerwinski <rcz@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: lst@pengutronix.de, ukl@pengutronix.de
Date: Tue, 31 Aug 2021 11:42:19 +0200
In-Reply-To: <20210830115156.21907-1-a.fatoum@pengutronix.de>
References: <20210830115156.21907-1-a.fatoum@pengutronix.de>
User-Agent: Evolution 3.40.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210831_024225_700664_7CE27F19 
X-CRM114-Status: GOOD (  13.93  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/3] ARM: i.MX8MP: bbu: fix wrong flash header offset
 for eMMC boot partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On Mon, 2021-08-30 at 13:51 +0200, Ahmad Fatoum wrote:
> According to the reference manual of the i.MX8MP, the bootrom expects
> the bootloader to sit directly at the start of the eMMC boot partition.
> 
> The 32K offset is only valid for eMMC user partitions and SD.
> Tell barebox_update about this, so it can strip away the first 32K
> when writing to an eMMC boot partition.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - fix wrong use of flash header offset: This refers to offset in file,
>     but we want to change offset on disk. There is a knob for that
>     (IMX_BBU_FLAG_PARTITION_STARTS_AT_HEADER), so use that instead
> 
> Tested on i.MX8MN.

Whole series is,

Tested-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>

on i.MX8MP-EVK.

Best Regards,
Rouven


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

