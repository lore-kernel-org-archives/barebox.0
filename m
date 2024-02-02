Delivery-date: Fri, 02 Feb 2024 16:57:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVvuh-0003eU-12
	for lore@lore.pengutronix.de;
	Fri, 02 Feb 2024 16:57:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVvui-0007mb-1S
	for lore@pengutronix.de; Fri, 02 Feb 2024 16:57:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v+wfLxOz3x2GFLttufRj2by35gGCCh1D2NC2/CcT2Eg=; b=zH6MlghgffWsVa9eq2g8pKWHkX
	lT+yNLxQsVcX7jFkLqb2uXll1G60SAO5hHeb9GWzSXMcBal9a4RFLtXmez2g2AOhCGSqTt67jpMEX
	D/wNiW9j4sHk07/Moxg/+0CFF+IAEOTl2HwQZfOmdo/BKERZDX9IveLTMtOkeY9k7pa7pwrLRP8+2
	lFFdfBVQrt0d4qWppRt14uDgfaov8BOmCJ+ESCmX+jd4Jh5mn823/aoV4Xef4jErCfwmthn+U88XH
	n2uAAdcQZKNRrgj7zkDciKjiHeXG7SXIw8EPFO3eTTZtfWTQCVPJBSwB539UgX+4Mfg2bA/s68mqN
	4Gw9+gSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVvuL-0000000C8Q9-21OB;
	Fri, 02 Feb 2024 15:56:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVvuH-0000000C8Ns-2T6u
	for barebox@lists.infradead.org;
	Fri, 02 Feb 2024 15:56:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rVvuG-0007j6-BF; Fri, 02 Feb 2024 16:56:44 +0100
Message-ID: <de761e81-9832-4668-92d7-ad8aafb96aa7@pengutronix.de>
Date: Fri, 2 Feb 2024 16:56:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240202153113.245488-1-s.hauer@pengutronix.de>
 <20240202153113.245488-6-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240202153113.245488-6-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240202_075645_675596_B8E3E98A 
X-CRM114-Status: GOOD (  13.98  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 5/8] common: add TQ EEPROM support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 02.02.24 16:31, Sascha Hauer wrote:
> Many TQ boards have an EEPROM with useful board information equipped.
> Add support for reading this EEPROM. The code is based on the
> corresponding U-Boot code from the TQ downstream U-Boot.
> 
> Right now not much of this information is actually used, the main
> motivation for porting this code was to detect the DDR type on the
> TQ i.MX93 boards. Distributing and printing the information is left
> for a future excercise.

exercise*.

> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -74,6 +74,7 @@ obj-$(CONFIG_EFI)		+= efi/
>  lwl-$(CONFIG_IMD)		+= imd-barebox.o
>  obj-$(CONFIG_IMD)		+= imd.o
>  obj-y				+= file-list.o
> +obj-pbl-$(CONFIG_TQ_EEPROM)	+= tq_eeprom.o

Please add this to common/boards/tq instead.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



