Delivery-date: Mon, 12 Sep 2022 11:06:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXfOi-0023H2-A8
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 11:06:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXfOg-00019Q-PV
	for lore@pengutronix.de; Mon, 12 Sep 2022 11:06:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HoXaGpigLtV3U4XJy29aEYsJXufOFCI1TrtZiv2c7wE=; b=jNqRugzlPUWkIs5PbUE5n/Z+4J
	WuOMNeZHtD3zlBo37JVUtWk2XyKRt5w7KOfwRkheWf18tYFWUg6MWXO6tBxiK4ME0P8D7Bc2b+w5M
	hEdzWI/i9BtYphycdQjrtOE2asL10bTqzoCw5gx4np7ZX8RT/MZ4NmAJOtDzW/QaMwZ/eANOm7Wrm
	I42UVhbcK/TW+OEVQp+SEOUSjEsTcZ1bgdqvMEI8FOXogOxazAVvqbuNtEOE7XeCgQnfnZwpfnLk4
	Hkb2IANyfb7ikiMrVV0Xr97wrHOUglzYjJGAoUlTctNngkX/plhrwHbfgP2mb70AS9KvniN4w7ZWh
	DHDVBaMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXfMy-0085ll-PF; Mon, 12 Sep 2022 09:04:45 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXfMc-0085d7-CP
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 09:04:34 +0000
Received: by mail-lj1-x22b.google.com with SMTP id x10so9736175ljq.4
        for <barebox@lists.infradead.org>; Mon, 12 Sep 2022 02:04:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date;
        bh=HoXaGpigLtV3U4XJy29aEYsJXufOFCI1TrtZiv2c7wE=;
        b=NIfGcjF9PcjyvjS1mAKAbt/lNjlU/3fPz7qoAqTg44o2EEdNP3vSCitUN4JEO3TlsF
         CJJdc75P1KP4eWn5nQh/BbBZdxJ6X6RP4mBb0x3R0VFosKkShDNxLWjuoqGdRgkOBxo9
         ZZHwQrHXrgLZsdvyutfxQu46zIsUBS3CaT8a0jBi28n8QdW8rGYRJeFsUQBYfTmF+97e
         ajSKwT5hqbFpSZCdmzRsCjxndsfxfzWFIaizPFGP8Tp5fUNjORds/irxeMgRGWPir4Sx
         ZKDRVVPHkh6uZ4tJyq7dfLqPCiLEacCVpdl0bEGUdNPaOm9HnkGRGcvqepC9ds4PMiZw
         zQpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date;
        bh=HoXaGpigLtV3U4XJy29aEYsJXufOFCI1TrtZiv2c7wE=;
        b=wxenyJUBITwx6VkJ4sc/j+xamGirKDg24tnEejs5scuL9hJ3Gk6sRhDgmC2Kkt5+A7
         uQpe3Mpah2wQFXdccjhg4/OabcCiL6TuzwdBmo9zm8GuDlOlH9/8SMiHxYfz5PZor7J9
         okXcZ5IunlaGSHB5yUaaKsj4Z8btE3s3yzy73AzWHlqcO1kbRUOIfD0psm8kDB9r0BpG
         0nHXed1z2XMYOYF5j3WFGinRxKnD/uvMfL2KWnU/8WMuOM4cg+RpgbpE4aw4xRyBPOWz
         XpY3LJk/XuIoijSbsn9JLmvbEpT1aziL4gka1OcXoeeFBpVrz8JhaQ6E/+HaBQnakcvR
         Tr3A==
X-Gm-Message-State: ACgBeo32LJ/RVbGtpYt+H+F7hyib2N526ute3jj9fHFu7NxeZdoZ9sDc
	5NvrskUq3Mo6XCSihV7NWAQ=
X-Google-Smtp-Source: AA6agR4whHo9mWz9AMtvjYtMEPs+skd/WdDoA4hZHjtiT6JjTIZuXQxLIIVmF5ZY2N9e2AiRkyd1YQ==
X-Received: by 2002:a2e:b16d:0:b0:26a:d1da:db8 with SMTP id a13-20020a2eb16d000000b0026ad1da0db8mr6937132ljm.217.1662973458660;
        Mon, 12 Sep 2022 02:04:18 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
        by smtp.gmail.com with ESMTPSA id l25-20020a194959000000b00492c663bba2sm947758lfj.124.2022.09.12.02.04.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 02:04:18 -0700 (PDT)
Date: Mon, 12 Sep 2022 12:07:34 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Trent Piepho <trent.piepho@igorinstitute.com>, Oleksij Rempel
 <o.rempel@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>, Barebox
 List <barebox@lists.infradead.org>
Message-Id: <20220912120734.3fa82231ca6d16ba604ee262@gmail.com>
In-Reply-To: <20220912080152.GE24324@pengutronix.de>
References: <20220907112118.71575e3650222736432b3086@gmail.com>
	<20220912080152.GE24324@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_020422_465202_89CECB6F 
X-CRM114-Status: GOOD (  26.69  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Makefile.lib: cmd_dtc: warning: missing whitespace after the
 macro name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, 12 Sep 2022 10:01:52 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

Hi Sascha!

> On Wed, Sep 07, 2022 at 11:21:18AM +0300, Antony Pavlov wrote:
> > Hi Everyone!
> >=20
> > During MIPS ath79_defconfig build I have a 'missing whitespace after th=
e macro name' warning:
> >=20
> >   AS [P]  arch/mips/dts/ar9331_tl_mr3020.dtb.pbl.o
> >   DTC     arch/mips/dts/ar9344-tl-wdr4300-v1.7.dtb
> > <stdin>:1:9: warning: missing whitespace after the macro name
> >   XZKERN  arch/mips/dts/ar9344-tl-wdr4300-v1.7.dtb.z
> >=20
> > E.g. see https://gitlab.com/frantony/barebox/-/jobs/2969826747#L47
> >=20
> > The reason is the scripts/Makefile.lib generates a C macro with the poi=
nt symbol in the macro name because the arch/mips/dts/ar9344-tl-wdr4300-v1.=
7.dts file name contains the point symbol before '.dts', as a result we hav=
e:
> >=20
> >   #define ar9344_tl_wdr4300_v1.7_dts 1
> >=20
> > e.g.
> >=20
> >   barebox$ grep -RHn -o "define ar9344_tl_wdr4300_v1.* 1" . 2>/dev/null
> >   ./arch/mips/dts/.ar9344-tl-wdr4300-v1.7.dtb.cmd:1:define ar9344_tl_wd=
r4300_v1.7_dts 1
> >=20
> > cmd_dtc in scripts/Makefile.lib substitutes the '-' symbols with the '_=
' symbols but do nothing with other unwanted C preprocessor macro name symb=
ols.
> >=20
> > It looks like the linux kernel has no problems with extra point symbols=
 in dts file names, there are several files with extra dot in dts:
> >=20
> >   barebox$ find dts/ -iname '*.*.dts' | wc -l
> >   33
> >=20
> > So we have to fix Makefile.lib.
> >=20
> > This simple patch fixes the warning problem:
> >=20
> > diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> > index 16308497b84..2f79656c1e9 100644
> > --- a/scripts/Makefile.lib
> > +++ b/scripts/Makefile.lib
> > @@ -363,7 +363,7 @@ $(obj)/%.dtb.z: $(obj)/%.dtb FORCE
> >  dts-frags =3D $(subst $(quote),,$(CONFIG_EXTERNAL_DTS_FRAGMENTS))
> >  quiet_cmd_dtc =3D DTC     $@
> >  # For compatibility between make 4.2 and 4.3
> > -cmd_dtc =3D /usr/bin/env echo -e '$(pound)define $(subst -,_,$(*F))_dt=
s 1\n'$(foreach f,$< $(dts-frags),'$(pound)include "$(f)"\n') | \
> > +cmd_dtc =3D /usr/bin/env echo -e '$(pound)define $(subst -,_,$(subst .=
,_,$(*F)))_dts 1\n'$(foreach f,$< $(dts-frags),'$(pound)include "$(f)"\n') =
| \
> >  	$(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) - ; \
> >  	$(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 \
> >  		-i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) \
> >=20
> > I suppose that this simple patch may lead to some undesirable side effe=
cts.
>=20
> One side effect is that this gets even less readable.

Yes, you are right :)

> Another one would be that two dts filenames which only differ in the
> usage of '.' and '_' would result in the same define, but I think that
> case is negligible as this define is unused in barebox itself. It could
                                       ^^^^^^^^^^^^^^^^^^^^^^^^
> be used by external dts fragments passed in via CONFIG_EXTERNAL_DTS_FRAGM=
ENTS.
>=20
> Other than that, what side effects are you afraid of?

I have an idea that someone relies on these *_dts macros.

Now I see (as you have noted above) that there is no macro users in mainlin=
e source tree:

  $ git grep -w .*_dts
  common/Kconfig:   #ifdef foo_board_dts
  scripts/Makefile.lib:cmd_dtc =3D /usr/bin/env echo -e '$(pound)define $(s=
ubst -,_,$(*F))_dts 1\n'$(foreach f,$< $(dts-frags),'$(pound)include "$(f)"=
\n') | \

--=20
Best regards,
=A0 Antony Pavlov


