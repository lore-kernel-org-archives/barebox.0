Delivery-date: Mon, 03 Nov 2025 15:10:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFvGC-00EsM2-2F
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 15:10:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFvGB-0001Jl-Rz
	for lore@pengutronix.de; Mon, 03 Nov 2025 15:10:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2cunIPWzHO8v+b+SHHCLmFeNNsY2zDOR7IrDiREJPE=; b=JmpMtDilkemLzS
	uurI8XiK/eJH4V2yrD5jH8ekfIqnb/U/QI8qhjBOHFcQzUgSEZC5VLGid3X8raEHQdf/IsUQKs+jd
	uigcxEC2YMCEu9bjoJ9roLjl5u734BNW+30Pfi5E3fA6/TUCUwArEv1+iMxgFrRIFlUwrQ762MlX8
	mN3+mjQWqZIOr4V3ERzJARxsL1ku/MAu46CGEpMhUpYyJNgWRTz1XbdbKUpiGJ22cz+P3M8ewdLPM
	IB4i2oQkWveabKh321wVa+KQZBGuJEQsH/C42ntkxrpk/TIgisC8aOkrK8/rHhvL+yiK0iuOem3Ab
	u+KE9uguGouGt3aiuSrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFvFX-00000009zzx-1Rro;
	Mon, 03 Nov 2025 14:09:35 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFvFU-00000009zzb-3Pmq
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 14:09:34 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2907948c1d2so47705145ad.3
        for <barebox@lists.infradead.org>; Mon, 03 Nov 2025 06:09:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762178972; x=1762783772; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/2cunIPWzHO8v+b+SHHCLmFeNNsY2zDOR7IrDiREJPE=;
        b=CDhG+tjFIaNSML9qFy+WUYYRrOOntpMLZAraXr+suQtkyuXJA/zItgchCeWeNSQrUs
         FmrNZogKx+Ix4zR09pPkNFhP3n0OkRbtUMKWSY62OfOnNGMbUdzemBWKCuGcxwuCj+hC
         wboLDOVWhtd9/zg3HFpWHZdaDtZ/VGA57xW9w0QRKr3H4T3BSWK46DN4Uh4V1Wz9Ym/C
         DKhzSU4WHzw0kcWmI22LlgRxaA8ZQaK3St0lhObzaDtncB5IwDWj/pMqqQJo+WQTQ5eI
         owTqUFmn5GNvg9BoQz+2A/bbmjiapcglQqQBVKNfAlafmo9Mmd9fOnAcwKfGeoIc0c2R
         aWTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762178972; x=1762783772;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/2cunIPWzHO8v+b+SHHCLmFeNNsY2zDOR7IrDiREJPE=;
        b=Pn+xg8i0lxqQK1fF5nTgow1we/P5lRUGNtt9OYGpvr28YAtLSSvlFFulZlgGONJ3mL
         W7ibumix6FSkIIsgJVyWB/Al6VaPlrP2HpB/XF7ebNQL0VaE9YARZjRAXCGA+xQjnUPQ
         zZOmpVw9U9QZ+ddJI4TyQdCBoIg7EfdgrneRwQeto7sUs4oAkAMwAD4PUXlFUCqzm1xe
         T41YvM0AULPQrqo9qi2ecron31UwOofoTHUaw09ETpTcAgu04NDw6ljqFTqyx4Hdv5KW
         cuqdY1ohE4YagBU79gLOT8QXqkKvmL0nqc2535Bud560PCKrUDX3daIe1eIMETF3IotO
         qK+g==
X-Forwarded-Encrypted: i=1; AJvYcCXUje0JFRNCTV8W0tIyl1vD5nGiGPxiRvS4UrLRahIn+St2dqAMVFgJzIcLW3L/QkjzyyBbQIpt@lists.infradead.org
X-Gm-Message-State: AOJu0Yzd7doDNoLzBCZE9onZixhCPxLU77dzGcA0PmAFXP3h/vEcGHk7
	yBQ+dCVNxsF7q3KF2Ma650YBmgyxobpKEiKHjsxuSISAPL66Q9tmR8K/6swjzKkri39TuDUoOcX
	I5hiZKuF0NcaouNXdhOuvmznktMfTQ2s=
X-Gm-Gg: ASbGncu9+xwu11kMFwxyu+jpBWOLvcdUniPGzBED5bfwl6UfBpG7jqAd96Re9mkudAx
	dfkwLrHgELqUPbxx6lnjmvvm+Lzk02AXBFwMHJqxyf5mqupY/9NgVHfcX9+EWsh+DGoxy3aTXCg
	9F2h3AlG3EZmEeJSI9gviyMe9iFYQrVNZjs59XTQROYk3bsGSzrXWrNtxRHR/zJa3oddSNEXDvF
	sGDot8cPeaRZI4yK2aK+p/xx1vWdOXNTzBgITYGeO+0IJzTx2Ru9uLpbwH6F9u/khS0ksiOlwru
	QYw+B/TiKS7/4ZJEVUWIgP9bFcU8xg==
X-Google-Smtp-Source: AGHT+IH86K3v8I6dJxohGuoW8DLRcUDdyPFvp8rDxUtUbPv5+Jtsn8X2Wc7iGHLbiHB6nG3KCq5syYAlGSGIBU+oDpU=
X-Received: by 2002:a17:903:2d0:b0:272:dee1:c137 with SMTP id
 d9443c01a7336-2951a39619cmr176059465ad.13.1762178971623; Mon, 03 Nov 2025
 06:09:31 -0800 (PST)
MIME-Version: 1.0
References: <20251103043833.149013-1-chalianis1@gmail.com> <e6fe90ea-3ba4-402b-9b9e-dbe2f386dc63@pengutronix.de>
In-Reply-To: <e6fe90ea-3ba4-402b-9b9e-dbe2f386dc63@pengutronix.de>
From: anis chali <chalianis1@gmail.com>
Date: Mon, 3 Nov 2025 09:09:20 -0500
X-Gm-Features: AWmQ_bltuuh7JFZy-gMTNeCo3w9Q-9z5Fga3DqHjspegm97UKC6plMaA09P1J_I
Message-ID: <CAL+1fyC5bD3k6rufJx6eYXjL4Fo00QOWRRC3JzgfcU-3maROhA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_060932_860666_65402D07 
X-CRM114-Status: GOOD (  33.76  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] drivers: misc: external_state: add a barebox external state.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

>> strlen can't return negative numbers.
ack, right it is size_t (unsigned)

>> The original function had a number of safety checks that are missing her=
e:
>>
>> - It only ran the code when in EFI payload mode, as the same barebox
>>  binary could be chainloaded without EFI
>>
>> - It checked that /boot is mounted and gave a useful error message to hi=
nt
>>  at e.g., EFIFS missing, which we are missing out on here.
>>
>> I am not yet convinced this is strictly an improvement.

Yes you are right but I didn't reintegrate the code in generic driver
since it will just use Kconfigs to reference a state dtb file.
In case this code was accepted there is no context to do the check,
but I ensured that barebox gives a behaves in way that the user
will quickly see that there is no /boot directory with the message
telling No such file or directory, anyway you suggestion to add -f to
state command
is more elegant, I will do some experimentations. the aim of this
patch is to support a state.dtb given in runtime which permits
userspace interaction with
native board because I didn't figure out how barebox state command
could communicate with a barebox intree state.

>> If you have the need to customize where your state comes from, how about=
 adding
>> a state -f /path/to/state.dtb command option and calling it from your in=
it script?
right, more elegant suggestion, I will try it.

Thank's for feedback

Anis.

Le lun. 3 nov. 2025 =C3=A0 01:46, Ahmad Fatoum <a.fatoum@pengutronix.de> a =
=C3=A9crit :
>
> Hi,
>
> On 03.11.25 05:38, chalianis1@gmail.com wrote:
> > From: Chali Anis <chalianis1@gmail.com>
> >
> > Add a driver to use an external state dtb, gives the ability to define
> > an external state at compile time. useful for yocto or buildroot defini=
ng
> > a state.dtb that will be passed to barebox at compile time vi a defconf=
ig
> > fragment.
>
> We already had code that did this unconditionally for EFI.
> Can you explain why this needs to be customizable?
>
> > +config EXTERNAL_STATE
> > +     tristate "Use external barebox state dtb"
> > +     depends on OFDEVICE
> > +     depends on STATE
> > +     help
> > +       This permits the use of an extranl dtb state blob
>
> external
>
> > +       which permits to dynamicly at compile time specify
>
> dynamically
>
> > +       an external blob vi EXTERNAL_STATE_DTB_PATH
> > +
> > +config EXTERNAL_STATE_DTB_PATH
> > +     string "the external barebox state dtb path"
> > +     depends on EXTERNAL_STATE
>
> Really needs help text as EXTERNAL makes me think of a file on the
> build host.
>
> > +static int state_external_init(void)
> > +{
> > +     const char *dt_path =3D CONFIG_EXTERNAL_STATE_DTB_PATH;
> > +     struct device_node *state_root =3D NULL;
> > +     size_t size;
> > +     void *fdt;
> > +     int ret;
> > +
> > +     if (strlen(dt_path) <=3D 0)
> > +             return -EINVAL;
>
> strlen can't return negative numbers.
>
> The original function had a number of safety checks that are missing here=
:
>
> - It only ran the code when in EFI payload mode, as the same barebox
>   binary could be chainloaded without EFI
>
> - It checked that /boot is mounted and gave a useful error message to hin=
t
>   at e.g., EFIFS missing, which we are missing out on here.
>
>
> I am not yet convinced this is strictly an improvement.
>
> If you have the need to customize where your state comes from, how about =
adding
> a state -f /path/to/state.dtb command option and calling it from your ini=
t script?
>
> Cheers,
> Ahmad
>
> > +
> > +     fdt =3D read_file(dt_path, &size);
> > +     if (!fdt) {
> > +             pr_info("unable to read %s: %m\n", dt_path);
> > +             return 0;
> > +     }
> > +
> > +     state_root =3D of_unflatten_dtb(fdt, size);
> > +     if (!IS_ERR(state_root)) {
> > +             struct device_node *np =3D NULL;
> > +             struct state *state;
> > +
> > +             ret =3D barebox_register_of(state_root);
> > +             if (ret)
> > +                     pr_warn("Failed to register device-tree: %pe\n", =
ERR_PTR(ret));
> > +
> > +             np =3D of_find_node_by_alias(state_root, "state");
> > +
> > +             state =3D state_new_from_node(np, false);
> > +             if (IS_ERR(state))
> > +                     return PTR_ERR(state);
> > +
> > +             ret =3D state_load(state);
> > +             if (ret !=3D -ENOMEDIUM)
> > +                     pr_warn("Failed to load persistent state, continu=
ing with defaults, %d\n",
> > +                             ret);
> > +
> > +             return 0;
> > +     }
> > +
> > +     return -EINVAL;
> > +}
> > +
> > +late_initcall(state_external_init);
>
>
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  =
|
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|


