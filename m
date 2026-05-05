Delivery-date: Tue, 05 May 2026 15:02:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKFQD-001FS5-1F
	for lore@lore.pengutronix.de;
	Tue, 05 May 2026 15:02:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKFQ8-0001Pv-6z
	for lore@pengutronix.de; Tue, 05 May 2026 15:02:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0S4NWBq8AAw5rXEeCRyt0K3eyFCUds5RJjBroAZHEyM=; b=umXIvMopY80K/G8+vU8Zpz7Lzv
	vtXm/p23HxX70oobrqUR7m6KkYb0HdENPH49sV9LSwhLZeRUd9iLSM9KTngkJUZCxQTGF9w0tYQM9
	LN1yOr1MxBZwuqhI5Vjw3kq4BksCTyATI6Tp2tTF9QN6k+/cclVWyRWV426YWqq4E2ufrlj+otxOC
	g9LNi5kbf8tGkFEk1as8yCQQI641nLMj+j1Yuyuz1FWJZaoDNLfj5lRG9hCs9qdmt2CMomuGO71dM
	/RjqFTrypPiloSX5UCYkIVyzaPbLRTk/NpOypCIwagrlvcs9S7jAwTLSHtkl8ZAbqK5lljP2+SWwW
	W2RwpbFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKFPM-0000000GGey-304V;
	Tue, 05 May 2026 13:01:52 +0000
Received: from mail-dl1-x122c.google.com ([2607:f8b0:4864:20::122c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKFPJ-0000000GGa8-3pFC
	for barebox@lists.infradead.org;
	Tue, 05 May 2026 13:01:51 +0000
Received: by mail-dl1-x122c.google.com with SMTP id a92af1059eb24-130c9dcbd25so236951c88.1
        for <barebox@lists.infradead.org>; Tue, 05 May 2026 06:01:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777986109; cv=none;
        d=google.com; s=arc-20240605;
        b=Vi2TfkXhxb4av95GSLgRXKVSCIhniozytnMJTVKPIyk9bXs8NCM3/BsOYj4MVpjOn7
         O3wquyYALGrH8OdOkHOwf1GosxvAjeAuDVO6c/UFg9bqJmuEaTU4Lr4feEXPr9AmuCWp
         JDesFIr8FX9fVTt5ZJNwdqKr5J1vBQK2Qh8nwdJPK2qHfzSve0zaAjzGLoEEU6VqPFFt
         4S2j3mRohp6hGl1vey++8MSSS0vltVzSOJYmeZVMr0Pzflks0u9nMIKfcm78RJn9eNEe
         SW4cY7KENPElQrNtKtv2Xs8LbT3e4qgZfSGFQXlCZ64DnrP5pmh8jfqVqURnvMct6wN0
         21Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=0S4NWBq8AAw5rXEeCRyt0K3eyFCUds5RJjBroAZHEyM=;
        fh=7Yiba8wXx+vLUz4ud+g5VaEZLPel68E1Fvl1EGss/6I=;
        b=aZOdg20JdkOnRi2pkpBIYVTFm6QNIhCysNMAozCgxuNPcY5sHfdXXsNbY56eTnJ/9k
         Lt0NQxmQJ8uwN9/LejmAYhAEw7D0FGLXg5smJdRb1QDxY2Nqp2onP+Jn5NzHtWy3VTaw
         tw0JS8Sp9oIsx59PHlDG2iMgihC+jTYTpPUQkcp/1oUSsnUb+xh6F6XagBMlf/4saguI
         sxE0b554V/MuzRJ7G6txutG8h/h2X0jLRTSHVBt1asCvnCVg5XUaZbgiiJUmskx/wteS
         YRGQhkNO6c9FxL2eHWyKCggnos/pLYCLon74wZ5Kqyjb7zBE0F+wRW0CilOSnOHKQNUm
         QF0Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777986109; x=1778590909; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0S4NWBq8AAw5rXEeCRyt0K3eyFCUds5RJjBroAZHEyM=;
        b=JRemVntEJPlAVY0zMu+0hHV/w8UoBFtNwwseIB3f78UnhML0pUFZK+SVgK0eVhkcnf
         7+dz3K1Ls23kvuu2z9wMF19PkvB4WtyPF2JR+t8cA6+cuUzUCWrEAvPUEc+AkpPDBuI7
         3FeHO/vVB1OXHlt0rLHasmhwUJAPxMkz/6uryS81aZxZS0joPGK0NUFgJgH9Lu6vQIsp
         er9s7BNjEgbuXXga4yK8LKYXDkH42hqhdU1rtZKFYa/VKfcfYb3BnuHiCpziG1idL2j8
         +kikigTHh1+qMsE4D6rNt3Xzw3p80KDkqAyZeDxdJG3/KXMudn1WlaYIVSUphUNz9ZVe
         bjxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777986109; x=1778590909;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0S4NWBq8AAw5rXEeCRyt0K3eyFCUds5RJjBroAZHEyM=;
        b=rhvahU1BAkvtq99cFglEbtOQGSVFgpsxaTEAw8c9v7UaPoe2hwTGuU6M4893Mj8Z5z
         APkHsHkEkt04hFwBoa+Zb9EbpOBN3sdEkRQ/GJNLvtAkJ6UFakpWWM7h4N2JoIo6njl2
         uNOjeVBaeEpZdIisk8pexSIjXTukNLp/z0zA4P2H5FwycfCaLjvEM7134cnRO/Xg9gXV
         J8xk3Qy26RRxXVzkPWr+RoQ5Q45UZJdHiaM2fP4mRa1An6UxdocKNdccFwWYwXeGRZDK
         xKBIkZi+Mot7Ju47ettAwVAFoVZc2KsPYt96LAlljioU0Rp4WhIwv75Kji7RIEQw2+gn
         JntA==
X-Gm-Message-State: AOJu0YyzRCkEs/L5ggCEOy0roJN9Z5QPec7KE0OPf0BEqtHAcbwwnbm5
	10G8lJIcUrTfX3Kb4GJyjTuTBw7Y/bItQFMkGsCojShfY2f12hbn2HUXWkVk5A3VNxBtcgy3tfJ
	xkj4ENIG7H125iqmElcbuy+C6AUxSb1V18mmVZoKrZPBD
X-Gm-Gg: AeBDieuLKV4+R8rKmjdPcz0JtOWQmdrDkscYbr6EDK1w5XcOUOpbx4d5iFI7wm/IXtL
	ot+PEo1ON+whnbOdNMloNdJQJTJKbu1X45TUo2sVLA9glnOMcjVQQG/cfAvJ5Pz1gvlTvBVfHqB
	CHNzBRk8MEkw86+KoTktf7dixSPVN12Uqvo1YrEGz8G7hImkCJWKVUsZF62QvCDyYZxVX+90MlT
	czORNX2TsodOyuXrsSLaDeWEHRYovETb1xX4kHdudaEAljeLNbUN3AdyPUhNBBR1e4KR/Zm3lqK
	ZNOwKgoSgClPHV3/6M8=
X-Received: by 2002:a05:7022:497:b0:12d:de3e:86af with SMTP id
 a92af1059eb24-130a9fec67emr1525684c88.18.1777986108480; Tue, 05 May 2026
 06:01:48 -0700 (PDT)
MIME-Version: 1.0
References: <20260428132811.3691086-1-eagle.alexander923@gmail.com>
 <c3a17e51-3624-4215-b352-6dce10e1a1b4@pengutronix.de> <CAP1tNvShGMqgQ+MHq46n0q_VhqscNz3wNbgnCDaF20n=T-M_aA@mail.gmail.com>
 <4e34c9f9-816a-4242-a324-0f23505e9cc8@pengutronix.de> <CAP1tNvQkpV-UprEMqx16vbxtmCCLGpQi3enhSc07rQixU+TrtA@mail.gmail.com>
 <32447f15-ff62-4215-a845-376f28261b87@pengutronix.de> <CAP1tNvRkGxsKGsvGhTdcM9zL_y46wWOS58tVCLwyxLANXVjenw@mail.gmail.com>
 <76f2bbf8-e069-4cbc-8f14-f473ed731c0f@pengutronix.de>
In-Reply-To: <76f2bbf8-e069-4cbc-8f14-f473ed731c0f@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 5 May 2026 16:01:37 +0300
X-Gm-Features: AVHnY4KWjZJ97h71Gj2u-2KzxEVAYEgYS9nGFCFiFWOYxbsp7_402W6NWmsoTDU
Message-ID: <CAP1tNvTccMsDKF4GVq+z-cDzeaLs3A6s0h-Mrfre8hph8y90fQ@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_060149_959550_269D6FBB 
X-CRM114-Status: GOOD (  28.21  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] Add support for extlinux.conf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There is another question: is it necessary to call
globalvar_remove("linux.bootargs.dyn.bootentries")
in extlinux_entry_free()?
We can run bootm multiple times in dry-run mode, and the variable may
become invalid...

=D0=B2=D1=82, 5 =D0=BC=D0=B0=D1=8F 2026=E2=80=AF=D0=B3. =D0=B2 15:52, Ahmad=
 Fatoum <a.fatoum@pengutronix.de>:
>
> Hi,
>
> On 5/5/26 2:44 PM, Alexander Shiyan wrote:
> > barebox@Diasom DS-RK3568-SOM-EVB:/ global
>
> > Loading ARM aarch64 Linux/EFI image '/mnt/mmc1.2/boot/extlinux/../vmlin=
uz'
> > Camera IMX662 detected.
> > commandline: console=3DttyS2,1500000n8 root=3DLABEL=3DROOT ro
> > systemd.unit=3Dsetup.target quiet splash  root=3D/dev/mmcblk1p3
> > systemd.machine_id=3D181af2816b4c6b0aef77068e0ccc69ad
> > Loaded kernel to 0x0a400000, devicetree at 0x000000000fb49000
> > nv variables modified, saving them
> > I/TC: Secondary CPU 1 initializing
> > I/TC: Secondary CPU 1 switching to normal world boot
> > I/TC: Secondary CPU 2 initializing
> > I/TC: Secondary CPU 2 switching to normal world boot
> > I/TC: Secondary CPU 3 initializing
> > I/TC: Secondary CPU 3 switching to normal world boot
> >
> > Now it works!
>
> Great. I think with the rest of my feedback integrated, the v3 should be
> good to go.
>
> Thanks,
> Ahmad
>
> >
> > =D0=B2=D1=82, 5 =D0=BC=D0=B0=D1=8F 2026=E2=80=AF=D0=B3. =D0=B2 15:22, A=
hmad Fatoum <a.fatoum@pengutronix.de>:
> >>
> >> Hello Alexander,
> >>
> >> On 5/5/26 2:19 PM, Alexander Shiyan wrote:
> >>> barebox@Diasom DS-RK3568-SOM-EVB:/ global
> >>> * bootm.~appendroot: true
> >>
> >> This should be bootm.appendroot: 1.
> >>
> >>> bootm.~appendroot: true, but now is ever not added to the cmdline.
> >>
> >> The tilde is just an implementation detail in common/bootm.c. You shou=
ld
> >> just global.bootm.appendroot as before.
> >>
> >> Thanks,
> >> Ahmad
> >>
> >>>
> >>> =D0=B2=D1=82, 5 =D0=BC=D0=B0=D1=8F 2026=E2=80=AF=D0=B3. =D0=B2 13:49,=
 Ahmad Fatoum <a.fatoum@pengutronix.de>:
> >>>>
> >>>> Hello Alexander,
> >>>>
> >>>> On 5/5/26 12:47 PM, Alexander Shiyan wrote:
> >>>>> Hello Ahmad.
> >>>>>
> >>>>> ...
> >>>>>>> +     if (e->append) {
> >>>>>>> +             char *append;
> >>>>>>> +
> >>>>>>> +             /*
> >>>>>>> +              * The same rootfs image may be launched from eMMC =
or SD card.
> >>>>>>> +              * Remove any hardcoded root=3D parameter from "app=
end" to avoid
> >>>>>>> +              * conflicts, then let barebox automatically add th=
e correct
> >>>>>>> +              * root=3D (via global.bootm.appendroot) based on t=
he boot device.
> >>>>>>> +              */
> >>>>>>> +             if (data.appendroot)
> >>>>>>> +                     append =3D remove_param(e->append, "ROOT=3D=
");
> >>>>> ...
> >>>>>> I thus have a question to you: What happens if you drop remove_par=
am()
> >>>>>> completely? Sure we will have two root=3D, but the later gets prec=
edence,
> >>>>>> so your use case would continue to work without giving users a wro=
ng
> >>>>>> expectation.
> >>>>>
> >>>>> Yes, the second one takes priority.
> >>>>> The second one is the one added via extlinux.conf APPEND option.
> >>>>> In our case we need the first parameter, i.e. which comes from bare=
box
> >>>>> when global.bootm.appendroot is toggled on.
> >>>>
> >>>> Ack. Please check the series I Cc'd you on, which ensures that
> >>>> global.bootm.appendroot applies _after_ extlinux.conf APPEND.
> >>>>
> >>>> Thanks,
> >>>> Ahmad
> >>>>
> >>>>>
> >>>>> Thanks!
> >>>>>
> >>>>
> >>>> --
> >>>> Pengutronix e.K.                  |                             |
> >>>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> >>>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> >>>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> >>>>
> >>>
> >>
> >> --
> >> Pengutronix e.K.                  |                             |
> >> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> >> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> >> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> >>
> >
>
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>


