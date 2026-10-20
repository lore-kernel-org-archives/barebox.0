Delivery-date: Tue, 20 Oct 2026 16:32:33 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJAtF-0013uC-11
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 16:32:33 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 131BD2018A0
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 16:32:29 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=24Kgq71l;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=VYIVvCTw;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792506749; a=rsa-sha256;
	cv=fail;
	b=SUqHMyAcQV8FUzgcbKftu3tku3J0mXXYKINjg2XWGKTyapkBtp6RirsZdYPIkTRKh/xqh4
	41pc9jHENKvQxpaf/8rKNma84A4lKC87mlnanbU52y+Ga/xeZktiNihNHjQVNuNnxIdEaC
	rTpf47D7zLoyQkK5ej5RE4JIjf7QyYSaSssUIv0FBr9yU3sy7q1j7KW1FWtIQms5YMUSO0
	pleBFVzbF3pEE+yv5bZXMfbSIHNynhXQ9qeeR3T1ychFiIDxHrg6zo9ZMTzwkKfu3HLMQI
	CglVCXFgthjZl3CVqUNk9PabzfwtWGqE/WmdF6pNxrbnAkvm0j0QZXWUGgXcdA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=24Kgq71l;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=VYIVvCTw;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792506749;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Vtgp7PVXpM+aODRXnwME26wuXjtCcw+/BHjWWoIJkts=;
	b=ZQIhNzHGmAMSjY/WO6f7PQkaSobPCdJw5o38AiSe1CVD2hFvp6r9ABaMOdZijYzE4bu0ak
	0mPUzoGT9SDKuMDJOf3Du/gYvXO7NhrSruV2R8Z/Fd99/OdZx9rBFoF8q7KtjIxReaCuFg
	XR4H7CuNYCOVMw1fAd3zfudVthx0thNYNBP2m9E7+KzFqsWbp53LKI1RmUNH8hrfyTW2xs
	3CDcb9U0XpmMqdVFBMrzEzPOHyaGyMcYDzCt+GOLW8SgdwOWzj6vnGREj0w/SSC7U22vqu
	rV5+YoEQOcWJWmWN8Fc7QvXqs1/TikRayjso7hPwb22tOxDplVJpwGxfoZJCgA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vtgp7PVXpM+aODRXnwME26wuXjtCcw+/BHjWWoIJkts=; b=24Kgq71ljW3eLL4n2f7169K4lK
	5Tj8eU8IDeXDQRLclhGpMh4sdVVp85u8OnKOu3WhvE6ZM4rwqdOtVvGR4lt/gf1kBcbFRMG9WKeE/
	ogglz0FLB28fIfmTIgs9/eP+u8Zq0JpC1z2fYevLsRWmxhAzuP4opczBv+G1tfQD3IHVhm+nguRlV
	rnYvEEAypbYMdRg02gLKNa1CJVQz4f9UMbu4KsUgQ08uGluYVW6dwUSQQT+EmMDBr5ufooVlOE8Hr
	qkwJGYLBtKGtDTTHFTy2vjvW0TVpOTLgQawaNlxr1rnQ7nZvBwb9JigJFNjNomopo7U7+ASSMX1Ro
	qEXuoV8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAre-00000009wsT-0FaK;
	Tue, 20 Oct 2026 14:30:54 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJArb-00000009wrY-15HL
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 14:30:53 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4F517200758;
	Tue, 20 Oct 2026 16:30:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792506644;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Vtgp7PVXpM+aODRXnwME26wuXjtCcw+/BHjWWoIJkts=;
	b=VYIVvCTwzYwmJ3B0gTi8CalFdN+QsgqQj2C1Bgogt6v62xLKdDz8rv896m8IDUR3y8+sIY
	d5NMAdproOgbDh0ys2dNFr16mQuxQi90FFOERi3+vNNufqlVtom5ArYalnBo3MlK6Sn8JV
	uUQd2vU2f0lv4YvDmWQF1LA0NBIPOUPbE7FclAoCxfPBLvFpNshe1xvDWiWmxq6Od9iWtz
	XpRcG1Fsh2g7Sya3O+yQLgKUHE/mfkhCqzUjQnxy8Kz4X9/aqpZTClUwarhuO4F5N6ZffQ
	qHqu2fTNlTo2lSbjT6Qmz5KX0jrnCGw7s3gm5O/jAil9yfll22385XwR7IuFlw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792506644; a=rsa-sha256;
	cv=none;
	b=EbD1VaTO6q/amn2+FZUBre64cjk5289oPYxUmzwoAtgRFaMSIMtvsSkZ/qIWxhPsJiF0bC
	2m6Hy9ty9Ei3Qr4GxsqcCXsphhkp1F8V2u5f5vX3wYI0Yr95D3kg73ovq8bYmN7CAwUmf2
	nXb+xprhL92MtBvezCyweODz+WLHwojL5KOSsKms1NwfBZ86MZugzBSFL2VJHFdbi7LFG4
	+X+5imdy5STU+cfR5ZaXuqp7SVNyV4uz7PHrEhqdb9h4pn7dO2jO6xrMZLNqlbu0VyurwJ
	9y0VQ2PKC4KiMK/mNMqi7b+4dPro2ixRpi/CxymW+YF2JoxeMIwigjDvMwzB1A==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792506644;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Vtgp7PVXpM+aODRXnwME26wuXjtCcw+/BHjWWoIJkts=;
	b=DY27jJ8NHlXkei+4MoQP60gt2x3MNTKc+6SRVmDaZmik2G6BFFd6GwNCCoo0dt41rkYHAg
	oqqRnHa4PqAoqV0Lp19SV+Zu390z5ij037M9WJE0i7Yk6E2OvvL2txOfPxkfsyWeZq+hlU
	gPC4A0MAfQ6FUeFODqURwxpjdMx/sg0Olv9GaXXV9cu120CPuiL5rdPusZkCztpGEBrmaJ
	dZkA1ttzHB3guvkhlAGTFYjxSLMKxxLQyRqP5nKPcs4E5DOe0788AwyTKL7ZOzNjIkD+O6
	i7Q1VRqp1s39h690euCFF0OASnVNTakkakt6lPDYiwJS5/i/VfOffVSwe3RrOw==
Message-ID: <743f8734-e541-48db-8abd-76a79ee5651d@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 00/11] arm: socfpga: agilex5: add xload support for bl33
 to FSBL
To: "Michael Tretter" <m.tretter@pengutronix.de>
In-Reply-To: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
References: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 20 Oct 2026 14:30:42 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_073051_449828_70D68EA7 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Michael, On 2026-10-07 12:55, Michael Tretter wrote: >
   The image of the first stage boot loader on the Agilex 5 is limited to > approximately
    256k. The SRAM is actually 512k, but there is some handoff > data a [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
Cc: BAREBOX <barebox@lists.infradead.org>, Michael
 Tretter <m.tretter@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 131BD2018A0
X-Spamd-Result: default: False [-54.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: unfj9ghdr94aut3cnfoao7bryymnjnjf

Hi Michael,

On 2026-10-07 12:55, Michael Tretter wrote:
> The image of the first stage boot loader on the Agilex 5 is limited to
> approximately 256k. The SRAM is actually 512k, but there is some handoff
> data at the send of the SRAM, which must not be overridden. There are
> some size checks, but due to compression of the FSBL image, it's the
> possible image size cannot be determined reliably.
>=20
> The barebox PBL and a full featured barebox proper are easily larger
> than the allowed size. Compression of the piggy data may even be counter
> productive, since the entire FSBL image is compressed again when
> creating the boot image.
>=20
> Add support to remove the piggy data from the FSBL image, and load the
> second stage (consisting of a barebox PBL and barebox proper) from flash
> in the PBL.
>=20
> Patches 1-4 rework the Cadence QSPI NOR flash driver to be available in
> the PBL via the pbl_bio abstraction.
>=20
> Patches 5-9 extend the Agilex 5 support to initialize the flash driver
> in the PBL and chain load an SSBL as bl33 instead of copying the
> currently running barebox. The patches also add the infrastructure to
> build the PBL without piggy data and device tree.
>=20
> Patches 10-11 enable the xload support in the Arrow AXE5 Eagle board.
>=20

This series currently breaks compilation on -next. socfpga-agilex5_defconfig
fails with:

../arch/arm/boards/arrow-axe5-eagle/lowlevel.c:17:23: error: 'CONFIG_MACH_S=
OCFPGA_ARROW_AXE5_EAGLE_XLOAD_ADDR' undeclared here (not in a function); di=
d you mean 'CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE'?
   17 |         .nor_offset =3D CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE_XLOAD_=
ADDR,
      |                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~
      |                       CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE
../arch/arm/boards/arrow-axe5-eagle/lowlevel.c:18:21: error: 'CONFIG_MACH_S=
OCFPGA_ARROW_AXE5_EAGLE_XLOAD_SIZE' undeclared here (not in a function); di=
d you mean 'CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE'?
   18 |         .nor_size =3D CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE_XLOAD_SI=
ZE,
      |                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      |                     CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE

xload support is currently optional and disabled, the existence of
CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE_XLOAD_ADDR depends on the xload
being enabled, but they are used unconditionally.

Could you send a fixup?

Sascha

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



