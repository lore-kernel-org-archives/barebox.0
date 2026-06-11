Delivery-date: Thu, 11 Jun 2026 22:37:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXm9h-004p27-1O
	for lore@lore.pengutronix.de;
	Thu, 11 Jun 2026 22:37:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXm9g-0005Qz-GU
	for lore@pengutronix.de; Thu, 11 Jun 2026 22:37:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QmVuOXUBKBYDzufy1fuCFu5TTUpIAurI7UTZICawunQ=; b=wOrwKENqOPe/7Gml0JpnlwLo5+
	JNMS2D1LT9fizcFaJI7ePDqabKRTcYfQYpCUUAyMHyKFuzRAeFZc4P/ptobZ6EIR1Xb4Xw1pw1awh
	9aXz98IT4RUBRoKU81CloX6qRo4cA1MHQdn6JD79TgxTjofy0MB5roQ+VAWKYh9CJwZjHLk/Edb3g
	f1I2YWV//0ghcnRJHSmdWt65t58zQGs8tZum8n8wBwgEUmi+CJbVCYoUE8VniAE92YmOzD9ZajYoA
	MaZWrF9H1s3Yi2dxFozafcikZ8N55PUNTTQ/mvADfckLXme3zdkEL9MgR1rGumgJ8ImqnjLuEBaxB
	2+jvbnCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXm8F-0000000A3V2-0vKB;
	Thu, 11 Jun 2026 20:36:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXm8D-0000000A3Uu-2Ndu
	for barebox@bombadil.infradead.org;
	Thu, 11 Jun 2026 20:36:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=QmVuOXUBKBYDzufy1fuCFu5TTUpIAurI7UTZICawunQ=; b=aheQ07exSE7BJkPmdr/kvxjseI
	zVFVDyXvuHHTRtws11mwZV1h76TYyMEn+Ghc8GZ3PQSOt+kXVKGmSFad4kYNFdeiFopneb2tw0wQs
	n79Ex7fcnuefbbrxa2mdeeRAUf5fV5tZpNrFL6gkxxSQ5HtWRi2CGNTlHZgXtk+ZYLH8hnUg8hZvs
	u3WConkiJ+VrAT6LOgxqHH8SAfVS/fxUOxHe3i4xrsMuvaRnVwZcM2XCBq5VxEi4RNc/ftRyuRNkV
	TQltkmMsLHeeEYhR2Mnrcw3b0h0hE2uSGAoHXvqTNPIfrCXzBzfakyk+agTs8dGqI4qUSEx8zWFam
	i3uyjAxQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wXm88-00000005fCe-40vA
	for barebox@lists.infradead.org;
	Thu, 11 Jun 2026 20:36:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wXm88-00055T-G9; Thu, 11 Jun 2026 22:36:00 +0200
Message-ID: <c7825ced-8809-443d-94df-7b74ce1f8419@pengutronix.de>
Date: Thu, 11 Jun 2026 22:35:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andrei Lalaev <andrey.lalaev@gmail.com>, barebox@lists.infradead.org
References: <489b74af-bb47-4c1c-a969-094b9ff3e9ba@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <489b74af-bb47-4c1c-a969-094b9ff3e9ba@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_213601_753964_174999AA 
X-CRM114-Status: GOOD (  13.32  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: iMX ddrphy_utils difference with U-boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Andrei,

On 6/8/26 16:24, Andrei Lalaev wrote:
> Hi,
> 
> I am moving an iMX8MP module from vendor U-Boot 2024.04 to Barebox 2025.02
> and found a strange difference in the DDR training code:
> 
>   vim drivers/ddr/imx/ddrphy_utils.c +94
> 
> And the corresponding line in U-Boot:
> 
>   vim drivers/ddr/imx/phy/ddrphy_utils.c +101
> 
> Is there any chance that somebody knows/remembers why "return -1" was replaced with "hang()"?



> 
> I couldn't find any explanation in the commits/mailing lists.
> 
> Thanks a lot!
> 
> --
> Best regards,
> Andrei Lalaev
> 
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


