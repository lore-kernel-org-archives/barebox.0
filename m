Delivery-date: Wed, 08 Jan 2025 16:48:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVYHr-000nhZ-1t
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 16:48:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVYHr-0001NV-Fu
	for lore@pengutronix.de; Wed, 08 Jan 2025 16:48:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ONEL3JNIyPqc4L1oD5Ez6NY+4dYeN+wp4nJQG0AF4Wc=; b=NyxJXx6egSG8LiyoWqsFPn9KFM
	jNYwUvasGv/+r18zIVOZ9TarnzbBfd4B4yBqVDScNkVfoEGK1ARsJHn2Q8Kx6LB0DegcOMf80+R2P
	s1CwLf0dMD0WkGpghUuooLLKtFVUU8nxSMZFFD0T/41axgzgmG49GI4u0DqE0S5xQDmfWuwziOn8l
	YHanW0Wfluh1IaEP3t7nXkVgHEakLNaicARlPFmgtG1B9F180DUL/2pyv9THciS4SJv/nZe9+HF+J
	n9VsUBCwi96KQ+VGBliSrWU1DUGRQlHYFXAOyN9JzQv5hqvZkDymmjn1PHK+gyjpcMG3WaSlGfrvx
	R9fvnkcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVYHS-000000091v6-3QGH;
	Wed, 08 Jan 2025 15:47:38 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVYGn-000000091iE-3R3E
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 15:46:59 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id EADD2E74071; Wed,  8 Jan 2025 16:46:23 +0100 (CET)
Received: from [192.168.178.25] (a89-182-99-197.net-htp.de [89.182.99.197])
	by lynxeye.de (Postfix) with ESMTPSA id DA3E8E74067;
	Wed,  8 Jan 2025 16:46:22 +0100 (CET)
Message-ID: <9c00ffd1332ba38dffc26b0b8967f8327d72e4a0.camel@lynxeye.de>
From: Lucas Stach <dev@lynxeye.de>
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>, Sascha Hauer
	 <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Wed, 08 Jan 2025 16:46:22 +0100
In-Reply-To: <Z36WZYxab1bAEzFG@hephaistos>
References: <Z31B5rxOomVzKR_1@hephaistos> <Z36MZJtzptPAdmsI@pengutronix.de>
	 <Z36WZYxab1bAEzFG@hephaistos>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2 (3.54.2-1.fc41) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_074658_010407_8880BF04 
X-CRM114-Status: GOOD (  13.26  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: =?ISO-8859-1?Q?=5BPATCH=5D=A0ARM=3A?= beaglebone: add delay in
 lowlevel.c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Konstantin,

Am Mittwoch, dem 08.01.2025 um 16:14 +0100 schrieb Konstantin
Kletschke:
> Hello Sascha,
>=20
> On Wed, Jan 08, 2025 at 03:32:04PM +0100, Sascha Hauer wrote:
>=20
> > Calling udelay(1000) and adding a comment saying it delays 1.8ms looks
> > inconsistent. Maybe better count up to 2 in __udelay() above which make=
s
>=20
> I completely agree somehow since the time is not even constant and depend=
s on
> the PLL settings just done before.
>=20
> I suggest the following:
>=20
> Removing the "* 3" fancy thingy in the function's loop, calling the
> function with 3000 instead of 1000, changing comment to "needed on some
> Beaglebone Black for warm start after reset".
>=20
> That would be as simple as possible.

It would be interesting to know if any of the configured PLLs go out of
lock again during the time your delay loop runs. I.e. check if any of
CM_IDLEST_DPLL_CORE, CM_IDLEST_DPLL_DDR, CM_IDLEST_DPLL_PER or
CM_IDLEST_DPLL_MPU contain a value other than 0x1.

Premature signaling of a PLL lock during warm reboot (where the PLL
isn't in bypass before the configuration) might well explain the issue.

Regards,
Lucas


