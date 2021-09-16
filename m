Delivery-date: Thu, 16 Sep 2021 20:04:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQvkC-0003Hz-2U
	for lore@lore.pengutronix.de; Thu, 16 Sep 2021 20:04:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQvkA-00089F-6J
	for lore@pengutronix.de; Thu, 16 Sep 2021 20:04:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l98mRn87xiKWhIOU089CyN+1gljEhzc6hbUWxGWPmw8=; b=JAnGFCkUl90aIj6jq5uRzRHI5S
	+KOGIu5JTzNF4n99W2oFSr/ekrmz7wlykaObVMwAqj/zYokg5JSV95UnIlExLD1ZbDXWhDqAd+TsE
	kUCAHm3Ec88dwF82hBqQmnajuDZ0IzxKfPGdB7t4Av327HTmk9BqaI1KssnRBEYixFwF1MfOZ866u
	C/mQRqXPh1a4VBMN6ciH9LEPK/w2FwBALCJuTnpmcQgsZbG6IPB9TEDFlmkzw/xLrl31xSJuBJwsB
	tTMH9glm9mZz+rdmCUkgno6lIqUnrcfT7uM2IooE4YRCOMFGOsDgkpXmXVS5ZJIWBTDSh3rWZT2RP
	iy2+gt8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQviL-00Bz9z-3h; Thu, 16 Sep 2021 18:02:25 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQviF-00Bz8Z-2l
 for barebox@lists.infradead.org; Thu, 16 Sep 2021 18:02:21 +0000
Received: by mail-lf1-x12b.google.com with SMTP id y28so21871829lfb.0
 for <barebox@lists.infradead.org>; Thu, 16 Sep 2021 11:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cartesi-io.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7pv3V/4rZ60oZSs0JD1YDq1D8SlGrwcqI7sE3V/3qH8=;
 b=GRcQ9GDoIDhLkr3xa/LeM7JT9GdO7RJON5hliPsyN6hIOrnn8kTdoY1bY6+hEGguoR
 9D7gK14QhH6SkVHzX7YWmQYmHenoBXuYOsIP6ymBW91trDZcSb/rCoP66oezY5xFGH6M
 nf/aZlvRziFEj6lABkWI/Gto4/qMG75cPrtsbsD8ztTa47sIFIphLeuUAm5FiVpWqO/X
 lQfUP16v8LTNiSmmY8Fqk56cBXAaMuNNjyRfxJbvhfyZb9dGnRzyp68Al+BIGEEND28+
 KqtCVHeB2xcQI1FQnBMb3G6zagnpbF8jXpgoO/5ARx/ccDaPoFRbY73w4VVqNnLGHGtA
 +XIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7pv3V/4rZ60oZSs0JD1YDq1D8SlGrwcqI7sE3V/3qH8=;
 b=VQ6QAxK/sRYtLZcGCrXtXohangXNEYSgdwTxeoHzDMWE/i/1/gDI1khqKGT6MrDvqZ
 sjvi1Xu1pjdvjGVWd6fHgDwBZoqvmeJN/Y33NLctJycufjkTLJFDBpuwE9sIjxG9ZT38
 Y+ERX/uy4ijSB+SXkl2ADJAGAmmdwt3jCAOtiXAjlY4TzhiYh7JecZGlEKkKdiMc+PjJ
 pacJd8fy5AE8e0p/kDpjbhZ2UWZSVpTSbvcSGK/jLLLzhu5Lg0d0geWMFEetaGmPM7RL
 nhFBR6r/raILnTB+MjQ2D31ggqA4vkEbJjA//VwYlfSBgL8sEf4xtL4hB9BQhRhDGYBI
 CRlQ==
X-Gm-Message-State: AOAM530P3kJivwEM7GnMQE4s77ICRH1I9GqgUF3IZp0uFdwV7mu5ZPxW
 kiJ7qzMZOgjNSbiWt4V/2dFviRQud68gWq+ZYk7Cdg==
X-Google-Smtp-Source: ABdhPJxAsrOI/RF/gEF6DzUP6HhHzz9vLhoaIktN46Pro1Hs9BZ8W0vvPGY98O1rZK0LGWZFNitVFp+R3b3wHa/kmJI=
X-Received: by 2002:a2e:1511:: with SMTP id s17mr4974076ljd.197.1631815334962; 
 Thu, 16 Sep 2021 11:02:14 -0700 (PDT)
MIME-Version: 1.0
References: <CA+cd6D476jyxKGWZUqLbFizW_TvGCpfqvS6-vC8T3sX=nzS5kg@mail.gmail.com>
 <129de0c3-64d9-c2f7-18e0-b3764446b875@pengutronix.de>
 <CA+cd6D6pqMn=DhjPgDGske9u+t3P1zSS0PvK5L2TdAtRfi8FTw@mail.gmail.com>
 <38f21108-d380-d299-e9cd-311b2ef4c3c8@pengutronix.de>
In-Reply-To: <38f21108-d380-d299-e9cd-311b2ef4c3c8@pengutronix.de>
From: Marcelo Politzer <marcelo.politzer@cartesi.io>
Date: Thu, 16 Sep 2021 15:01:41 -0300
Message-ID: <CA+cd6D6ezjN3p_PRPkgq2q8ZmyjcL19S=5kqg14MFLEPAAV4wQ@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: multipart/mixed; boundary="000000000000615b8005cc209d75"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_110219_285881_65825169 
X-CRM114-Status: GOOD (  51.74  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: New RISCV board (cartesi-machine)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

--000000000000615b8005cc209d75
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 15, 2021 at 6:58 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrot=
e:
>
> Hello Marcelo,
>
> On 15.09.21 23:43, Marcelo Politzer wrote:
> > On Wed, Sep 15, 2021 at 6:17 PM Ahmad Fatoum <a.fatoum@pengutronix.de> =
wrote:
> >>
> >> Hello Marcelo,
> >>
> >> On 15.09.21 22:30, Marcelo Politzer wrote:
> >>> Hi, I'm new to barebox
> >>>
> >>> I'm currently porting barebox to a riscv board (cartesi-machine).
> >>
> >> Oh, looks interesting! What SoC does it use?
> >
> > It uses SOC_VIRT. It is an emulator to be precise, we use it for
> > verifiable computations.
> > It is pretty easy to try it out (there is a docker image for it):
> > https://www.cartesi.io/en/docs/machine/host/overview/
>
> Thanks, will check it out.
>
> >>> I got it mostly working:
> >>> - new serial: serial_sbi.c and
> >>
> >> Keep in mind that newer SBI versions deprecate
> >> sbi_console_getchar() and sbi_console_putchar() with no replacement.
> >>
> >> But if your board's firmware provides it, there is no issue with
> >> adding a driver for it.
> >
> > That is what the emulator implements for now.
> > I have to admit that a virtio system would be cool, maybe in the future=
.
>
> Like this? :-)
>
> https://www.barebox.org/jsbarebox/

That is cool!

>
> >>> - ext4 filesystem with mtdram
> >>>
> >>> 1) What I am still trying to figure out is how to customize `env` cor=
rectly.
> >>> I got it to build and appear based on the docs [1], [2],
> >>
> >> Those look ok. I assume you have
> >>
> >> defaultenv_append_directory(defaultenv_cartesi); in your board code?
> >
> > yes
> >
> >>
> >>> however the only way I found around [3] was to replace `bin/init` wit=
h
> >>> this[4] layout.
> >>
> >> After drivers probe, barebox invokes init to source init scripts and
> >> do the countdown and such. This is written in C, but you can override
> >> it with an /env/bin/init shell script, which is what you did here.
> >>
> >> I would not recommend this. Drop /env/bin/init and use the same C init
> >> nearly everyone else does. You can still customize it via the
> >> /env/init/ scripts
> >>
> >>> Is there a recommended way to go about this?
> >>
> >> You need to set boot.default, e.g.
> >>
> >> echo 'cartesi net' > defaultenv-cartesi/nv/boot.default
> >>
> >> Which would try cartesi first and then net if the first one failed.
> >
> > That worked great.
> > Looks a lot cleaner now.
> >
> >>
> >>> 2) I also would like clarification on the upstreaming process, is it
> >>> PR based, patches on this list?
> >>
> >> Patches to the mailing list are the usual way of contributing.
> >
> > OK, I'll clean this up and send it as two patches:
> > - serial_sbi
> > - cartesi (board)
>
> Sounds good.

Patches attached, please review at your convenience.

>
> Cheers,
> Ahmad
>
> >
> >>
> >> Cheers,
> >> Ahmad
> >>
> >>>
> >>> best,
> >>> Marcelo
> >>>
> >>>
> >>> [1] Makefile:
> >>> ```
> >>> bbenv-$(CONFIG_BOARD_CARTESI) +=3D defaultenv-cartesi
> >>> ```
> >>>
> >>> [2] arch/riscv/boards/cartesi:
> >>> ```
> >>> defaultenv-cartesi
> >>> =E2=94=9C=E2=94=80=E2=94=80 boot
> >>> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 cartesi
> >>> =E2=94=9C=E2=94=80=E2=94=80 init
> >>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 automount
> >>> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 ps1
> >>> =E2=94=94=E2=94=80=E2=94=80 nv
> >>>     =E2=94=9C=E2=94=80=E2=94=80 allow_color
> >>>     =E2=94=9C=E2=94=80=E2=94=80 autoboot_timeout
> >>>     =E2=94=94=E2=94=80=E2=94=80 user
> >>> ```
> >>>
> >>> [3]
> >>> ```
> >>> Hit m for menu or any to stop autoboot:    0
> >>> Booting entry 'net'
> >>> ```
> >>>
> >>> [4]
> >>> ```
> >>> defaultenv-cartesi
> >>> =E2=94=9C=E2=94=80=E2=94=80 bin
> >>> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 init
> >>> =E2=94=94=E2=94=80=E2=94=80 boot
> >>>     =E2=94=94=E2=94=80=E2=94=80 cartesi
> >>> ```
> >>>
> >>> _______________________________________________
> >>> barebox mailing list
> >>> barebox@lists.infradead.org
> >>> http://lists.infradead.org/mailman/listinfo/barebox
> >>>
> >>
> >>
> >> --
> >> Pengutronix e.K.                           |                          =
   |
> >> Steuerwalder Str. 21                       | http://www.pengutronix.de=
/  |
> >> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0 =
   |
> >> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-55=
55 |
> >
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

--000000000000615b8005cc209d75
Content-Type: text/x-patch; charset="US-ASCII"; name="0002-RISC-V-cartesi-Initial-port.patch"
Content-Disposition: attachment; 
	filename="0002-RISC-V-cartesi-Initial-port.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_ktn8h9m80>
X-Attachment-Id: f_ktn8h9m80

RnJvbSBmNGEzY2YyMDU4MmRlYzA4ZmQyYjAyYjYyY2U4NjRmY2FlN2JiMDM4IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNYXJjZWxvIFBvbGl0emVyIDxtYXJjZWxvLnBvbGl0emVyQGNh
cnRlc2kuaW8+CkRhdGU6IFRodSwgMTYgU2VwIDIwMjEgMTQ6MzM6MTcgLTAzMDAKU3ViamVjdDog
W1BBVENIIDIvMl0gUklTQy1WOiBjYXJ0ZXNpOiBJbml0aWFsIHBvcnQKCi0tLQogYXJjaC9yaXNj
di9LY29uZmlnLnNvY3MgICAgICAgICAgICAgICAgICAgICAgIHwgIDcgKysrKysKIGFyY2gvcmlz
Y3YvYm9hcmRzL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICB8ICAxICsKIGFyY2gvcmlzY3Yv
Ym9hcmRzL2NhcnRlc2kvTWFrZWZpbGUgICAgICAgICAgICB8ICAyICsrCiBhcmNoL3Jpc2N2L2Jv
YXJkcy9jYXJ0ZXNpL2JvYXJkLmMgICAgICAgICAgICAgfCAyOCArKysrKysrKysrKysrKysrKysr
CiAuLi4vY2FydGVzaS9kZWZhdWx0ZW52LWNhcnRlc2kvYm9vdC9jYXJ0ZXNpICAgfCAgMyArKwog
Li4uL2NhcnRlc2kvZGVmYXVsdGVudi1jYXJ0ZXNpL2luaXQvYXV0b21vdW50IHwgIDYgKysrKwog
Li4uL2RlZmF1bHRlbnYtY2FydGVzaS9udi9hdXRvYm9vdF90aW1lb3V0ICAgIHwgIDEgKwogLi4u
L2RlZmF1bHRlbnYtY2FydGVzaS9udi9ib290LmRlZmF1bHQgICAgICAgIHwgIDEgKwogYXJjaC9y
aXNjdi9jb25maWdzL2NhcnRlc2lfZGVmY29uZmlnICAgICAgICAgIHwgMTUgKysrKysrKysrKwog
OSBmaWxlcyBjaGFuZ2VkLCA2NCBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJj
aC9yaXNjdi9ib2FyZHMvY2FydGVzaS9NYWtlZmlsZQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gv
cmlzY3YvYm9hcmRzL2NhcnRlc2kvYm9hcmQuYwogY3JlYXRlIG1vZGUgMTAwNzU1IGFyY2gvcmlz
Y3YvYm9hcmRzL2NhcnRlc2kvZGVmYXVsdGVudi1jYXJ0ZXNpL2Jvb3QvY2FydGVzaQogY3JlYXRl
IG1vZGUgMTAwNjQ0IGFyY2gvcmlzY3YvYm9hcmRzL2NhcnRlc2kvZGVmYXVsdGVudi1jYXJ0ZXNp
L2luaXQvYXV0b21vdW50CiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9yaXNjdi9ib2FyZHMvY2Fy
dGVzaS9kZWZhdWx0ZW52LWNhcnRlc2kvbnYvYXV0b2Jvb3RfdGltZW91dAogY3JlYXRlIG1vZGUg
MTAwNjQ0IGFyY2gvcmlzY3YvYm9hcmRzL2NhcnRlc2kvZGVmYXVsdGVudi1jYXJ0ZXNpL252L2Jv
b3QuZGVmYXVsdAogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvcmlzY3YvY29uZmlncy9jYXJ0ZXNp
X2RlZmNvbmZpZwoKZGlmZiAtLWdpdCBhL2FyY2gvcmlzY3YvS2NvbmZpZy5zb2NzIGIvYXJjaC9y
aXNjdi9LY29uZmlnLnNvY3MKaW5kZXggMjIxZWExMzNkLi4xMmU4ZTA0ZmMgMTAwNjQ0Ci0tLSBh
L2FyY2gvcmlzY3YvS2NvbmZpZy5zb2NzCisrKyBiL2FyY2gvcmlzY3YvS2NvbmZpZy5zb2NzCkBA
IC0yMiw2ICsyMiwxMyBAQCBjb25maWcgU09DX1ZJUlQKIAkgIEdlbmVyYXRlcyBhbiBpbWFnZSB0
aHQgY2FuIGJlIGJlIGJvb3RlZCBieSBRRU1VLiBUaGUgaW1hZ2UgaXMgY2FsbGVkCiAJICBiYXJl
Ym94LWR0LTJuZC5pbWcKIAorY29uZmlnIEJPQVJEX0NBUlRFU0kKKwlib29sICJDYXJ0ZXNpIE1h
Y2hpbmUiCisJc2VsZWN0IFNPQ19WSVJUCisJaGVscAorCSAgR2VuZXJhdGVzIGFuIGltYWdlIHRo
dCBjYW4gYmUgYmUgYm9vdGVkIGJ5IGEgY2FydGVzaS1tYWNoaW5lLiBUaGUKKwkgIGltYWdlIGlz
IGNhbGxlZCBiYXJlYm94LWR0LTJuZC5pbWcKKwogY29uZmlnIENQVV9TSUZJVkUKIAlib29sCiAJ
c2VsZWN0IEhBU19DQUNIRQpkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9ib2FyZHMvTWFrZWZpbGUg
Yi9hcmNoL3Jpc2N2L2JvYXJkcy9NYWtlZmlsZQppbmRleCBjYjI4YTI1ZDguLmNlZTNkMmUyNyAx
MDA2NDQKLS0tIGEvYXJjaC9yaXNjdi9ib2FyZHMvTWFrZWZpbGUKKysrIGIvYXJjaC9yaXNjdi9i
b2FyZHMvTWFrZWZpbGUKQEAgLTIsMyArMiw0IEBACiBvYmotJChDT05GSUdfQk9BUkRfRVJJWk9f
R0VORVJJQykJKz0gZXJpem8vCiBvYmotJChDT05GSUdfQk9BUkRfSElGSVZFKQkJKz0gaGlmaXZl
Lwogb2JqLSQoQ09ORklHX0JPQVJEX0JFQUdMRVYpCQkrPSBiZWFnbGV2Lworb2JqLSQoQ09ORklH
X0JPQVJEX0NBUlRFU0kpCQkrPSBjYXJ0ZXNpLwpkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9ib2Fy
ZHMvY2FydGVzaS9NYWtlZmlsZSBiL2FyY2gvcmlzY3YvYm9hcmRzL2NhcnRlc2kvTWFrZWZpbGUK
bmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwLi4wZTM0NTMxNzgKLS0tIC9kZXYv
bnVsbAorKysgYi9hcmNoL3Jpc2N2L2JvYXJkcy9jYXJ0ZXNpL01ha2VmaWxlCkBAIC0wLDAgKzEs
MiBAQAorb2JqLSQoQ09ORklHX0JPQVJEX0NBUlRFU0kpICs9IGJvYXJkLm8KK2JiZW52LSQoQ09O
RklHX0JPQVJEX0NBUlRFU0kpICs9IGRlZmF1bHRlbnYtY2FydGVzaQpkaWZmIC0tZ2l0IGEvYXJj
aC9yaXNjdi9ib2FyZHMvY2FydGVzaS9ib2FyZC5jIGIvYXJjaC9yaXNjdi9ib2FyZHMvY2FydGVz
aS9ib2FyZC5jCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMC4uYTFhMzNjOGQ4
Ci0tLSAvZGV2L251bGwKKysrIGIvYXJjaC9yaXNjdi9ib2FyZHMvY2FydGVzaS9ib2FyZC5jCkBA
IC0wLDAgKzEsMjggQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wKworLyoK
KyAqIENvcHlyaWdodCAoQykgMjAyMSBNYXJjZWxvIFBvbGl0emVyLCBDYXJ0ZXNpCisgKi8KKwor
I2luY2x1ZGUgPGNvbW1vbi5oPgorI2luY2x1ZGUgPGRyaXZlci5oPgorI2luY2x1ZGUgPGJidS5o
PgorI2luY2x1ZGUgPGVudmZzLmg+CisKK3N0YXRpYyBpbnQgY2FydGVzaV9wcm9iZShzdHJ1Y3Qg
ZGV2aWNlX2QgKmRldikKK3sKKwliYXJlYm94X3NldF9ob3N0bmFtZSgiY2FydGVzaSIpOworCWRl
ZmF1bHRlbnZfYXBwZW5kX2RpcmVjdG9yeShkZWZhdWx0ZW52X2NhcnRlc2kpOworCXJldHVybiAw
OworfQorCitzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBjYXJ0ZXNpX29mX21hdGNo
W10gPSB7CisJeyAuY29tcGF0aWJsZSA9ICJ1Y2JiYXIscmlzY3ZlbXUtYmFyX2RldiIgfSwKKwl7
IC8qIHNlbnRpbmVsICovIH0sCit9OworCitzdGF0aWMgc3RydWN0IGRyaXZlcl9kIGNhcnRlc2lf
Ym9hcmRfZHJpdmVyID0geworCS5uYW1lID0gImJvYXJkLWNhcnRlc2kiLAorCS5wcm9iZSA9IGNh
cnRlc2lfcHJvYmUsCisJLm9mX2NvbXBhdGlibGUgPSBjYXJ0ZXNpX29mX21hdGNoLAorfTsKK2Rl
dmljZV9wbGF0Zm9ybV9kcml2ZXIoY2FydGVzaV9ib2FyZF9kcml2ZXIpOwpkaWZmIC0tZ2l0IGEv
YXJjaC9yaXNjdi9ib2FyZHMvY2FydGVzaS9kZWZhdWx0ZW52LWNhcnRlc2kvYm9vdC9jYXJ0ZXNp
IGIvYXJjaC9yaXNjdi9ib2FyZHMvY2FydGVzaS9kZWZhdWx0ZW52LWNhcnRlc2kvYm9vdC9jYXJ0
ZXNpCm5ldyBmaWxlIG1vZGUgMTAwNzU1CmluZGV4IDAwMDAwMDAwMC4uYjE3NWZmNTU2Ci0tLSAv
ZGV2L251bGwKKysrIGIvYXJjaC9yaXNjdi9ib2FyZHMvY2FydGVzaS9kZWZhdWx0ZW52LWNhcnRl
c2kvYm9vdC9jYXJ0ZXNpCkBAIC0wLDAgKzEsMyBAQAorIyEvYmluL3NoCisKK2dsb2JhbC5ib290
bS5pbWFnZT0vbW50L3Jvb3Rmcy9ib290L0ltYWdlCmRpZmYgLS1naXQgYS9hcmNoL3Jpc2N2L2Jv
YXJkcy9jYXJ0ZXNpL2RlZmF1bHRlbnYtY2FydGVzaS9pbml0L2F1dG9tb3VudCBiL2FyY2gvcmlz
Y3YvYm9hcmRzL2NhcnRlc2kvZGVmYXVsdGVudi1jYXJ0ZXNpL2luaXQvYXV0b21vdW50Cm5ldyBm
aWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMC4uMzYyZWM2OGVkCi0tLSAvZGV2L251bGwK
KysrIGIvYXJjaC9yaXNjdi9ib2FyZHMvY2FydGVzaS9kZWZhdWx0ZW52LWNhcnRlc2kvaW5pdC9h
dXRvbW91bnQKQEAgLTAsMCArMSw2IEBACisjIS9iaW4vc2gKKworIyBtdGRyYW0wCitta2RpciAt
cCAvbW50L3Jvb3RmcworYXV0b21vdW50IC1kIC9tbnQvcm9vdGZzICdtb3VudCAtdCBleHQ0IC9k
ZXYvbXRkcmFtMCAvbW50L3Jvb3RmcycKKwpkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9ib2FyZHMv
Y2FydGVzaS9kZWZhdWx0ZW52LWNhcnRlc2kvbnYvYXV0b2Jvb3RfdGltZW91dCBiL2FyY2gvcmlz
Y3YvYm9hcmRzL2NhcnRlc2kvZGVmYXVsdGVudi1jYXJ0ZXNpL252L2F1dG9ib290X3RpbWVvdXQK
bmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwLi41NzM1NDFhYzkKLS0tIC9kZXYv
bnVsbAorKysgYi9hcmNoL3Jpc2N2L2JvYXJkcy9jYXJ0ZXNpL2RlZmF1bHRlbnYtY2FydGVzaS9u
di9hdXRvYm9vdF90aW1lb3V0CkBAIC0wLDAgKzEgQEAKKzAKZGlmZiAtLWdpdCBhL2FyY2gvcmlz
Y3YvYm9hcmRzL2NhcnRlc2kvZGVmYXVsdGVudi1jYXJ0ZXNpL252L2Jvb3QuZGVmYXVsdCBiL2Fy
Y2gvcmlzY3YvYm9hcmRzL2NhcnRlc2kvZGVmYXVsdGVudi1jYXJ0ZXNpL252L2Jvb3QuZGVmYXVs
dApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAuLjk4Njk4NzY5ZgotLS0gL2Rl
di9udWxsCisrKyBiL2FyY2gvcmlzY3YvYm9hcmRzL2NhcnRlc2kvZGVmYXVsdGVudi1jYXJ0ZXNp
L252L2Jvb3QuZGVmYXVsdApAQCAtMCwwICsxIEBACitjYXJ0ZXNpIG5ldApkaWZmIC0tZ2l0IGEv
YXJjaC9yaXNjdi9jb25maWdzL2NhcnRlc2lfZGVmY29uZmlnIGIvYXJjaC9yaXNjdi9jb25maWdz
L2NhcnRlc2lfZGVmY29uZmlnCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMC4u
NzlhN2E5YjQyCi0tLSAvZGV2L251bGwKKysrIGIvYXJjaC9yaXNjdi9jb25maWdzL2NhcnRlc2lf
ZGVmY29uZmlnCkBAIC0wLDAgKzEsMTUgQEAKKyMgbWluaW1hbAorQ09ORklHX0FSQ0hfUlY2NEk9
eQorQ09ORklHX0JPQVJEX0NBUlRFU0k9eQorQ09ORklHX0JPT1RNX0VMRj15CitDT05GSUdfQ01E
X0FVVE9NT1VOVD15CitDT05GSUdfQ01EX0JPT1Q9eQorQ09ORklHX0ZTX0VYVDQ9eQorQ09ORklH
X01URD15CitDT05GSUdfTVREX01URFJBTT15CitDT05GSUdfU0VSSUFMX1NCST15CitDT05GSUdf
U09DX1ZJUlQ9eQorCisjIGNvbnZlbmllbmNlCitDT05GSUdfQ01EX1JFQURMSU5FPXkKK0NPTkZJ
R19IVVNIX0ZBTkNZX1BST01QVD15Ci0tIAoyLjMyLjAKCg==
--000000000000615b8005cc209d75
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-serial-implement-SBI-UART-support.patch"
Content-Disposition: attachment; 
	filename="0001-serial-implement-SBI-UART-support.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_ktn8h9mi1>
X-Attachment-Id: f_ktn8h9mi1

RnJvbSA1OTUzMDYyY2UxM2M0YjA3MTkwZDQ1NWQyYWFlMjI4Y2QzNzU2ZDQyIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNYXJjZWxvIFBvbGl0emVyIDxtYXJjZWxvLnBvbGl0emVyQGNh
cnRlc2kuaW8+CkRhdGU6IFRodSwgMTYgU2VwIDIwMjEgMTQ6Mjk6NTEgLTAzMDAKU3ViamVjdDog
W1BBVENIIDEvMl0gc2VyaWFsOiBpbXBsZW1lbnQgU0JJIFVBUlQgc3VwcG9ydAoKLS0tCiBhcmNo
L3Jpc2N2L2xpYi9zYmkuYyAgICAgICAgfCAxMSArKysrKysKIGRyaXZlcnMvc2VyaWFsL0tjb25m
aWcgICAgICB8ICA3ICsrKysKIGRyaXZlcnMvc2VyaWFsL01ha2VmaWxlICAgICB8ICAxICsKIGRy
aXZlcnMvc2VyaWFsL3NlcmlhbF9zYmkuYyB8IDc3ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysKIDQgZmlsZXMgY2hhbmdlZCwgOTYgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1v
ZGUgMTAwNjQ0IGRyaXZlcnMvc2VyaWFsL3NlcmlhbF9zYmkuYwoKZGlmZiAtLWdpdCBhL2FyY2gv
cmlzY3YvbGliL3NiaS5jIGIvYXJjaC9yaXNjdi9saWIvc2JpLmMKaW5kZXggNDVhMDRmYjgyLi4y
MDkwNjljOTggMTAwNjQ0Ci0tLSBhL2FyY2gvcmlzY3YvbGliL3NiaS5jCisrKyBiL2FyY2gvcmlz
Y3YvbGliL3NiaS5jCkBAIC02NCwzICs2NCwxNCBAQCBzdGF0aWMgaW50IHNiaV9pbml0KHZvaWQp
CiAKIH0KIGNvcmVfaW5pdGNhbGwoc2JpX2luaXQpOworCisKK3ZvaWQgc2JpX2NvbnNvbGVfcHV0
Y2hhcihpbnQgY2gpCit7CisJc2JpX2VjYWxsKFNCSV9FWFRfMF8xX0NPTlNPTEVfUFVUQ0hBUiwg
MCwgY2gsIDAsIDAsIDAsIDAsIDApOworfQorCitpbnQgc2JpX2NvbnNvbGVfZ2V0Y2hhcih2b2lk
KQoreworCXJldHVybiBzYmlfZWNhbGwoU0JJX0VYVF8wXzFfQ09OU09MRV9HRVRDSEFSLCAwLCAw
LCAwLCAwLCAwLCAwLCAwKS5lcnJvcjsKK30KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc2VyaWFsL0tj
b25maWcgYi9kcml2ZXJzL3NlcmlhbC9LY29uZmlnCmluZGV4IGI5NzUwZDE3Ny4uMDAyODcxNDQ1
IDEwMDY0NAotLS0gYS9kcml2ZXJzL3NlcmlhbC9LY29uZmlnCisrKyBiL2RyaXZlcnMvc2VyaWFs
L0tjb25maWcKQEAgLTE3Myw0ICsxNzMsMTEgQEAgY29uZmlnIFNFUklBTF9TSUZJVkUKIAkgIGNv
bnRhaW5zIGEgU2lGaXZlIFVBUlQgSVAgYmxvY2suICBUaGlzIHR5cGUgb2YgVUFSVCBpcyBwcmVz
ZW50IG9uCiAJICBTaUZpdmUgRlU1NDAgU29DcywgYW1vbmcgb3RoZXJzLgogCitjb25maWcgU0VS
SUFMX1NCSQorCXRyaXN0YXRlICJSSVNDViBTQkkgVUFSVCBzdXBwb3J0IgorCWRlcGVuZHMgb24g
T0ZERVZJQ0UKKwloZWxwCisJICBTZWxlY3QgdGhpcyBvcHRpb24gaWYgeW91IGFyZSBidWlsZGlu
ZyBiYXJlYm94IGZvciBhIFJJU0NWIHdpdGggU0JJCisJICB2ZXJzaW9uIDAuMS4wIChsZWdhY3kg
bW9kZSkgaW1wbGVtZW50ZWQKKwogZW5kbWVudQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zZXJpYWwv
TWFrZWZpbGUgYi9kcml2ZXJzL3NlcmlhbC9NYWtlZmlsZQppbmRleCA1MTIwYjE3MzcuLmIxZGU0
MzZlZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9zZXJpYWwvTWFrZWZpbGUKKysrIGIvZHJpdmVycy9z
ZXJpYWwvTWFrZWZpbGUKQEAgLTI0LDMgKzI0LDQgQEAgb2JqLSQoQ09ORklHX0RSSVZFUl9TRVJJ
QUxfRElHSUMpCQkrPSBzZXJpYWxfZGlnaWMubwogb2JqLSQoQ09ORklHX0RSSVZFUl9TRVJJQUxf
TFBVQVJUKQkJKz0gc2VyaWFsX2xwdWFydC5vCiBvYmotJChDT05GSUdfVklSVElPX0NPTlNPTEUp
CQkJKz0gdmlydGlvX2NvbnNvbGUubwogb2JqLSQoQ09ORklHX1NFUklBTF9TSUZJVkUpCQkJKz0g
c2VyaWFsX3NpZml2ZS5vCitvYmotJChDT05GSUdfU0VSSUFMX1NCSSkJCQkrPSBzZXJpYWxfc2Jp
Lm8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc2VyaWFsL3NlcmlhbF9zYmkuYyBiL2RyaXZlcnMvc2Vy
aWFsL3NlcmlhbF9zYmkuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAuLmE3
ZTU3ODg1ZgotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvc2VyaWFsL3NlcmlhbF9zYmkuYwpA
QCAtMCwwICsxLDc3IEBACisjZGVmaW5lIERFQlVHCisjZGVmaW5lIERCRygpIHByaW50ZigiJXM6
JXM6JWRcbiIsIF9fRklMRV9fLCBfX2Z1bmNfXywgX19MSU5FX18pCisvLyBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogR1BMLTIuMCsKKy8qCisgKiBDb3B5cmlnaHQgKEMpIDIwMTggQW51cCBQYXRl
bCA8YW51cEBicmFpbmZhdWx0Lm9yZz4KKyAqLworCisjaW5jbHVkZSA8Y29tbW9uLmg+CisjaW5j
bHVkZSA8ZHJpdmVyLmg+CisjaW5jbHVkZSA8bWFsbG9jLmg+CisjaW5jbHVkZSA8aW8uaD4KKyNp
bmNsdWRlIDxvZi5oPgorI2luY2x1ZGUgPGFzbS9zYmkuaD4KKworc3RydWN0IHNiaV9zZXJpYWxf
cHJpdiB7CisJc3RydWN0IGNvbnNvbGVfZGV2aWNlIGNkZXY7CisJdWludDhfdCBiWzE2XSwgaGVh
ZCwgdGFpbDsKK307CisKKyNkZWZpbmUgdG9fcHJpdihjZGV2KSBjb250YWluZXJfb2YoY2Rldiwg
c3RydWN0IHNiaV9zZXJpYWxfcHJpdiwgY2RldikKKworc3RhdGljIGludCBzYmlfc2VyaWFsX2dl
dGMoc3RydWN0IGNvbnNvbGVfZGV2aWNlICpjZGV2KQoreworCXN0cnVjdCBzYmlfc2VyaWFsX3By
aXYgKnByaXYgPSBjZGV2LT5kZXYtPnByaXY7CisJaWYgKHByaXYtPmhlYWQgPT0gcHJpdi0+dGFp
bCkKKwkJcmV0dXJuIDA7CisJcmV0dXJuIHByaXYtPmJbcHJpdi0+aGVhZCsrICYgMHhmXTsKK30K
Kworc3RhdGljIHZvaWQgc2JpX3NlcmlhbF9wdXRjKHN0cnVjdCBjb25zb2xlX2RldmljZSAqY2Rl
diwgY29uc3QgY2hhciBjaCkKK3sKKwlzYmlfY29uc29sZV9wdXRjaGFyKGNoKTsKK30KKworc3Rh
dGljIGludCBzYmlfc2VyaWFsX3RzdGMoc3RydWN0IGNvbnNvbGVfZGV2aWNlICpjZGV2KQorewor
CXN0cnVjdCBzYmlfc2VyaWFsX3ByaXYgKnByaXYgPSBjZGV2LT5kZXYtPnByaXY7CisJaW50IGMg
PSBzYmlfY29uc29sZV9nZXRjaGFyKCk7CisKKwlpZiAoYyAhPSAtMSkKKwkJcHJpdi0+Yltwcml2
LT50YWlsKysgJiAweGZdID0gYzsKKwlyZXR1cm4gcHJpdi0+aGVhZCAhPSBwcml2LT50YWlsOwor
fQorc3RhdGljIHZvaWQgc2JpX3NlcmlhbF9mbHVzaChzdHJ1Y3QgY29uc29sZV9kZXZpY2UgKmNk
ZXYpCit7Cit9CitzdGF0aWMgaW50IHNiaV9zZXJpYWxfc2V0YnJnKHN0cnVjdCBjb25zb2xlX2Rl
dmljZSAqY2RldiwgaW50IF8pCit7CisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgc2JpX3Nl
cmlhbF9wcm9iZShzdHJ1Y3QgZGV2aWNlX2QgKmRldikKK3sKKwlzdHJ1Y3Qgc2JpX3NlcmlhbF9w
cml2ICpwcml2OworCisJZGV2LT5wcml2ID0gcHJpdiA9IHh6YWxsb2Moc2l6ZW9mKCpwcml2KSk7
CisJcHJpdi0+Y2Rldi5kZXYgPSBkZXY7CisJcHJpdi0+Y2Rldi5wdXRjICAgPSBzYmlfc2VyaWFs
X3B1dGM7CisJcHJpdi0+Y2Rldi5nZXRjICAgPSBzYmlfc2VyaWFsX2dldGM7CisJcHJpdi0+Y2Rl
di50c3RjICAgPSBzYmlfc2VyaWFsX3RzdGM7CisJcHJpdi0+Y2Rldi5mbHVzaCAgPSBzYmlfc2Vy
aWFsX2ZsdXNoOworCXByaXYtPmNkZXYuc2V0YnJnID0gc2JpX3NlcmlhbF9zZXRicmc7CisKKwly
ZXR1cm4gY29uc29sZV9yZWdpc3RlcigmcHJpdi0+Y2Rldik7Cit9CisKK3N0YXRpYyBfX21heWJl
X3VudXNlZCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHNiaV9zZXJpYWxfZHRfaWRzW10gPSB7CisJeyAu
Y29tcGF0aWJsZSA9ICJ1Y2IsaHRpZjAiIH0sCisJeyAvKiBzZW50aW5lbCAqLyB9Cit9OworCitz
dGF0aWMgc3RydWN0IGRyaXZlcl9kIHNlcmlhbF9zYmlfZHJpdmVyID0geworCS5uYW1lICAgPSAi
c2VyaWFsX3NiaSIsCisJLnByb2JlICA9IHNiaV9zZXJpYWxfcHJvYmUsCisJLm9mX2NvbXBhdGli
bGUgPSBzYmlfc2VyaWFsX2R0X2lkcywKK307Citjb25zb2xlX3BsYXRmb3JtX2RyaXZlcihzZXJp
YWxfc2JpX2RyaXZlcik7Ci0tIAoyLjMyLjAKCg==
--000000000000615b8005cc209d75
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--000000000000615b8005cc209d75--


