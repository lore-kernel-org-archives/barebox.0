Delivery-date: Thu, 12 Oct 2023 17:01:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqxC2-005ss7-E1
	for lore@lore.pengutronix.de; Thu, 12 Oct 2023 17:01:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqxC0-0000bM-QK
	for lore@pengutronix.de; Thu, 12 Oct 2023 17:01:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VM5VfQQVxboRRUwCMcBRsOw+cigpjxTIrzvNt7icG7M=; b=sA3u7DQ+Ru9guwwf44EfKlwR+L
	uelnRARKoEdUyOJyjzf9UkKhkBQoTnVLMPJTtaJs3kMSiO2piGL9fD3adap48TkzB7s4CpEoKfTM2
	UbCMXl1f/VUI8gFG/VJSdjAFxotUZj4p3XRnaBlVr7hACqNBHMOEynmOQOV971sh6YXRJNsCE6uEm
	xNF1MM72Dz1AvVcRUYKopx413n6tFHLTlTpwsqv+Zdao+mmX0pb67xnuCLUgwq36aW0XCmzrsG+GB
	i68TvVNPG2sBb5hkmw5y7md4imjvYW2OIHw27QRN6eR2tTzTaLCQQ7wsfIVV17j+fR3OGqImAs3Mi
	TboeliHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqxAT-001EZT-0Q;
	Thu, 12 Oct 2023 15:00:05 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqxAO-001EYd-0N
	for barebox@lists.infradead.org;
	Thu, 12 Oct 2023 15:00:02 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-27cf7ef0ef4so814649a91.0
        for <barebox@lists.infradead.org>; Thu, 12 Oct 2023 07:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697122797; x=1697727597; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VM5VfQQVxboRRUwCMcBRsOw+cigpjxTIrzvNt7icG7M=;
        b=iiS+yPcO+ek79ZEa/iFhRsXLjc12JgAHzO/oHY+ZIINPVF8KjY9Q26t1GmsaRShw8/
         R8ILNt4KiWuZsjJ2VKSJjz/LC55BAee5yeqtvRlAp8O2tjpN7GeElVANyk1z5Hr7Zr64
         WotjRIjRnef59YpYTnPgEy/QhqpxbejGYTSadN1uuajLGrX/QK1aS1xAe+v06VxHqX2s
         eXCYbdzYtlH6V+T+ruWR0jLOqhDlqtdPWHSjnRAOpjBdCY2flUuTe/ftw0SYn2wtmDA6
         34alvo1LZ6IUKT8RhIOHcUMlhA0AOdP64pfvupcPORn4+TZ2arCUmq8C1sE/MqyduARY
         0I2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697122797; x=1697727597;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VM5VfQQVxboRRUwCMcBRsOw+cigpjxTIrzvNt7icG7M=;
        b=CSkGd0OBhQ25FgiPtEIbmMbxOgtAe5EQx21utHqCfL3qkK/DdIS8MDrKmkw99A7qrF
         zGVHP/hqDLPOjGnWTa6Dn2nYa6QgDGM3eCrCVHdUxIk5PN9n3CRXhCB/sRG0PWVDGh4p
         jvUpf58SzfOvnIj64EaJQIrkxO4TB1jwB9bYWBF0LGGIaX3Zmgv/4t3oCPLK8YGftikE
         KUN+cALVWoXBuUhDqYKxc9GaNiCQ3HEJIc/XjT54rxxcwcVTkQwR4hacz2x9GNUxjRmQ
         AeF2ofAMnnuQE+uNPnyxngcymEdCMGXEVZ6wn3uJTZVQN4B7Fc0M6IC6IByqvmtqU5gv
         +Fbw==
X-Gm-Message-State: AOJu0YxrpNcGDyQlRLgQTINrx9dj9HD6kgUbjhWQa/sOaMk7yDhCAAQ7
	jCcOGsoSFFM5vceIpYIVbM7wG8SPAtsuFIkw1xaZYnSY
X-Google-Smtp-Source: AGHT+IF4kDnxmLFw8wkTrJc65ElkINSCOlIKdzoYYDWmIARTNsCsGIDC7cfowQK+dNFbDPy+urIWEPz9xnPJsDoM5dA=
X-Received: by 2002:a17:90b:4ad0:b0:274:a021:9383 with SMTP id
 mh16-20020a17090b4ad000b00274a0219383mr24175840pjb.17.1697122797326; Thu, 12
 Oct 2023 07:59:57 -0700 (PDT)
MIME-Version: 1.0
References: <20230911155927.3786335-1-a.fatoum@pengutronix.de>
 <20230911155927.3786335-3-a.fatoum@pengutronix.de> <20230912104903.GA637806@pengutronix.de>
 <87e96b20-ae2c-9679-29e4-1c54ee24948a@pengutronix.de> <20231006115908.GH235829@pengutronix.de>
In-Reply-To: <20231006115908.GH235829@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 12 Oct 2023 17:59:45 +0300
Message-ID: <CAP1tNvRLTzhkiVvun=+yHkxm1jtX_xQNg0rXCM5HEeGNNQ10wA@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231012_080000_192942_85DC07B8 
X-CRM114-Status: GOOD (  48.07  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/3] net: add generic MAC address derivation from machine ID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

Any news on this patch?

=D0=BF=D1=82, 6 =D0=BE=D0=BA=D1=82. 2023=E2=80=AF=D0=B3. =D0=B2 14:59, Sasc=
ha Hauer <sha@pengutronix.de>:
>
> On Tue, Sep 12, 2023 at 02:34:28PM +0200, Ahmad Fatoum wrote:
> > Hi Sascha,
> >
> > On 12.09.23 12:49, Sascha Hauer wrote:
> > > On Mon, Sep 11, 2023 at 05:59:27PM +0200, Ahmad Fatoum wrote:
> > >> From: Ahmad Fatoum <ahmad@a3f.at>
> > >>
> > >> Especially during development, devices often lack a MAC address. Whi=
le a
> > >> MAC address can be easily added to the environment:
> > >>
> > >>   nv dev.eth0.ethaddr=3D"aa:bb:cc:dd:ee:ff"
> > >>
> > >> It's easily lost when flashing complete new images, e.g. from CI.
> > >> Make the development experience neater by deriving a stable MAC addr=
ess
> > >> if possible.
> > >
> > > I like this, because my Fritzbox network overview is full of duplicat=
e
> > > entries coming from boards with random MAC addresses.
> >
> > Glad you like it. If you are ok with the first two patches, can you tak=
e
> > those until I respin this?
> >
> > >
> > >
> > >> @@ -558,6 +559,7 @@ static int of_populate_ethaddr(void)
> > >
> > > This function should be renamed. When reviewing this patch I asked
> > > myself why you limit generating a fixed MAC address to the DT case un=
til
> > > I realized that you actually don't. I was just confused by the functi=
on
> > > name.
> >
> > Ah, didn't notice that. Will rename.
> >
> > >
> > >>  {
> > >>    char str[sizeof("xx:xx:xx:xx:xx:xx")];
> > >>    struct eth_device *edev;
> > >> +  bool generated =3D false;
> > >>    int ret;
> > >>
> > >>    list_for_each_entry(edev, &netdev_list, list) {
> > >> @@ -566,11 +568,18 @@ static int of_populate_ethaddr(void)
> > >>
> > >>            ret =3D of_get_mac_addr_nvmem(edev->parent->of_node,
> > >>                                        edev->ethaddr);
> > >> +          if (ret && IS_ENABLED(CONFIG_NET_ETHADDR_FROM_MACHINE_ID)=
) {
> > >
> > > This check doesn't seem to be needed, generate_ether_addr() already
> > > returns -ENOSYS when this option is not enabled.
> >
> > Until we have LTO, I'd like to keep this in, so the function need not b=
e called.
> > In this instance, I find it is a less ugly alternative to have #ifdef a=
nd static inline..
> >
> > >> @@ -381,9 +419,16 @@ static struct net_connection *net_new(struct et=
h_device *edev, IPaddr_t dest,
> > >>
> > >>    if (!is_valid_ether_addr(edev->ethaddr)) {
> > >>            char str[sizeof("xx:xx:xx:xx:xx:xx")];
> > >> -          random_ether_addr(edev->ethaddr);
> > >> +
> > >> +          ret =3D generate_ether_addr(edev->ethaddr, edev->dev.id);
> > >
> > > For most network devices we won't get here because of_populate_ethadd=
r()
> > > will already have done it for us. It's only used for devices that are
> > > probed after postenvironment_initcall(), namely USB devices.
> >
> > Or those that don't have CONFIG_NET_ETHADDR_FROM_MACHINE_ID enabled
> > or don't have a machine ID set.
> >
> > > I think this deserves a cleanup before we merge this. The original
> > > reason to introduce a postenvironment_initcall() for getting the MAC
> > > address from nvmem was:
> > >
> > >> We do this in a very late initcall, because we don't want to enforce=
 a
> > >> probe a probe order between nvmem providers and network devices. We
> > >> can't do it at randomization time, because we need to fixup Ethernet=
 mac
> > >> addresses, even when barebox itself doesn't ifup the netdev.
> > >
> > > I think we should have one centralized function that retrieves the MA=
C
> > > address for an ethernet device. That should be called when we actuall=
y
> > > need that MAC address, so once in net_new() and once at of_fixup time=
.
> > >
> > > Right now the behaviour is inconsistent with regard to random MAC
> > > addresses. Currently we propagate the random MAC address to the Linux
> > > device tree when we use ethernet in barebox, but we don't propagate i=
t
> > > when we do not use ethernet in barebox. We should decide what the
> > > desired behaviour is and do it consistently regardless if we use
> > > ethernet in barebox or not. This could be cleaned up along the way.
> >
> > Randomized MAC addresses are a necessary evil when barebox needs to do
> > networking and doesn't have a stable address. If we have a stable addre=
ss,
> > we shouldn't randomize.
> >
> > Fixing up a randomized MAC address is a lesser evil than having differe=
nt
> > MAC addresses for barebox and Linux. If we don't need a MAC address in =
barebox,
> > we shouldn't generate a random one just to fix it up.
> >
> > If we have a stable address, we should tell Linux about it.
> >
> > That's the logic of the current code and it's sensible to me. Why chang=
e it?
>
> Ok, makes sense. Let's go for it then.
>
> Sascha
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


