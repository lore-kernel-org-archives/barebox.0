Delivery-date: Mon, 27 Jul 2026 15:43:32 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1woLcB-003Rqs-2F
	for lore@lore.pengutronix.de;
	Mon, 27 Jul 2026 15:43:32 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B945E202265
	for <lore@pengutronix.de>; Mon, 27 Jul 2026 15:43:27 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VDgwrxTo;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=2L8LRKoctf/nhB310TTmCFYR9hqT4ckPl9ayxiIHFYk=; b=VDgwrxTodedv4yt2+jjZyLPJtq
	UCH7+AtQ9/O3lvTWX9UItgqLwXUvYW3dPA74koOo9f52Fh3Jc+cDN+4ZQ2pf2shRMr00kQIO67b3V
	O4KphAXhmABYMVyfkB7k4Ci+cqNkdVlM5gBmmO1GtyBlQBe2KYGad4yr7VozJ1e51yFi7OnMF3vAh
	gqoMO5udF5z7XnvxadRqSc6/xktksEJlh+UpCwbiaw2ugb4XOPpWFP2fYt2M0Z0C00UNOQUyqbX1Z
	aYeEOu5/lISfoQD5gsDh7jHbSh9+oIomFsTgsKqCam/qoJ9ibLWBnyCvS1E3KcXGpDV1bTNaM5UFl
	QudwBwsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woLap-00000002t6p-09hK;
	Mon, 27 Jul 2026 13:42:07 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woLam-00000002t65-15sk
	for barebox@lists.infradead.org;
	Mon, 27 Jul 2026 13:42:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7EFFA202767;
	Mon, 27 Jul 2026 15:41:58 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1woLag-001YxH-1Q;
	Mon, 27 Jul 2026 15:41:58 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1woLag-00000007Idm-1SWv;
	Mon, 27 Jul 2026 15:41:58 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 04/19] ARM: dts: update RN102 Linux DTS
To: "Luca Lauro via B4 Relay" <devnull+famlauro93l.gmail.com@kernel.org>
In-Reply-To: <20260723-rn102-rn104-series-v1-4-7698d25df866@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 27 Jul 2026 13:41:58 +0000
Message-Id: <E1woLag-00000007Idm-1SWv@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_064204_600951_FCCE1939 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  BTW you can fold patches 1-4 into a single patch so that the
    full board support comes as a single patch, same with RN104 support. Sascha
    On 2026-07-23 15:57, Luca Lauro via B4 Relay wrote: > From: Luca Lauro <famlauro93l@gmail.com>
    > > --- > dts/src/arm/marvell/armada-370-netgear-rn102.dts | 114 ++++++++++++++---------
    > 1 file changed [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: =?utf-8?b?b3BlbiBsaXN0OkJB?= =?utf-8?b?UkVCT1g=?= <barebox@lists.infradead.org>, Luca Lauro <famlauro93l@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-2.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	CC_EXCESS_BASE64(1.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+famlauro93l.gmail.com@kernel.org,m:barebox@lists.infradead.org,m:famlauro93l@gmail.com,m:devnull@kernel.org,s:lore@pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[famlauro93l.gmail.com];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:c01:1d::a2:received];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: B945E202265
X-Rspamd-Server: mx1
X-Stat-Signature: 4iwc66kdper9q4mw641ytg4r8hddd7ym

BTW you can fold patches 1-4 into a single patch so that the full board
support comes as a single patch, same with RN104 support.

Sascha

On 2026-07-23 15:57, Luca Lauro via B4 Relay wrote:
> From: Luca Lauro <famlauro93l@gmail.com>
>=20
> ---
>  dts/src/arm/marvell/armada-370-netgear-rn102.dts | 114 ++++++++++++++---=
------
>  1 file changed, 71 insertions(+), 43 deletions(-)
>=20
> diff --git a/dts/src/arm/marvell/armada-370-netgear-rn102.dts b/dts/src/a=
rm/marvell/armada-370-netgear-rn102.dts
> index 079b37cf14..f1bad2a233 100644
> --- a/dts/src/arm/marvell/armada-370-netgear-rn102.dts
> +++ b/dts/src/arm/marvell/armada-370-netgear-rn102.dts
> @@ -15,6 +15,10 @@ / {
>  	model =3D "NETGEAR ReadyNAS 102";
>  	compatible =3D "netgear,readynas-102", "marvell,armada370", "marvell,ar=
mada-370-xp";
> =20
> +	aliases {
> +		state =3D &state_nand;
> +    };
> +
>  	chosen {
>  		stdout-path =3D "serial0:115200n8";
>  	};
> @@ -54,7 +58,7 @@ ethernet@74000 {
>  				phy-mode =3D "rgmii-id";
>  			};
> =20
> -			usb@50000 {
> +            usb@50000 {
>  				status =3D "okay";
>  			};
> =20
> @@ -153,10 +157,35 @@ backup-button {
> =20
>  	gpio-poweroff {
>  		compatible =3D "gpio-poweroff";
> -		pinctrl-0 =3D <&poweroff>;
> +		pinctrl-0 =3D <&poweroff_pin>;
>  		pinctrl-names =3D "default";
>  		gpios =3D <&gpio0 8 GPIO_ACTIVE_LOW>;
>  	};
> +
> +	/* configure nand partition to store barebox environment */
> +	environment {
> +      compatible =3D "barebox,environment";
> +      device-path =3D &nand_controller, "partname:environment";
> +	};
> +
> +	/* configure nand partition to store barebox-state backend */
> +	state_nand: nand_state_memory {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <1>;
> +        compatible =3D "barebox,state";
> +        magic =3D <0xab67421f>;
> +        backend-type =3D "raw";
> +        backend =3D <&backend_state_nand>;
> +        backend-storage-type =3D "circular";
> +		backend-stridesize =3D <32>;
> +
> +       =20
> +        variable@0 {
> +                reg =3D <0x0 0x1>;
> +                type =3D"uint8";
> +                default =3D <0x1>;
> +        };
> +	};
>  };
> =20
>  &pciec {
> @@ -219,58 +248,57 @@ reset_button_pin: reset-button-pin {
>  		marvell,function =3D "gpio";
>  	};
> =20
> -	poweroff: poweroff {
> +	poweroff_pin: poweroff-pin {
>  		marvell,pins =3D "mpp8";
>  		marvell,function =3D "gpio";
>  	};
>  };
> =20
>  &nand_controller {
> +	compatible =3D "marvell,armada370-nand", "marvell,pxa3xx-nand";
>  	status =3D "okay";
> =20
> -	nand@0 {
> -		reg =3D <0>;
> -		label =3D "pxa3xx_nand-0";
> -		nand-rb =3D <0>;
> -		marvell,nand-keep-config;
> -		nand-on-flash-bbt;
> -
> -		/* Use Hardware BCH ECC */
> -		nand-ecc-strength =3D <4>;
> -		nand-ecc-step-size =3D <512>;
> -
> -		partitions {
> -			compatible =3D "fixed-partitions";
> -			#address-cells =3D <1>;
> -			#size-cells =3D <1>;
> -
> -			partition@0 {
> -				label =3D "u-boot";
> -				reg =3D <0x0000000 0x180000>;  /* 1.5MB */
> -				read-only;
> -			};
> +	label =3D <&nand_controller>;
> +	nand-rb =3D <0>;
> +	marvell,nand-keep-config;
> +	nand-on-flash-bbt;
> +=09
> +	/* Use Hardware BCH ECC */
> +	nand-ecc-strength =3D <4>;
> +	nand-ecc-step-size =3D <512>;
> +
> +	partitions {
> +		compatible =3D "fixed-partitions";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +	=09
> +		partition@0 {
> +			label =3D "bootloader";
> +			reg =3D <0x0 0x400000>;		 /* 4MB */
> +			//read-only;
> +		};
> =20
> -			partition@180000 {
> -				label =3D "u-boot-env";
> -				reg =3D <0x180000 0x20000>;    /* 128KB */
> -				read-only;
> -			};
> +		partition@0x400000 {
> +			label =3D "environment";
> +			reg =3D <0x400000 0x80000>;    /* 0.5MB */
> +			//read-only;
> +		};
> =20
> -			partition@200000 {
> -				label =3D "uImage";
> -				reg =3D <0x0200000 0x600000>;    /* 6MB */
> -			};
> +		backend_state_nand: partition@0x480000 {
> +			label =3D "state";
> +			reg =3D <0x480000 0x80000>;    /* 0.5MB */
> +		};
> =20
> -			partition@800000 {
> -				label =3D "minirootfs";
> -				reg =3D <0x0800000 0x400000>;    /* 4MB */
> -			};
> +		partition@0x500000 {
> +			label =3D "kernel";
> +			reg =3D <0x500000 0x1400000>;    /* 20MB */
> +		};
> =20
> -			/* Last MB is for the BBT, i.e. not writable */
> -			partition@c00000 {
> -				label =3D "ubifs";
> -				reg =3D <0x0c00000 0x7400000>; /* 116MB */
> -			};
> +		partition@0x1900000 {
> +			label =3D "minirootfs";
> +			reg =3D <0x1900000 0x6000000>;    /* 100MB */
>  		};
> +
> +		/* Last MB is for the BBT, i.e. not writable */
>  	};
> -};
> +};
> \ No newline at end of file
>=20
> --=20
> 2.47.3
>=20
>=20
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


