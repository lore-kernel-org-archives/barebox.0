Delivery-date: Sun, 19 Mar 2023 19:53:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pdy9q-006pCs-FW
	for lore@lore.pengutronix.de; Sun, 19 Mar 2023 19:53:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pdy9q-0003vd-8J
	for lore@pengutronix.de; Sun, 19 Mar 2023 19:53:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rHDlNyAprDVyXZoR7pSto9zJPnvGWmBRUN5r8FFbm8w=; b=aurZ2tGJ18EgeiJeFoQYLdsleE
	BXbrVsuIsIlNZCA5eoSg9+I2uUjW8ThuXXKsEvMBZI0kRU6CtDIbFmqlkr78QNhWyEAEwKQAs5AOb
	9+cKIT7xIXfY4r8rv3bj+MQ/UkMquev5c5hoJA0SEt+owFMZsobXIzYGGxcOkb6bsGfCcg0G1FmCX
	uoZ49/3DWywyO24Ae5TVvNWUmXs3JGZI4KuZ4PgXOIWOBSa9hkq7+XlIPdZmEnEaHY+xN0ACZRqis
	AqBL65KOq+Fsq+7yEHKFvMj1Y2fSfOwiquDBEtj6IoY3wJWhBDm2brCVBO84zyzp6WQOhGJzGPMp6
	TbAhCyIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pdy8P-007COd-2o;
	Sun, 19 Mar 2023 18:52:01 +0000
Received: from mailrelay3-1.pub.mailoutpod2-cph3.one.com ([2a02:2350:5:402::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pdy8M-007CNm-0E
	for barebox@lists.infradead.org;
	Sun, 19 Mar 2023 18:51:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=rHDlNyAprDVyXZoR7pSto9zJPnvGWmBRUN5r8FFbm8w=;
	b=s10ySdhL1oTkgm/0Ag6WElPZwEZlGs5CxRwhGqIKrjvGW2ZYCUiHlDP6Oeb03n2g1ULNGiPkV3pr3
	 c3tWngvx7wKRiAuS9zLhmRegqGrwcPyx+sobPEnjBeSck1W2GdL4WFfh1RVlCSAqjA1UhPM7klP6tM
	 HF6vONXutV8tsbYECfFyLnlQVPB+oVFU2jQ3aQG9UTKebUbnLgGo0cyZPLlyRBqXfM/Pr//erGoqs8
	 oBNUhQ29/nkN00iREw5T52ZBfdFhJyH9bKEyxS43gmIrOBrOuv0YLUWd6QOS+lsZZmoNl339wyYwgP
	 nFUnRRnA1R90CY5a75MN4HSxd2ckGyw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=rHDlNyAprDVyXZoR7pSto9zJPnvGWmBRUN5r8FFbm8w=;
	b=K//2ZOuRtpOyXJyrXsHpjhlYXaldxAeg1lMuMFl5M4dYZJz8/TPrqR+et2pENuaBLISJsDIrtfWnM
	 XhmAnwWAQ==
X-HalOne-ID: 1b5e32aa-c687-11ed-83de-ede074c87fad
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay3 (Halon) with ESMTPSA
	id 1b5e32aa-c687-11ed-83de-ede074c87fad;
	Sun, 19 Mar 2023 18:51:51 +0000 (UTC)
Date: Sun, 19 Mar 2023 19:51:50 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Wolfram Sang <wsa@kernel.org>
Cc: barebox@lists.infradead.org
Message-ID: <ZBdZxskg+JPzUY0t@ravnborg.org>
References: <20230319154909.24047-1-wsa@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230319154909.24047-1-wsa@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230319_115158_282396_1845DF7A 
X-CRM114-Status: GOOD (  12.20  )
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

Hi Wolfram.

On Sun, Mar 19, 2023 at 04:49:06PM +0100, Wolfram Sang wrote:
> While trying to unbrick my Calao USB-A9G20, barebox couldn't read the
> NAND BB tables unlike the binary-only barebox from 2013. The first two
> patches fix that. The third one is a cleanup.

It is only a few weeks ago I argued that there was no users of the older
at91sam* boards, and then you prove me wrong here.

I will try to remember that you may be able to test should someone
decide to move the barebox support for qil_a9g20 to DT and add PBL
support in the process.

	Sam


