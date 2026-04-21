Delivery-date: Tue, 21 Apr 2026 04:30:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wF0sE-00EYXA-17
	for lore@lore.pengutronix.de;
	Tue, 21 Apr 2026 04:30:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wF0sD-00074A-FU
	for lore@pengutronix.de; Tue, 21 Apr 2026 04:30:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mXYILiu+skZyshV3q38uIaTjOiEQrja3UstoK+g3O7U=; b=Ik/bNxFKiQui8g
	fGlbHyI/gC0OOwglvvrEPNeYOKpsTG30dmq0T3y3pEX37DSUvlkDnhIHQFwfTnNak56lbl93w/Afr
	+MiP889eph5vZqT6kRJFJR9A89CRzU0QFp/1JdYnTofmofm5nutOK4Stt4mby4Cxmp6VXIbUmWuTY
	/YO5SslgMyXwfraCb27cxaaHoAAnHpbbmy/9ff8d4vFimxINy6zTloKQi+DGL+oeEc4RUZ5P3J3rn
	1GwBdK2WYEyXa3yfpL5+SMIJt3E89MStrfjJ+g+CfCo1vG2OrV7TakBp+nl2SJS6cYirTPYQycVsk
	cptx1beIjZjl2FWQeVZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF0rS-00000007w7x-0PW4;
	Tue, 21 Apr 2026 02:29:14 +0000
Received: from mail-dl1-x1233.google.com ([2607:f8b0:4864:20::1233])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF0rO-00000007w7c-3BaY
	for barebox@lists.infradead.org;
	Tue, 21 Apr 2026 02:29:12 +0000
Received: by mail-dl1-x1233.google.com with SMTP id a92af1059eb24-12c726f46baso4465147c88.1
        for <barebox@lists.infradead.org>; Mon, 20 Apr 2026 19:29:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776738550; cv=none;
        d=google.com; s=arc-20240605;
        b=QC529DbkpEP0bgqou+tKO/aqu0LlG9kmsikQON2gextpQU8LyqIoqSJj10F2i6SVVn
         7DglNzcpd6tlPNu4mm6/DYmTtUpSE8VsQwhALkh1Kpw0GImdPPOIKn+4cNgMmkRzY6zn
         PaFLPOX/mHq5BN1g9KRQ27ziVCM1QRxkip2OqdOW0v6/hgXp7f3Il+GoEwnLlsv9aly9
         sGQ6Iqe48QB9C75wO7gPsZ6vrANmtZdZJrYdV5W9L6Vcnp/KRaUTi3PJj7Bf0xfwExyQ
         88yGujUjS7Cj5n/ItXLwpSjwT69r88bzkmd/nnNvw8ocddGOpzuhhe7NvcJIlKnr0vSk
         dJgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=mXYILiu+skZyshV3q38uIaTjOiEQrja3UstoK+g3O7U=;
        fh=YLLyJiplIKEaVfBiHNXlZ58RYjrdIIrmMM5ZoVTb2nc=;
        b=ZSL491CRCOPUKutlR8lBGvergDHU5F8/gjEQWG2QJezhs0u61hCE0v/0f1dTLOq6e6
         BmeMuH2TlCStKaDPo8HfXBrXp2ReueAeHongv7ziUx+7cNWHfPXWJsLTvfihnEKnYpIE
         q2p5+8I+llbZLRme+i7EcaA/muABCx+WM7U+4WkiUH/SHredWQWHAU2cguuyEIMnahmS
         /J1249f7xcz//nyKUUWB6gbJVp7+El6eIx+9xDzZU0K4sRVK6fGuG/JuKbAt9NaX2LTa
         YHzfJxDaWB/8+N5PUs4qaZL2sJ1IZCjotKBV5jjvH2PeHIPl1LeVQl/4PepLBYFZGFkh
         aE/A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776738550; x=1777343350; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mXYILiu+skZyshV3q38uIaTjOiEQrja3UstoK+g3O7U=;
        b=VUa8Uj7A0hEHFwOGf6B1P18D4ACiQRdBCFxHqFVM7/PsHTafu7bY92uZFa6NeaDEWJ
         hOr4y5dOwNi7o0s/G/uRLjHhgcbpwiclp8L6RK5OEGNoDVqzPjdHf2VMlmyKhNv9zDhH
         WRVbKFpoF066I+60GNknnsTV70u8glzPseB/80G9SR6mjmSvr/gSTk2FY4ka1MUJe0bm
         mTOWX/q4DjWsRSe//tN0CZ4aD+nfFcfWnMis4w3c9j6WWlo5Tru7UOLmputB/9HKulHW
         EIsOI6reszmOZzdUuljByBDl3A2FvZlZTFzX3knQztDbzBGr+lq5OLqeGWyPe19cxYIG
         wu2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776738550; x=1777343350;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mXYILiu+skZyshV3q38uIaTjOiEQrja3UstoK+g3O7U=;
        b=JhaX/YBiS4RlRQwmIEwS8j/YQdw5vJNfk4sqRXOOF1VKQyYR73xgvTVN/oFcEHHXj5
         NVNNYhMMDwM5Fs2O+sqTT9IFik5wWQgIsUAiNFUUlIqSLGs7yZ2w5sPo6k8hby6CK4a6
         sDGjNXpaNXaPPb+9Z50hvvdF8hl3gSLfJUFClUmxO6YsYIOJrTXLxvBhJqRYzX6d4Kbo
         M4obMXk48l7MaMqvJh0Bpc+nXGRCrMqvX/BoFkEb55pJcpCXKgLr0TZ0hJ/Fl5xcRQF7
         QzuNzV87oB2KEARf3D6SrmnVQr9YyNRmZAaZXxiXulPG3UjOEqfEgxTL3ub1RD2pskJL
         iTfQ==
X-Forwarded-Encrypted: i=1; AFNElJ/8xqv8ANeXrb4HVqBdNzAU0GAXcgbSdKVwPyPip5Dm7thi1Bv6GBnE14fp/k+DUjdfFB3qCemZ@lists.infradead.org
X-Gm-Message-State: AOJu0YwMmdoWVxylj0H3Ake7mBl2vOLhmx293dAT3LGWCdy5WJ/M0dqH
	PESmSqH+ErpcupLV8+ALn6sLSbgWU8t4/1DPQM1KvTbqiqcx7/adFurIZeEhNpOD+hsMFAnH99o
	qPhDqI9cPlrEDVM9w5PHnJSuPypxx/pY=
X-Gm-Gg: AeBDiet9QC+69Ovxc49ohTYPHVTIf91PxHMDy2KXuW/ga+VFJfKa74HO24g+Xt8UQze
	fbl8ZNaeio/Fy+yCbwQfIUL7MVTzAiwk2lqHPR4Ql8l8Sto+TSzBGPSEiYyWxNsUDJBGMHsCxjz
	cx2rt+TZoufTGrjpxbt0i2jYuN8l7IRtw0UTYQS5fymeAinMRNfYj5vi8MrS9mIAJ5Cz8QWx6xP
	yB3ZB6IXJ2H+4+cEj+sG/Odh0snJkI3ZRk8UNM+4S/NreHxba3Bgw/GxGDhV4qC51ybtMUPGO7N
	PkJDig38CmY1DcGozijbvEm5NAJmQw6aeSI+KFopwDdLpHS1/yo2vAW6IuuRUrIrwvNdGLtybnP
	6xweTqjEyK64ekQrV+w8=
X-Received: by 2002:a05:7022:ef0d:b0:119:e56c:18b3 with SMTP id
 a92af1059eb24-12c73f9707amr8315378c88.27.1776738549653; Mon, 20 Apr 2026
 19:29:09 -0700 (PDT)
MIME-Version: 1.0
References: <20260420-usb-dwc2-usb-c-stick-v1-0-c86f733f24f8@pengutronix.de>
 <20260420-usb-dwc2-usb-c-stick-v1-1-c86f733f24f8@pengutronix.de>
 <439e4d93-0b31-41a5-93a4-3e0456e60a7b@pengutronix.de> <aeYZgSySnesKe_L0@pengutronix.de>
 <22ce3b8d-b01f-4566-895d-c175c33a7e26@pengutronix.de> <CAL+1fyAnh3D1p=yj8+Fgj8CsjE6R0Jsfc5XbwyZYKhK797QQ8w@mail.gmail.com>
In-Reply-To: <CAL+1fyAnh3D1p=yj8+Fgj8CsjE6R0Jsfc5XbwyZYKhK797QQ8w@mail.gmail.com>
From: anis chali <chalianis1@gmail.com>
Date: Mon, 20 Apr 2026 22:28:58 -0400
X-Gm-Features: AQROBzAEmvuUy-7imWRgrtOyUKnKSJbJWGG3jZPYjuGdOSgd-C1tWfq3FFy_Oo0
Message-ID: <CAL+1fyCYo3ZATq8d3Tv5fy_OcGVo2J3q3853-LqxgLqXNEahiQ@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_192910_805049_9EF5F660 
X-CRM114-Status: GOOD (  31.18  )
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
Cc: BAREBOX <barebox@lists.infradead.org>, "Claude Sonnet 4.6" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FORGED_GMAIL_RCVD,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] usb: dwc2: handle NAK when CHHLTD does not fire
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi.

On Raspberry pi cm 4, with only the patch usb: dwc2: handle NAK when
CHHLTD does not fire,
the usb controller does not work and displays indefinitely the message
below even if no usb storage plugged in
ERROR: dwc2 fe980000.usb@7e980000.of: Timeout on bulk endpoint
I did the test with the patch series and I get the same behaviour,
console continuously displaying the timeout error.

Thank's.
Anis C.

Le lun. 20 avr. 2026 =C3=A0 11:40, anis chali <chalianis1@gmail.com> a =C3=
=A9crit :
>
> Hi, Okay I will give it a try today and come back to you.
>
> Anis C.
>
> Le lun. 20 avr. 2026 =C3=A0 10:11, Ahmad Fatoum <a.fatoum@pengutronix.de>=
 a =C3=A9crit :
> >
> > Hi,
> >
> > fixing the Cc.
> >
> > On 4/20/26 2:18 PM, Sascha Hauer wrote:
> > > +Cc Chali Anis <chalianis1@gmail.com>
> > >
> > > On Mon, Apr 20, 2026 at 01:32:25PM +0200, Ahmad Fatoum wrote:
> > >> Hello,
> > >>
> > >> On 4/20/26 1:20 PM, Sascha Hauer wrote:
> > >>> From: Sascha Hauer <sascha@saschahauer.de>
> > >>>
> > >>> Some DWC2 configurations do not assert CHHLTD when a NAK is receive=
d;
> > >>> the hardware keeps the channel active and only sets the NAK bit in =
HCINT.
> > >>> wait_for_chhltd() polls for CHHLTD with a 10ms timeout; when CHHLTD=
 never
> > >>> fires the timeout expires and -ETIMEDOUT is returned without inspec=
ting
> > >>> HCINT. This causes the caller to treat the NAK as a hard error inst=
ead of
> > >>> a retryable condition.
> > >>>
> > >>> The symptom is that devices which NAK bulk or control transfers dur=
ing
> > >>> initialisation (e.g. some Samsung USB-C flash drives that NAK while=
 their
> > >>> firmware starts up) fail immediately rather than being retried via =
the
> > >>> 5-second NAK-retry loop in dwc2_submit_bulk_msg() or the do/while l=
oops
> > >>> in dwc2_submit_control_msg().
> > >>>
> > >>> Fix by reading HCINT before aborting the channel when the CHHLTD ti=
meout
> > >>> fires. If the NAK or FRMOVRUN bit is set, abort the channel, wait f=
or the
> > >>> abort to complete, and return -EAGAIN so that the existing retry lo=
gic can
> > >>> handle the NAK. Log a diagnostic message if the channel abort itsel=
f times
> > >>> out, which would indicate a real hardware problem.
> > >>
> > >> How does this relate to
> > >> https://lore.barebox.org/barebox/20260331034819.227094-1-chalianis1@=
gmail.com/
> > >>
> > >> Do we need both? Only this one? Is there something over there, which=
 you
> > >> would want in your series?
> > >
> > > Sounds related, but seems to be a different issue. It says "handle th=
e case where
> > > DMA has already completed by the time we get here". DMA is not an iss=
ue
> > > in my case. We likely need a combination of both, but Chali, could yo=
u
> > > give my patch without yours a try to see if it changes something for
> > > good in your case?
> > >
> > > Sascha
> > >
> >
> > --
> > Pengutronix e.K.                  |                             |
> > Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> > 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> > Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> >


