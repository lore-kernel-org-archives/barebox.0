Delivery-date: Wed, 26 Aug 2026 01:33:18 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wz0dp-007Egf-1S
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 01:33:18 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9CEEE2021C8
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 01:33:13 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=x6UtM7+N;
	dkim=fail ("headers rsa verify failed") header.d=gmail.com header.s=20251104 header.b=TsUi6rO6;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cndKMivpb/zq9l1MOwShcxG6ZgxSbYDskBB2dlySJbM=; b=x6UtM7+NRJ1adx
	lhJxptrlue9Nh1ohPy25IrK1QMJ6t0+gd7na1IqrwfhJXlcSyBPS5LaUT2gyYuPoLT50wxPvI1pgl
	SUe8K7VUKqVTxjpBgs54AxIRi9fyy+p7f9eKoSI5vgUbQH9s1y4u3CBI5jNZNi5egcVBR80xgM1Cb
	fRr5rfdR+KsPzeUel6I2IYSvRXFrC0B8QVl5hiItf3R1r3VrDiNjfgkdpQfi8xin26/882TxEYLTx
	oWkXOPro7gzuD11Byt/KA8o3olfIcy5W6MyEz5RxiwmkDFBm0VDRZ2H9gpq0/mESc+N0h4I3Lgqzi
	UIJ+OlCYksmsaYWlLMBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz0b7-00000001gBG-0gOq;
	Tue, 25 Aug 2026 23:30:29 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz0b4-00000001gAr-17br
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 23:30:28 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-84a4d8fd6ecso504026b3a.1
        for <barebox@lists.infradead.org>; Tue, 25 Aug 2026 16:30:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787700625; cv=none;
        d=google.com; s=arc-20260327;
        b=nhG9Eqgo3q7biiosyolxgRZrhCz9dAtTuMzWnT/mZ7NFB3JLHq4YVO8jnQvzdQU2me
         I5IvRejCEQMvuCieqTxGk6+yU4EygETr7f6d5QiP58AFC6nB3SmK4UzFjK+HbZLbm0Km
         hEqCrobkCPB6K21q9SV1ic75Yox6LrK2GTE7bOaG3W4sqmdWd6IabVWIUrCdfTV9JZFz
         3rpMLe1RObWz/9PCReKsPWE0PPL8j6IMYrNuyZhREbcwRSIC76VIbYvCsT0pxXVAIU3i
         egCrFVkcFiwXvgWODVxCKHk65oNIoEY/DuBZd+YpfEaa0qUnwAVLWL+4lzJdF4X3Bag0
         uOyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=cndKMivpb/zq9l1MOwShcxG6ZgxSbYDskBB2dlySJbM=;
        fh=ah9sQxZ5uo9osfAqNVCDqcxCEGVHXt+rHh8fDMCwrHU=;
        b=NjGLE0mNKYl+ItuVQhdw8VdBKWHtst/1RLOXKdyK371DITazu9l3YMIuNDy8WxeIGK
         rFt/DvAiZpPhO3c0YsII7droCgbpGjNDLBrS2JPF9p8HMD5EfIz6KuFMeF1oYAq7/J0l
         m7scXFYk3HW2PPw1bNkTejNDZ/PLbTrJI1j24Y8ko/eHa08FvEO1QcqWxeVhMoB6vBKk
         VFHqLxHMMfeJ50sa44cLLk2EarhJsr+gETRuF73Zm/eMOYG3b75+LqygUKVWzZljaw63
         d7vNtJoOv15N7p4qtJ+kyh+m/VJusFA1ngrNMxa88V8wChlsHIa71ewl0pYWWjyeJsU/
         JHeQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787700625; x=1788305425; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=cndKMivpb/zq9l1MOwShcxG6ZgxSbYDskBB2dlySJbM=;
        b=TsUi6rO69fpQuMoXsVXkS6y8WoENsTCGrm8tzyyRegLoo+bWYkSjwxfDt5XVnL+dlt
         XkuTh3150edb7Bsx9H3J4TL+1bvW7GC4qon2gHXwgLyZt4WGyqP42mK3645j4VzAQV3Y
         vTtMtqwKi/N2bhuxo8HxDiJujdTNiKG6/xMYrzF/4OgzAmFsC9M19T+RSalBD/Vu86w5
         wr+X3rFnIPNZ5TsXJ7xBVY3jrzt2aDcs4vTl7yLwOyqbS+oNA4fNl8GRfxUOmsZNwRp6
         x/MpNqpGPVWBmpsiNAvNx1X2q4biAX1KSqmVj0Z/OeENNfseklRp41dyWsX/mGkftPWY
         BlPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787700625; x=1788305425;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cndKMivpb/zq9l1MOwShcxG6ZgxSbYDskBB2dlySJbM=;
        b=m3qT+dOvIa2IcQK3OWaWGtRq+yMWWVYecwLjVP7S4N86R9bpzjQzZbUhMHZaOflJUJ
         HpJizLNccTzV85787HuxidFeUO8JNiPrB2E1qZ/PA03+LQdsmyhVnQHsWJLy959ZWJai
         5Ov1yDMZ3mIQovnuYIrGixbRsMCGFRpOUpESRgXnyDLF/R7EPprg8GWQrHAZGig2x7cy
         1+JFUSBBLYpz/WcRtJeSKuMTKPypN3maKOXelxwSs+Mw8YNv9nvJp1gpZyjeiFQe0C1/
         dZZ8PeqCFr+daNej2DFW1L2tVjJ3fhrnVhnr6Zyn3UoX2JquzivTj8DTdcv/t8vBWCH0
         cCgA==
X-Forwarded-Encrypted: i=1; AHgh+RqveSGJzxQEIH/sbpjPxQwT7kMfkgc5WXzTtjlKVNLO1oLbseNVVzosBbfUpxn6Y9u5RqFyAOdt@lists.infradead.org
X-Gm-Message-State: AFuF++nee3Echug3HQWTiL/tfAfH3+uV9q5pHV0pNvUUHFZ4Egq/1FfJ
	RQFCZPbvDQHGSgMzS7+cXucKSVCnBPWxuc1fG9E85jmlw0q2UQfzmhZSrnnykUTUyQaoWFzgZPR
	/46q1AiZp57YuyqWXN0SwFh4UwyNXa8p6bNEu
X-Gm-Gg: AR+sD104aMeUe5UT/P/qKCKqfk8FEMAm7BMlkVwLvA4nQR6qh7rWYklIqidSxCDOBGL
	eEBY2+7HkaXGI4aNY14kjVktQE1KHc1HsS/SHKeiyFPEjUa32388vjvLmv/3No+NmHtkHfRxg2q
	rdGSzGuQalYjNKvznS1DudOpjW5DIiWMAGiZLxDKGVbeo9oNijwyq9pHVBQuuVdnEDFErzylZuQ
	4e9PMAGj/aXNw5VcEwHGYfsXkZhebzK+10fYr7uOumW10C5sys9izI4bDN3is4efIbv8BtC2dWs
	3pR7ztbQqUT9QHxNc+WaYhlAiTu/athMY6xjBaNLwue3ELwmGSL9yMfWyT6uOHKa8H47gsGe3+V
	aOB9WzmvdAAAXlg+9fhUBQu3eGW1WwYrKycPsCzjqoLVypq84hgzmWSEqURpn7A==
X-Received: by 2002:a05:6a21:3315:b0:3c3:875d:c52f with SMTP id
 adf61e73a8af0-3cf83239ac1mr4031530637.10.1787700625053; Tue, 25 Aug 2026
 16:30:25 -0700 (PDT)
MIME-Version: 1.0
References: <20260825030548.473672-1-chalianis1@gmail.com> <20260825030548.473672-4-chalianis1@gmail.com>
 <d7543375-fbad-495c-a1a5-3556a4f6090e@pengutronix.de>
In-Reply-To: <d7543375-fbad-495c-a1a5-3556a4f6090e@pengutronix.de>
From: anis chali <chalianis1@gmail.com>
Date: Wed, 26 Aug 2026 01:30:13 +0200
X-Gm-Features: AcwNN1XvBcfnRQHZpmdPXUCTzuQywhWyEwEysbDx8A3bGVL6W5IoJ-kMqn3yy9I
Message-ID: <CAL+1fyAgM2hKxoiaVE6kh54pS8Umc5cvT1SsLqfmgZGA65QA4g@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] efi: payload: export resolved state as a
 BareboxState UEFI variable
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_163027_002000_31860ACC 
X-CRM114-Status: GOOD (  36.80  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, Le mar. 25 août 2026 à 19:04, Ahmad Fatoum a écrit
   : > > Hi, > > On 8/25/26 5:05 AM, > > From: Chali Anis > > > > When a "barebox,state"
    node is already reachable via barebox's live > > devic [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2607:f8b0:4864:20:0:0:0:429 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
                             digit
                             [chalianis1(at)gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [chalianis1(at)gmail.com]
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-6.31 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_MIXED(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	R_DKIM_REJECT(0.00)[gmail.com:s=20251104];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_IN_DNSWL_NONE(0.00)[2607:f8b0:4864:20::429:received];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 9CEEE2021C8
X-Rspamd-Server: mx1
X-Stat-Signature: s7tkm9ydmit11t37sbqbd1rp9a3rune1

Hi,

Le mar. 25 ao=C3=BBt 2026 =C3=A0 19:04, Ahmad Fatoum <a.fatoum@pengutronix.=
de> a =C3=A9crit :
>
> Hi,
>
> On 8/25/26 5:05 AM, chalianis1@gmail.com wrote:
> > From: Chali Anis <chalianis1@gmail.com>
> >
> > When a "barebox,state" node is already reachable via barebox's live
> > devicetree (statically compiled in, or injected by
> > CONFIG_STATE_OVERLAY), render its fully resolved description - backend
> > phandle included - with of_state_fixup() and publish it as a
> > "BareboxState" UEFI variable, so an OS-side consumer can locate the
> > state layout without needing a separate state.dtb file on the ESP.
>
> Why not pass along the whole barebox DT? For EFI payloads, that's
> effectively the state and the backend already and in case we gain more
> content in future, it will just be passed along as well.
I understand, so we should call the efivar BareboxDT-XXXXX ??
or If we keep the variable name BareboxState and pass the entire device tre=
e,
going forward we would only support state definitions within the barebox DT
in efi payloads???

> >
> > state_to_efivars_export() and efi_late_init() are both late_efi_initcal=
l,
> > and within one initcall level, execution follows definition order in th=
e
> > object file, so state_to_efivars_export() must be defined after
> > efi_late_init(): on boards with no state node in their own static
> > devicetree, efi_late_init() is what loads and registers
> > /boot/EFI/barebox/state.dtb, and only once that has had a chance to run
> > does state_by_alias() have anything to find. Defined the other way
> > around, state_to_efivars_export() would always run first and never see
> > a state.dtb efi_late_init() had not loaded yet - it would only have
> > happened to work when CONFIG_STATE_OVERLAY had already registered the
> > node much earlier, at postcore_initcall, a narrower case than the
> > state.dtb fallback efi_late_init() exists to support.
> >
> > Look the state instance up via the state_by_alias() helper
> > (common/state/state.c) rather than open-coding the equivalent
> > of_find_node_by_alias() + state_by_node(). This also means state not
> > being set up yet is just a clean no-op, rather than the -ENODEV that
> > open-coded version returned, which would've been logged as an initcall
> > failure for what is an entirely ordinary condition.
> >
> > Assisted-by: Claude Sonnet 5
> > Signed-off-by: Chali Anis <chalianis1@gmail.com>
> > ---
> >  efi/payload/init.c | 51 +++++++++++++++++++++++++++++++++++++++++++++-
> >  1 file changed, 50 insertions(+), 1 deletion(-)
> >
> > diff --git a/efi/payload/init.c b/efi/payload/init.c
> > index f0ce2a82cefc..cdb73afffa2c 100644
> > --- a/efi/payload/init.c
> > +++ b/efi/payload/init.c
> > @@ -287,7 +287,6 @@ core_efi_initcall(efi_register_firmware_nodes_fixup=
);
> >  #define EFI_LOADER_FEATURE_SECUREBOOT_ENROLL       (1LL << 11)
> >  #define EFI_LOADER_FEATURE_RETAIN_SHIM             (1LL << 12)
> >
> > -
> >  static int efi_postcore_init(void)
> >  {
> >       const struct efi_device_path *parent_image_dp, *loaded_image_dp;
> > @@ -404,6 +403,56 @@ static int efi_late_init(void)
> >  }
> >  late_efi_initcall(efi_late_init);
> >
> > +/*
> > + * Must run after efi_late_init(): on boards with no state node compil=
ed
> > + * into their own devicetree, efi_late_init() is what loads and regist=
ers
> > + * /boot/EFI/barebox/state.dtb (or, on CONFIG_STATE_OVERLAY targets, t=
hat
> > + * already happened much earlier). Only once that has had a chance to =
run
> > + * does state_by_alias() have anything to find here.
> > + */
> > +static int state_to_efivars_export(void)
> > +{
> > +     struct device_node *np;
> > +     struct state *state;
> > +     void *fdt;
> > +     size_t size;
> > +     int ret;
> > +
> > +     if (!IS_ENABLED(CONFIG_STATE))
> > +             return 0;
> > +
> > +     state =3D state_by_alias("state");
> > +     if (!state)
> > +             return 0;
> > +
> > +     np =3D of_new_node(NULL, NULL);
> > +     if (!np)
> > +             return -ENOMEM;
> > +
> > +     ret =3D of_state_fixup(np, state);
> > +     if (ret)
> > +             goto out;
> > +
> > +     fdt =3D of_flatten_dtb(np);
> > +     if (!fdt) {
> > +             ret =3D -ENOMEM;
> > +             goto out;
> > +     }
> > +
> > +     size =3D fdt_totalsize(fdt);
> > +
> > +     efi_set_variable("BareboxState", &efi_barebox_vendor_guid,
> > +                       EFI_VARIABLE_BOOTSERVICE_ACCESS |
> > +                       EFI_VARIABLE_RUNTIME_ACCESS,
> > +                       fdt, size);
> > +
> > +     free(fdt);
> > +     ret =3D 0;
> > +out:
> > +     of_delete_node(np);
> > +     return ret;
> > +}
> > +late_efi_initcall(state_to_efivars_export);
> >  static int do_efiexit(int argc, char *argv[])
> >  {
> >       if (!BS)
> >
>
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>

best regards.
Anis


