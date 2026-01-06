Delivery-date: Tue, 06 Jan 2026 10:53:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd3kp-001qh8-0F
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 10:53:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd3ko-0004uR-8d
	for lore@pengutronix.de; Tue, 06 Jan 2026 10:53:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qCiPpWu/ea1zBxIf74qSkSAwfkI7vYB5iR5avbFt67w=; b=SSkd8MumJvPll5SziYuH9CXe0C
	ECOl6bBrzEIf7WHNzxsc9U/yVuG+QOJfIrUfLqt0aNiU4i9UnvACnfWlrr71fjB3KlBuXh71zjaJI
	2Mn4Ma386LkKPJP5RORKBMlbKax0l5aQIcJ0NkEKqdjF4Kbfe7ZYXE74DDypltB5ZBwNtnm7wds4c
	J5DBJA8/+C0AwllY5NSFj+lCURgGL1rybD2igiwJ4BFhXSL5Sd5yxAqBXVGXA+q1xAZBe97+BMKds
	vS2xOm46ElEhcohx9mVw1d5RFEof2wV3cNoyBGp+qflxcezqUtaJcD00CGjJ2l5EEDbMxgQFKBwWI
	LpL2UAYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd3kH-0000000CkCa-3G9n;
	Tue, 06 Jan 2026 09:52:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd3kF-0000000CkC6-1J9I
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 09:52:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vd3kD-0004nf-Mc; Tue, 06 Jan 2026 10:52:53 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vd3kD-009KDf-1S;
	Tue, 06 Jan 2026 10:52:53 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vd3kD-00EHs1-13;
	Tue, 06 Jan 2026 10:52:53 +0100
Date: Tue, 6 Jan 2026 10:52:53 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: barebox@lists.infradead.org
Message-ID: <20260106095253.souvmkzvzufrkecv@pengutronix.de>
References: <aVzVyOKQ-mc4LLBd@hephaistos>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aVzVyOKQ-mc4LLBd@hephaistos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_015255_348214_F226E085 
X-CRM114-Status: GOOD (  18.60  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: Yocto migration meta-barebox -> walnascar
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Konstantin,

On 26-01-06, Konstantin Kletschke wrote:
> Dear barebox people,
> Happy New Year everybody :-)

Thanks, happy new year to you too :)

> I used up until scarthgap https://github.com/menschel-d/meta-barebox
> 
> In our meta layer we have config in distro conf like this:
> 
> ABREBOX_CONFIG:beaglebone-yocto = "omap_defconfig"
> BAREBOX_CONFIG:pn-barebox-pbl:beaglebone-yocto = "am335x_mlo_defconfig"
> BAREBOX_IMAGE_SRC:beaglebone-yocto = "images/barebox-am33xx-beaglebone.img"
> BAREBOX_IMAGE_SRC:pn-barebox-pbl:beaglebone-yocto = "images/barebox-am33xx-beaglebone-mlo.img"
> RDEPENDS:barebox:beaglebone-yocto += "barebox-pbl"
> COMPATIBLE_MACHINE:pn-barebox:beaglebone-yocto = "beaglebone-yocto"
> COMPATIBLE_MACHINE:pn-barebox-pbl:beaglebone-yocto = "beaglebone-yocto"
> PREFERRED_PROVIDER_virtual/bootloader = "barebox"
> 
> And a append recipe mainly with patches creating our custom
> configuration.
> 
> Now I learned, barebox went into openembedded-core, this is great news!
> 
> I ditched the meta-barebox, tried my best, needed to remove alle configs
> regarding "-pbl" and compiled:
> ERROR: Nothing RPROVIDES 'barebox-pbl'
>  (but /home/konsti/Melitta/scarthgap/meta/recipes-bsp/barebox/barebox.bb
>  RDEPENDS on or otherwise requires it)

Which barebox version do you use?

> Now I get several ~580kB img files in the deployment images directory,
> "ours" seems to be barebox-am33xx-beaglebone.img. File size is plausible
> for the ex barebox.bin and strings suggest our insidem2m stuff to
> boot/tftp/nfs landed up in it.
> 
> Where is the MLO part? Is barebox-am33xx-beaglebone.img the 1:1
> barebox.bin equivalent?

Ahmad added the support for a single barebox binary:
 - https://lore.barebox.org/barebox/20250422052635.3423961-1-a.fatoum@pengutronix.de/

IIRC the purpose of the patchset was exactly to fulfill an easier Yocto
integration since the beaglebone is one of the oe-core real test hw.

> We are used to create a partition table, first partition is vfat type
> 0x0c, MLO and barebox.bin are put there, works.

Since the single image approach targets only the SD/MMC boot, the
standalone MLO image should be still possible.

Regards,
  Marco

> 
> Kind Regards
> Konstantin Kletschke
> 
> 
> -- 
> INSIDE M2M GmbH
> Konstantin Kletschke
> Berenbosteler Straße 76 B
> 30823 Garbsen
> 
> Telefon: +49 (0) 5137 90950136
> Mobil: +49 (0) 151 15256238
> Fax: +49 (0) 5137 9095010
> 
> konstantin.kletschke@inside-m2m.de
> http://www.inside-m2m.de 
> 
> Geschäftsführung: Michael Emmert, Derek Uhlig
> HRB: 111204, AG Hannover
> 
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


