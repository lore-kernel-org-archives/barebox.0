Delivery-date: Tue, 21 Mar 2023 17:50:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pefBk-009QEI-OK
	for lore@lore.pengutronix.de; Tue, 21 Mar 2023 17:50:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pefBk-00048C-Is
	for lore@pengutronix.de; Tue, 21 Mar 2023 17:50:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C6+H9XfRnEserKNsSBBwVM3hUIZwzplEdpzERugEQBA=; b=gzQT3+RQq/K3kF8ymNQnVE0QH5
	8/pY0DiF3mnjaNV7qUfFKZsRf09an8MQIFUoiz03OnXJQqe4RDhfqZXL4n0+J9F8PCOu1WRdV/LWL
	vO7e0CT42DKcjs4yZJ881N9gBF4zqfTwPp4QHue2hBvOtBJoZkrUuhJpIurndNeJei+zHA+kUn5q7
	h237YAzsA7ZrlIyxfF2xTRstahFGzh4x6FMadE4nP2XZXzG/A5OgnuLnPEW0QgYZztIK+UjK0MnlZ
	KJ8pXqUL7Jsoi2p1If514DtEce+EUNV+1aEQudFp3HYzkSoGGD4VkHu/ITprFNYEU8CKWPbanEKFY
	/BZjMtFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pefAM-00D7mH-1E;
	Tue, 21 Mar 2023 16:48:54 +0000
Received: from mailrelay6-1.pub.mailoutpod2-cph3.one.com ([2a02:2350:5:405::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pefAH-00D7k6-1O
	for barebox@lists.infradead.org;
	Tue, 21 Mar 2023 16:48:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:to:from:
	 date:from;
	bh=C6+H9XfRnEserKNsSBBwVM3hUIZwzplEdpzERugEQBA=;
	b=aZD4OHROti+TABPjfudQQjz0eSF5eEmLebXejFe/BHaVqLTi05XP7M6qioXZF5PjycsEsI+SJ44JN
	 jBBza8RufspBxIObnj5fk5bU+HqgwwLm4AtMTKcH91UnUOPDcoh7f0rFdgeWhlp32SuZfsO4hgfV0O
	 tnK2tUTa6PbtfAuV4+FcBblV3ycLlQXiV/HuSVXmPvEei7A2Cj8yLKy4qcQAAQRCjrEezr+y0uIS0I
	 HLEN0qeyIL/0wre9vMKZl1RMvJcCI3ltyOD0xD8x3lIAssODikw3lIiqq58y93UHjAEctJTMUBsET8
	 hBmi3JF/SJrqWz9hxgVEQvfG+ga40Bg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:to:from:
	 date:from;
	bh=C6+H9XfRnEserKNsSBBwVM3hUIZwzplEdpzERugEQBA=;
	b=YkpcO407kff1oTglAPIRDlCrkNd+/lxnwabMU1YgJiMUq8cK1u77N99FphB8VJ8SzXoH1Juvhp4oM
	 YpSXa8bCA==
X-HalOne-ID: 3a35cf7b-c808-11ed-83dd-cde5ad41a1dd
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay6 (Halon) with ESMTPSA
	id 3a35cf7b-c808-11ed-83dd-cde5ad41a1dd;
	Tue, 21 Mar 2023 16:48:39 +0000 (UTC)
Date: Tue, 21 Mar 2023 17:48:38 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: barebox@lists.infradead.org
Message-ID: <ZBnf5oobkyenS+VT@ravnborg.org>
References: <20230319154909.24047-1-wsa@kernel.org>
 <ZBdZxskg+JPzUY0t@ravnborg.org>
 <ZBd+Z+qn9rjuvp6S@sai.fritz.box>
 <20230321085848.GI7446@pengutronix.de>
 <9bece774-8296-4880-89dc-a33dfcd512f7@thorsis.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9bece774-8296-4880-89dc-a33dfcd512f7@thorsis.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_094850_863852_24C9BB10 
X-CRM114-Status: GOOD (  36.31  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] mtd: nand: atmel: legacy: fix boot on USB-A9G20
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Alexander.

On Tue, Mar 21, 2023 at 10:44:25AM +0100, Alexander Dahl wrote:
> Hello Sascha,
> 
> Am Tue, Mar 21, 2023 at 09:58:48AM +0100 schrieb Sascha Hauer:
> > Hi Wolfram,
> > 
> > Nice to hear from you here ;)
> > 
> > On Sun, Mar 19, 2023 at 10:28:07PM +0100, Wolfram Sang wrote:
> > > Hi Sam,
> > > 
> > > > It is only a few weeks ago I argued that there was no users of the older
> > > > at91sam* boards, and then you prove me wrong here.
> > > 
> > > At your service ;)
> > > 
> > > > I will try to remember that you may be able to test should someone
> > > > decide to move the barebox support for qil_a9g20 to DT and add PBL
> > > > support in the process.
> > > 
> > > I am still new to at91 and barebox, but AFAICS the PBL support is only
> > > for MCI currently?
> > 
> > As of 4e410f3e68280 PBL is always used on AT91.
> > 
> > I have no idea how the SDRAM setup is done on the USB-A9G20. There seems
> > to be SDRAM setup code for the USB-A9263, but not for the USB-A9G20. Is
> > there some AT91Bootstrap required?
> 
> I can not speak for this particular board, but for others with the
> same SoC (AT91SAM9G20).  The vendor approach is to setup the SDRAM
> (and maybe more) in at91bootstrap, however those old SoCs are not
> supported in recent version 4.x of that anymore, 3.x should work, I
> never tried that for sam9g20 (we still use 1.x for those SoCs).
> at91bootstrap then usually loads U-Boot from flash to SDRAM and starts
> U-Boot.
> 
> You can do the same init in U-Boot SPL as well without the "real"
> at91bootstrap, I think I saw that for other boards with similar SoCs.
> And from what I saw here, barebox has the concept of multiple stages
> as well, right?  So SDRAM must be initialized there in the very first
> stage after ROM code running from (tiny) internal SRAM, equivalent to
> what at91bootstrap does, before relocating to SDRAM.  There's no magic
> thing the ROM code can do for you on that platform.

When I added support to skov-arm9cpu to use barebox as replacement for
at91bootstrap the sdram init looked like this [1]:

static void sam9263_sdramc_init(unsigned int mck)
{
+       const struct at91sam9_sdramc_config config =
+       {
+               .sdramc = IOMEM(AT91SAM9263_BASE_SDRAMC0),
+               .mr = 0,
+               .tr = (mck * 7) / 1000000, // TODO 140 versus 0x13c (316)?
+               .cr = AT91_SDRAMC_NC_10 | AT91_SDRAMC_NR_13 | AT91_SDRAMC_CAS_2
+                     | AT91_SDRAMC_NB_4 | AT91_SDRAMC_DBW_32
+                     | AT91_SDRAMC_TWR_2 | AT91_SDRAMC_TRC_7
+                     | AT91_SDRAMC_TRP_2 | AT91_SDRAMC_TRCD_2
+                     | AT91_SDRAMC_TRAS_5 | AT91_SDRAMC_TXSR_8,
+               .lpr = 0,
+               .mdr = AT91_SDRAMC_MD_SDRAM,
+       };
+
+       /* Define PDC[31:16] as DATA[31:16] */
+       at91_mux_gpio_disable(IOMEM(AT91SAM9263_BASE_PIOD), 0xffff0000);
+       /* No pull-up for D[31:16] */
+       at91_mux_set_pullup(IOMEM(AT91SAM9263_BASE_PIOD), 0xffff0000, true);
+       /* PD16 to PD31 are pheripheral A */
+       at91_mux_set_A_periph(IOMEM(AT91SAM9263_BASE_PIOD), 0xffff0000);
}

On my too long todo list is to complete this work and upstream this for
both this and the at91sam9263ek board.

Anyway - DT support is the first step. Replacing at91bootstrap can
always come later.

[1] https://lore.barebox.org/barebox/20220628203849.2785611-1-sam@ravnborg.org/

	Sam


