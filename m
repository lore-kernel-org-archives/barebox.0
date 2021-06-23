Delivery-date: Wed, 23 Jun 2021 08:29:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvwNy-0006Vl-Hy
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 08:29:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvwNx-0006dh-Jm
	for lore@pengutronix.de; Wed, 23 Jun 2021 08:29:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m7eRmx5XWYPFKF/LWGH3f+2N40JvWo39fYde2jTjgCg=; b=GF78jfMiQPnmyS
	7BFb6HpJNOkPyRMyeo1lo3rPrV7jaQTDC/TLDN51EtyHxodju5LNnBirXvz9MIbLAtbsQ6acZ33xT
	O/fhju/oJxdhraKIMKaPzANkAALQpW/CGUEU4C6eFwZTbOH/rOX3KE7s0cmWP9ItxWgnCAn4cvUsT
	Gz0T2zhagjWk0M1yhEywLf8fZUX9M7KAVSIgHQ3g0bnV7S67TTmTDSNtt8fZ5IV9i4leZIcM2sQPU
	5F9FlRAjdJG8LUfkm9ZwurBUtpr90x58nObtNH/imoP+mkc86fKnG66nadmQotaCGWu5T1AZ9fNUh
	grxR4YwE9AYoNgS44G8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvwMo-009ZEK-0v; Wed, 23 Jun 2021 06:28:06 +0000
Received: from mail.thorsis.com ([92.198.35.195])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvwMi-009ZDA-MV
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 06:28:02 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.thorsis.com (Postfix) with ESMTP id 5EBDD10B2
 for <barebox@lists.infradead.org>; Wed, 23 Jun 2021 08:27:58 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mail.thorsis.com
Received: from mail.thorsis.com ([127.0.0.1])
 by localhost (mail.thorsis.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w2hyMkFRHGjh for <barebox@lists.infradead.org>;
 Wed, 23 Jun 2021 08:27:58 +0200 (CEST)
Received: by mail.thorsis.com (Postfix, from userid 109)
 id 3B04E4E; Wed, 23 Jun 2021 08:27:58 +0200 (CEST)
Date: Wed, 23 Jun 2021 08:27:50 +0200
From: Alexander Dahl <ada@thorsis.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <YNLUZjlRwdpzGXJj@ada.ifak-system.com>
Mail-Followup-To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 barebox@lists.infradead.org
References: <20210622080811.28335-1-a.fatoum@pengutronix.de>
 <YNGgvKY3xNdMGPey@ada.ifak-system.com>
 <42009e22-baf5-6b93-88f7-b62eaf4ae604@pengutronix.de>
Content-Disposition: inline
In-Reply-To: <42009e22-baf5-6b93-88f7-b62eaf4ae604@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_232800_943148_184B5B93 
X-CRM114-Status: GOOD (  26.00  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: at91: sama5d27_som1_ek: populate MAC address from
 EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

Am Tue, Jun 22, 2021 at 11:07:17AM +0200 schrieb Ahmad Fatoum:
> Hi,
> 
> On 22.06.21 10:35, Alexander Dahl wrote:
> > I just had a short look into u-boot for that board, there's the i2c
> > eeprom set in dts only, and dts is still the old u-boot way, not dts
> > from kernel plus fixups in a separate file. The mac is set in
> > board/atmel/sama5d27_som1_ek/sama5d27_som1_ek.c like this:
> > 
> >  87 #define MAC24AA_MAC_OFFSET      0xfa
> >  88
> >  89 #ifdef CONFIG_MISC_INIT_R
> >  90 int misc_init_r(void)
> >  91 {
> >  92 #ifdef CONFIG_I2C_EEPROM
> >  93         at91_set_ethaddr(MAC24AA_MAC_OFFSET);
> >  94 #endif
> >  95         return 0;
> >  96 }
> >  97 #endif
> > 
> > What would be the right way for kernel, u-boot, and barebox? Have i2c
> > eeprom defined in dts and an nvmem cell on top like you proposed for
> > barebox now?
> 
> Many Linux network drivers already call of_get_mac_address and thus would
> read out a NVMEM cell if available. There aren't too many device trees
> making use of it, but that seems the preferred way going forward.
> (MAC addressed fixed up by bootloader is higher priority though).
> 
> In general, I think Linux should not rely more than necessary on firmware.
> 
> > Not sure if u-boot can do that (already)?
> 
> No idea. grepping "mac-address" shows no nvmem related C code though.

FTR: grepping for "nvmem" in u-boot master matches in dts files and
binding docs only. There seems to be currently no code in u-boot
interpreting those dts nodes at all, no nvmem drivers.

> > But it would
> > still work if only Linux and barebox did it that way, right?
> 
> So far, either board code set it, similar to your snippet above:
> eth_register_ethaddr(if_index, mac_addr);
> 
> Or NVMEM drivers had a barebox,provide-mac-address = <&phandle_to_netdev ...>
> property and they called eth_register_ethaddr.
> 
> The NVMEM binding is the upstream way, so after a device tree sync, even existing
> boards may find themselves with the correct address instead of randomization without
> having to do anything (nvmem cells doesn't override other methods, so no brekage).

Makes sense.

Greets
Alex


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

