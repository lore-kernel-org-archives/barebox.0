Delivery-date: Thu, 15 Dec 2022 10:56:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5kyA-004Y1X-QF
	for lore@lore.pengutronix.de; Thu, 15 Dec 2022 10:56:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5kyA-0004oW-0i
	for lore@pengutronix.de; Thu, 15 Dec 2022 10:56:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:To:Subject:From:Date:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pnXS4YiFc9eLeDdDFzZze4V0OLVBwfC36tBHoJlrGJ4=; b=r8voO5vjQA4bOmCuBjxOK9kM7J
	tuN9OgaU8wK7MnfHxqSPonDpaqldhzX4YUZS5WMVfmP0i6qDbwTO4iq3jsfF14Td2ArLPD7MlfY2G
	AamzUa3TgPH3DJ83ifNbWVhugEdPqnlqdZPW3vIynhTyzqn96bVmnjmwQv1Kge21pfezG+Spe1JSS
	yGHIKEH54b3fWQxT8SH8SlH6/IdzqkXJKXvwsk01R9hMS6h6aBU3ukSFqkDEHY/0cL05iqrufFWHb
	6+fiuHRzQsN0rU5WT5CddpddiEmjCv6RWnwiI+xBa1guR+wwLhQDRGZpJiUik+V48XEPhjqhZ3nAl
	oKPyuHCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5kwl-008aD8-DO; Thu, 15 Dec 2022 09:54:35 +0000
Received: from mail.kbs-gmbh.de ([62.159.245.220])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5kwg-008aAV-Da
	for barebox@lists.infradead.org; Thu, 15 Dec 2022 09:54:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=kbs-gmbh.de; s=MDaemon; t=1671098064; x=1671702864;
	i=m.feser@kbs-gmbh.de; q=dns/txt; h=Date:From:Subject:To:
	Message-ID:Organization:MIME-Version:Content-Type:
	Content-Transfer-Encoding; bh=pnXS4YiFc9eLeDdDFzZze4V0OLVBwfC36t
	BHoJlrGJ4=; b=lpQN+M9QZYlffqzUZBDYb18dHiOlCtyGRWItjtcbVsJwEtR0G0
	VJrM6Nu07ywc+1WlLNP+/0P46lNiywb+Ta7HyU82gBdYVTcizD+f6zWBOBbBTKs8
	4C+3P5uao3yQ7wzkjcCa4y9TT9Z/UOUVgCnAxEqoiwYAtwvww9ylHKNNgLrHKgZ3
	2B5/pgfAg5lPUnryBVqJizGBfOM51nm0VvjlrjG5KJAQiceNn+YIDIkIo1pIZA9v
	YiXvm4sChRR0OfOGppog6IbA0wr9hw6PXkkGt5n9NcqytWVtzXN3wX3NyUxwyY4V
	AvJNG/ODa4+nN2trqw9I1X4ftnC3KRBOk5Ew==
Received: from FESER.fr.kbs-gmbh.de by kbs-gmbh.de (62.159.245.220) (MDaemon PRO v22.0.2) 
	with ESMTPSA id md5001002173603.msg; Thu, 15 Dec 2022 10:54:23 +0100
X-MDArrival-Date: Thu, 15 Dec 2022 10:54:23 +0100
X-Authenticated-Sender: m.feser@kbs-gmbh.de
X-Return-Path: prvs=1348bb1347=m.feser@kbs-gmbh.de
X-Envelope-From: m.feser@kbs-gmbh.de
X-MDaemon-Deliver-To: barebox@lists.infradead.org
Date: Thu, 15 Dec 2022 10:54:00 +0100
From: Matthias Feser <m.feser@kbs-gmbh.de>
To: barebox@lists.infradead.org
Message-ID: <3454916a.1d9106b.748ad6.4d5c@kbs-gmbh.de>
X-Priority: 3
Organization: KBS GmbH
X-Mailer: MDaemon Connector 7.0.7
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
X-MDCFSigsAdded: kbs-gmbh.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_015430_641172_C89933B7 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: AM335x DDR3 initialization / timing violation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,=20

we are using the AM3352 processor in combination with a single 512MB Micron=
 DDR3 chip running the barebox bootloader in our products for several years=
 now. A minor amount of boards (around 5 of 2000) fail the production test,=
 because they do not boot properly after warm reset. In such cases the MLO =
is loaded, initializes the EMIF and then crashes after a certain amount of =
accesses to the DDR3. After a cold reset all of these boards run stable and=
 produce no errors when running a deep RAM test.=20

I am currently in discussion with a TI employee about this topic. He told m=
e that the bootloader should detect a warm reset and EMIF should not be rei=
nitialized, because DDR3 is automatically put into self-refresh on warm res=
et. So far he hasn=92t told me what the desired init sequence actually is. =
>From what I have observed while debugging, at least the EMIF clock has to b=
e enabled and CKE brought high. Unfortunately the TRM does not give guidanc=
e about this.

Our board initialization code is very similar to other AM335x based boards =
like beaglebone (400MHz DDR clock), which effectively always initializes th=
e EMIF in the same way by calling am335x_sdram_init(), no matter if cold or=
 warm reset has brought up the processor. From investigating the signals DD=
R_RESET and DDR_CKE with an oscilloscope, I can tell that even with this sa=
me init code the hardware behaves differently in both reset cases.

On cold reset both DDR_RESET and DDR_CKE remain low until initialization, a=
nd there is a delay of roughly 436us between the rising edges of DDR_RESET =
and DDR_CKE. After warm reset DDR_RESET is high and DDR_CKE is low. EMIF in=
itialization results in a short pulse on DDR_RESET with 5us low phase and t=
here is only about 38us delay between the rising edges of DDR_RESET and DDR=
_CKE.
Both cases violate the DDR3 specification, according to which the delay bet=
ween the rising edges of DDR_RESET and DDR_CKE has to be 500us min.

In am33xx_config_sdram() a value of 0x2800 is written to EMIF4_SDRAM_REF_CT=
RL. TI recommends a value of 0x3100 during initialization, which is used in=
 u-boot EMIF initialization code and does not violate the DDR3 specificatio=
n. I think barebox EMIF init code requires some revision.

I also wonder why EMIF4_SDRAM_CONFIG, REF_CTRL and REF_CTRL_SHADOW are acce=
ssed twice when regs->zq_config is not zero (see code snippet below taken f=
rom barebox 2022.12.0). Is there any reason behind this?

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (regs->zq_config) {
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 /*
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 * A value of 0x2800 for the REF CTRL will give us
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 * about 570us for a delay, which will be long enough
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 * to configure things.
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 */
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 writel(0x2800, emif4 + EMIF4_SDRAM_REF_CTRL);
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 writel(regs->zq_config, emif4 + EMIF4_ZQ_CONFIG);
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 writel(regs->sdram_config, CM_EMIF_SDRAM_CONFIG);
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 writel(regs->sdram_config, emif4 + EMIF4_SDRAM_CONFIG);
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 writel(regs->sdram_ref_ctrl, emif4 + EMIF4_SDRAM_REF_CTRL);
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 writel(regs->sdram_ref_ctrl, emif4 + EMIF4_SDRAM_REF_CTRL_S=
HADOW);
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 writel(regs->sdram_ref_ctrl, =
emif4 + EMIF4_SDRAM_REF_CTRL);
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 writel(regs->sdram_ref_ctrl, =
emif4 + EMIF4_SDRAM_REF_CTRL_SHADOW);
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 writel(regs->sdram_config, em=
if4 + EMIF4_SDRAM_CONFIG);


As soon as I get an update from TI about the proper EMIF initialization aft=
er warm reset, I will let you know.

Best regards


Information gem=E4=DF $13 DSGVO f=FCr Kunden, Partner und Lieferanten: Wir =
verarbeiten Ihre Daten gem=E4=DF $6 Abs.1 a, b, c und f DSGVO. Weitere Info=
rmationen finden Sie in unserer Datenschutzerkl=E4rung unter www.kbs-gmbh.d=
e\Datenschutz




