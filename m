Delivery-date: Thu, 19 Nov 2026 16:31:50 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xU473-0018hY-11
	for lore@lore.pengutronix.de;
	Thu, 19 Nov 2026 16:31:50 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 74ADF20062C
	for <lore@pengutronix.de>; Thu, 19 Nov 2026 16:31:44 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kJBedtRb;
	dkim=pass header.d=gmail.com header.s=20260707 header.b=GiXb14LB;
	arc=pass ("google.com:s=arc-20260327:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795102304;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=tkPHUcnaW+LG8ox4L9OVFd2Gkp+vBa8LuR3IeiFPC1A=;
	b=WYCdF6nJ6USAbL1yFtv/LY91M7TXurhSoVOiT1od3GrXHhgaDG33vPmHhas+QdVSuNE8fH
	9zXTvUwKltrCDqDlaZtTgFkYioBgatZeDdzqwK3d+mEX/G4xDEhE1ROJc5wpT7akrEffks
	R+MdrhxP4kF1ruk7SnRH7bGr5QVxWYgp5aLdiUt7yn3uzlMgkm01Id6VV7MycEmsU2Wijy
	9bu7wAa5nloD2plhLfeXgieAPQhfH26f9X6FCXkMIUrwl+mH43389UT1JKtk834p/GRRE9
	uguCMjnpBx7jQQgF4qbo+xsE/Zw8oqcLC4mh561nx+SWayR0exVXfWuJ+zVxUw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795102304; a=rsa-sha256;
	cv=pass;
	b=YsF3dUCNtiRAQJlmO3eRcfQHJVGvMyYEL2aAan0VmOkyk4y0eggL5juDBx35orUWiBYAX4
	ByERfsB2rLDp47SWKOkGh3y8h5ckYfSTHTEg9PUxmkZVg4js5Cb+v7mhcFOsTpcmSb0xXb
	9KI+t1gsocbI4p8SraWpG3D8JawC0ekhah8VJI8pVFOJkHiRB5wSMXeQFZ+2IrbIgDQJKx
	5fcGU+wbbgYIEQsp0g7zNldvaGUVk0C2LDZtIHXHtKUlWkAvE66sbDHT09/8R6NF5YxRVC
	3l6NQECiC+h3SFI/ZzId50hWPTLv3DseihwBElxLZk0qjI6v+wLRfp933F++Ew==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kJBedtRb;
	dkim=pass header.d=gmail.com header.s=20260707 header.b=GiXb14LB;
	arc=pass ("google.com:s=arc-20260327:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=tkPHUcnaW+LG8ox4L9OVFd2Gkp+vBa8LuR3IeiFPC1A=; b=kJBedtRbVzI6n+
	R59HvNxczoTi3a2Sg17pUJzXgeSzE467Am9C1iT/K7FB7xtSJJCTBd89Y0cpZem0b+EsNTjVHeMk7
	wJLNlEWs1/NjUsLooZpuhy2rczH+jjC5zpMFYbhD4aq8wSHsqRBqJe93URPaXmapL6X8/Kju0Ax2T
	xwCWq4L4Dg8p+RQtlOjle9uta3zjXgF2ZIVtsFwc80rwp20RfghtryrwjaChBAbq7VTqZcQco3E+E
	uze5eQr6nWP6+rRR0SKc783hr9ND+gVKfQQ8Z6v1YzHp6u3QQ/UgCfsloa3LJMTqhfG2Ydmf3EenF
	pOKj5406vukK+WE1S74w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU45g-0000000CSb4-0608;
	Thu, 19 Nov 2026 15:30:24 +0000
Received: from mail-dl1-x1233.google.com ([2607:f8b0:4864:20::1233])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU45e-0000000CSZU-17s8
	for barebox@lists.infradead.org;
	Thu, 19 Nov 2026 15:30:23 +0000
Received: by mail-dl1-x1233.google.com with SMTP id a92af1059eb24-1a3c08d6928so3259874c88.0
        for <barebox@lists.infradead.org>; Thu, 19 Nov 2026 07:30:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795102221; cv=none;
        d=google.com; s=arc-20260327;
        b=UWyJ+46yqpYzOnKvQrAKZurDj6hcGB2Ugyv/bpYQaenrMlc6BEWnZAs5kQtZdAAOHW
         qdI6fd6QiyTT7z++DIHtaEQQopHkSc4VGvSONLAvxbhAKj+BJR3toYVKknbWgJYr/IrJ
         x6e5bEQnazhwTF5hGPbYSAocDHp1PjgqJJilg4/RWQazkDalkIgtw/Lm7UC6OWrTh8ik
         G+bX4olHkk7q/B0ECzSs2PGYImJe+IwjGXz164x1KxqlEl10cuTLjma4p7YWl2KBGkEJ
         IP95NS6jJWjcMGM5gTFlEL3XnhifpE1m2lCld+/WBSOArDvbRImNwJnWk06zjnsj44G4
         3itQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=tkPHUcnaW+LG8ox4L9OVFd2Gkp+vBa8LuR3IeiFPC1A=;
        fh=FpUCQ4hrAe7DMypxPG/ulngKhQ0m+hebhB9tw5SFKsI=;
        b=k4/5EaRauJAKJSUSChHcGXWXVvCSe4wbMl8diIubKWGM3xafD2R7rjDa36IynabCjt
         W6jQAVD/ggvhRtdXmIRMcR9bb/dWrU3WS4rUgT6BoqU0B5C7JtzAYBjwibXy3gGdeuzx
         +b1G/pjthIcUf7b7ZZvEyae3fFH4/s5hpa0uEo1qHQgUXlj2u6bAPOTWnFn7ZmlkyDhs
         ryE88Ga/VECiesy2WvWzI6mKpGxgrRE+tfnCpx0Uz1kR11wxtT8xC61d2B406CkPN0wN
         s8Ci24q98LogUsgxNCLytFtVgXQRwaJ0qRVhUCRvHLXMw5iiHaB1b8fneDXTFeTitTyB
         OiNQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795102221; x=1795707021; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=tkPHUcnaW+LG8ox4L9OVFd2Gkp+vBa8LuR3IeiFPC1A=;
        b=GiXb14LBeJPkwaaa+M2x1vlp9hMGYMo1G2NNW4RAasxoZcAKzx34heiVNpOBxIMZcR
         P0Ec3JeUGxDWxvMoBeOSzYkE52grCZORKAKMNKjMpuV+SD+dh7WKu69Bu+5cWNnsTNVs
         28jIuChRTEr39LjTpjmUBiBu0xfdknGBFJ4zAJQAxuupJxrtvHjGUx5s/FNBiLdKERXU
         pNS7nJCpmo5f3+XNO8ZAzCpG1Fs7tTX6emBnZLqp8aMe9C0mzidhQmrDNKLBiOw/y1a7
         IH8dI84NXnsS7vjHSHlR4GfQbRy4gI6uufoK+gR2tvulBsMpBrY00EUY1f3KvmgzYh7A
         /u/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795102221; x=1795707021;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=tkPHUcnaW+LG8ox4L9OVFd2Gkp+vBa8LuR3IeiFPC1A=;
        b=Iztf/a9baSjSQMBrAFnGrsjmNz62n5xDvuWHUnuTsWz24nhGmXYQx/DM86u8/3x3fu
         7+vElOv5eUIgkIiT4T5ZDzwVtbOok5wyd1c2GdiquTAgPl/i6oJoCgg7zQCucJfdVaB6
         NO4xiIehVypqRfCteCIdQb0QjHdlcMohBXOGImNpntREqDJzFizlJt+FOVXQlnmdUWNP
         3jKNk3MpOJtfBKSWrOOpdW4yyO+pnfdZuGJcDkqvmd3Z0+V63mzh6wBTep066w/E8Taz
         QamcaP8hNkfxtQhoteojZHzaSTs6PXm7RwUY/s8BCrYmR5NRVmUxXQTdeCvSyBnIpLpq
         0Tig==
X-Gm-Message-State: APuU4Z/GvTiEDfuUvgroq9G0BYy8t1iSy2o0qnEW3ppGQuh4e3k5Lr+O
	tMaoG4AYYrzwVCdWktHEKh5a4dGgahpgFK1zZn09y+pmhe0IvBUBOka0o/YXRWqtkOOPCUdjgbX
	2b3mL7j+K35Pn45T4XZnvR1/fbj46FShAoxW7x6m1OA==
X-Gm-Gg: AYBFou35tiBnbutqc7XjogGDUNKMRqYdKgeavhGB+1hLJ/eFkrHdiOUDwEY+8LSarFG
	idiQ3wv13AaBA4IqBXdqZHQ/eKr93HWdKRJANxh1a0Zr3BxqAY9+K36d/U1Z5N9pJIhd/A2L7AJ
	MdFHpZwNPUi+qpKxzGxuGiyayRnVyL9AFF380chx1olbaDMLJlccItYZZtDrNyEah2XJJd078SE
	zLnID1e3/rhWrkjNpdIhzO12elmDUteG9MdoOWS1aFlu8zRsvqOOfP6s7duf1igqDvq/02tUdeV
	1HjL36B5Pc1Nai0NUoZIiAMz2I9E7A+QUWbI3zCGomyZmfj1mWrRd/e6fuuc3TTgW6TfJJlq35/
	es07HYLFgTcI9Qo4wOM7eQTa3Od+mCxVhbeyNWQ==
X-Received: by 2002:a05:7022:f101:b0:1b5:4d40:e9ff with SMTP id
 a92af1059eb24-1b5568d7b42mr30491c88.35.1795102220517; Thu, 19 Nov 2026
 07:30:20 -0800 (PST)
MIME-Version: 1.0
References: <CAP1tNvRtU8munqnUTiqU_zEP_rxdm_hb42u_oU1FVL93czrtFA@mail.gmail.com>
 <yhue3ceigbcc2njkoqyui5z6dhjkxts3dvbbwxlt7v36abxsyi@v3uubuqgfe5x>
In-Reply-To: <yhue3ceigbcc2njkoqyui5z6dhjkxts3dvbbwxlt7v36abxsyi@v3uubuqgfe5x>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 19 Nov 2026 18:30:08 +0300
X-Gm-Features: AclHuK8JyQowxoTh3i98K8dFM52xrQKtytbu2FexR1jg45XhAw9wpDmst6XG8Bo
Message-ID: <CAP1tNvRpSdk9mauU3RGraT0DqCc5LFyR8mzBjHQg3Uw_eeo63A@mail.gmail.com>
Subject: Re: Strange bug with supply dependency
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_073022_313935_1212F518 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello. I meant that the PMIC driver prints no errors in this
    case. Only GPIO driver print the error. Currently, it looks like this: Board:
    Diasom DS-RK3588-SMARC-EVB rockchip-dmc memory-controller.of: Detected memory
    size: 0x400000000 netconsole: registered as netconsole-1 fan53555-regulator
    rk86020: FAN53555 Option[10] Rev[1] Det [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2607:f8b0:4864:20:0:0:0:1233 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
                             digit
                             [eagle.alexander923(at)gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [eagle.alexander923(at)gmail.com]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Spamd-Result: default: False [-8.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[google.com:s=arc-20260327:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20260707];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_IN_DNSWL_NONE(0.00)[2607:f8b0:4864:20::1233:received];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[eaglealexander923@gmail.com,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	MAILSPIKE_FAIL(0.00)[2607:7c80:54:3::133:query timed out];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eaglealexander923@gmail.com,barebox-bounces@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.23:email,0.0.0.22:email];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 74ADF20062C
X-Rspamd-Server: mx1
X-Stat-Signature: 48e66grkp6txnhiam691d78kje9grprt

Hello.
I meant that the PMIC driver prints no errors in this case.
Only GPIO driver print the error.
Currently, it looks like this:

Board: Diasom DS-RK3588-SMARC-EVB
rockchip-dmc memory-controller.of: Detected memory size: 0x400000000
netconsole: registered as netconsole-1
fan53555-regulator rk86020: FAN53555 Option[10] Rev[1] Detected!
WARNING: pca953x pcal65240: Failed to get 'vcc' regulator with
Requested probe deferral (ignored).
fan53555-regulator rk86021: FAN53555 Option[10] Rev[1] Detected!
fan53555-regulator rk86030: FAN53555 Option[10] Rev[1] Detected!
ERROR: rockchip_saradc fec10000.adc@fec10000.of: can't get
vref-supply: Requested probe deferral
ERROR: rockchip_saradc fec10000.adc@fec10000.of: probe permanently deferred
ERROR: Could not find ADC channel "aiodev0.in_value1_mV": -2!
ERROR: Could not find ADC channel "aiodev0.in_value7_mV": -2!

=D1=87=D1=82, 19 =D0=BD=D0=BE=D1=8F=D0=B1. 2026=E2=80=AF=D0=B3. =D0=B2 18:0=
8, Marco Felsch <m.felsch@pengutronix.de>:
>
> On 26-11-19 17:19, Alexander Shiyan wrote:
> > Hello All.
> >
> > I have the following DTS fragment:
> >
> > exp: gpio@22 {
> >   compatible =3D "nxp,pcal6524";
> >   reg =3D <0x22>;
> >   gpio-controller;
> >   #gpio-cells =3D <2>;
> > //  vcc-supply =3D <&vcc_1v8>;
> > };
> >
> > pmic@23 {
> >   pinctrl-names =3D "default";
> >   pinctrl-0 =3D <&pmic_pins &rk806_dvs1 &rk806_dvs2 &rk806_dvs3>;
> >   compatible =3D "rockchip,rk806";
> >   reg =3D <0x23>;
> > ...
> >   regulators {
> > ...
> >     vcc_1v8: dcdc-reg10 {
> >       regulator-name =3D "vcc_1v8";
> >       regulator-always-on;
> >       regulator-boot-on;
> >       regulator-min-microvolt =3D <1800000>;
> >       regulator-max-microvolt =3D <1800000>;
> >
> >       regulator-state-mem {
> >         regulator-on-in-suspend;
> >         regulator-suspend-microvolt =3D <1800000>;
> >       };
> >    };
> > ...
> >
> > Uncommenting the "vcc-supply" line causes the PMIC driver to silently
> > fail to load,
>
> What do you mean by silently? Are there no error messages?
>
> You extend the driver error message from:
>
> dev_warn(dev, "Failed to get 'vcc' regulator (ignored).\n");
>
> to
>
> dev_warn(dev, "Failed to get 'vcc' regulator with %pe (ignored).\n", reg)=
;
>
> Regards,
>   Marco
>
> > which in turn breaks all devices powered by the PMIC.
> > None of the expander's GPIOs are used anywhere.
> > When this line is commented out, everything works as expected.
> > Is there some sort of dependency from sharing the same bus?
> >
> > Thanks!
> >


