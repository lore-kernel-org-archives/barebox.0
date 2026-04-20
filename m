Delivery-date: Mon, 20 Apr 2026 17:40:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEqjx-00EORd-31
	for lore@lore.pengutronix.de;
	Mon, 20 Apr 2026 17:40:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEqjx-0003Y9-9p
	for lore@pengutronix.de; Mon, 20 Apr 2026 17:40:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a0CkKqFo6tvjnA/W/FK9Z09+BTjr9BYjEaZch5pNjm8=; b=vqqQTHkMxgvn7I
	Rsz+tK9vzn+4ni8BzewnoKe6j1rrNbl9pivYpD5naNwe+kJkoHK0Nk7fkMGacTCyfa6PF1bltA+cd
	2h96YBaxXAC4eubk6Y40sJPhqjnj8Bw4Sn6Zx7gXZ881Zj/OQ/Dlla0NA9GHUzWIKhzSgGiEWOd3v
	lrdgAC2FTXKkZAs8xxJBmC6q5mf7gfCHPzXv/Y0ZXSITiGMxdzbXpMZU2VmnmebJL5YH9EBtaGTsq
	MyYpDKBJKtMdClC4GEq5p+yqUFrmALOZNBgHaO9BH0ug54oiSSRRkcPR24bz8xABCLdob5XfL4Taa
	tPWGd5Fd2RxvJZwofa8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEqjQ-00000007KjM-3JLY;
	Mon, 20 Apr 2026 15:40:16 +0000
Received: from mail-dy1-x132f.google.com ([2607:f8b0:4864:20::132f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEqjO-00000007Kiq-2ZHh
	for barebox@lists.infradead.org;
	Mon, 20 Apr 2026 15:40:15 +0000
Received: by mail-dy1-x132f.google.com with SMTP id 5a478bee46e88-2d868d014a5so3027062eec.1
        for <barebox@lists.infradead.org>; Mon, 20 Apr 2026 08:40:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776699613; cv=none;
        d=google.com; s=arc-20240605;
        b=QsFcPCctzOKnqAQ3p7Ow17moLLM6A8YGYdKTqWgB5sb9TzQ9LbQFX5KJtJixKehAzI
         kFGU/6LZg3B4NenVxTcEg3Lx8BGx1vav7M+Lz+HN8UD0k5xPurixztpCd8a+ON11jjPP
         hRPB6ej+GW2nrhbaKiEyK1nWudEOfTd/HWOmRECrU37qiq3hkMLhqih4nTy7YDiwcPov
         TTbalP+pn1um3v1gSiYDdxPjQRcdSb+4/6h3OzPFpO9XJG80U5gUSmcN6u/fXeM1Msul
         3Mp4jJeLJNU0TsxmRTKuCTqQfX0kXYTS7rwD4hkjBnvyHkiwmxHgA2ozL+e5W0Gws7Zc
         qs6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=a0CkKqFo6tvjnA/W/FK9Z09+BTjr9BYjEaZch5pNjm8=;
        fh=5FtRZLCDHDHEFpXGeqaAmbn+6ZHvhib1RfPV1Zab6L4=;
        b=Jo27hpUZF3Bnsh/L5hE2k5cmEZobVlvdve98lhiffcUJgcw+AW8KD/Wqa+tj2gzffb
         msyWY85fQGHZzNnv4Ll8ZFTKWJU18fFrRavqsH/TxdfE48eBQhusCX3ipDUXB2BVd2nh
         kjqiR8ARtmFYOnYvBZjE1wVzyv1xA/G1ThPC2YjKMEtCtgPDUEwx25CBXWKq1+rdPsDM
         I8DUVOJqz+WZlo4W3L4nnr+3CBcrY1I6rdEwryY4NTs0CCHETM9s8PTMVz3C8CF9G4wV
         8vINJMFAiBOKnUq0H1jnkotY2bGpC006dZOriHnfyn2EgQWRYqHgqEkF6Y+XtxZR9TWv
         K+tQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776699613; x=1777304413; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a0CkKqFo6tvjnA/W/FK9Z09+BTjr9BYjEaZch5pNjm8=;
        b=o+mzuQ1t7EWkhCj05S1d61DCsF++5qtD6DRz4IxH5iNFZBxTxXzECIhUkLGaQ0RvSV
         YX2RLiHsXP7+bL3xXrMX0BHVH73cmdgHkSIwXWIqHxzXBMLfrJMasaO/shZb+neq7/6W
         A0MjhQaTRa3PoZRpDsOSCqUs+C/XQwtlVres7WYS91k5U4RJyKs77erltUHeOdY/8503
         HfEPQpO+Yv2OjTG/WEZ2r5aI9nljhZNqLWzaNnOkJG86mJ0ECewC4OWfRuZSOhCdrDF4
         iJb37hCh7XtbiGBoQOsHUKZRsrxxlMKZhtAbwLBDYlAnP4z6uSc5RlF8x97spDY2fiaM
         OJtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776699613; x=1777304413;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=a0CkKqFo6tvjnA/W/FK9Z09+BTjr9BYjEaZch5pNjm8=;
        b=N4+PHwpqTfmVSE/Ft8/J9rsOdUpOdyN26clzX4o9EEmnlpfFTGDfnsslq47WKBx9ES
         SAtbIpPwOOpaENQOvQcKV+0IPQvgA3v7WuW8cwDTywaCrQdMwy6mpxfKFbgX1fMIC83R
         jtjhs5Jx/DpBKwZfzK3ORgujPZ/3dKest4rm8mX6y7HVzfSl6QqK0/RN+6va98MJJ4mE
         LPzQ3RFyFg5nUj1ur94MfUi82Laf/le55eZsdSy50nbX7vZhEay4ktWqUR1YJNilPvoV
         qvWbeHvt7XDFtqJvWfKsQoblt50iyLyo8BlH5czqcvMuQzM9CQtoU180nrHY1VvwQEfN
         POYA==
X-Forwarded-Encrypted: i=1; AFNElJ/AHfVKFtFH+rIoqaxulca8uI5GsKU30MsW8iG3hrTpn27VzhhJRSzpPAI2tZzmZ0CNT92pugck@lists.infradead.org
X-Gm-Message-State: AOJu0YwIIdk3kxkLIGklVHsWeHUILUa0+9d/q9J6gFJCH+mX62xKuwoF
	46WwDcka6IqhYVPSYj2pMh995IKbZOvbjwXDugLi5MIp0fS1RtUzWsmQhw4JLG80wdKfGlkSG83
	7m+zS15Y87tHBca/4l9+3AELmIzAwTWE=
X-Gm-Gg: AeBDieulzEDrN7BtKxI+d6aE0a/B1cIqzRX7ILAFjFhJPH7KyikMNkRaXF9haQOhi8L
	ahGuJUm45KNQD2UhsctrQyytOq/P1tDJbf1u/pd4lQm3l504UB7fITuMS27u1LJUNhWHMor3BE9
	L9J9vTf5KsxmTHydfL2nUf1yaSYWIv7YpqZ08Kfg3Tbj3yFWQWxtJFAC2SQSdrSAY2U3VW/WHVR
	j0O25pmK8kcV1LcyAOw/7y3/iN7ePihvxT9iYaJ300jkQYtShOt/xfvVOw8pPDDV1/beT6vkHlL
	rAKy7zOZ5xfke9aeIyphM1oxGSQYJQsz+Q==
X-Received: by 2002:a05:7300:3723:b0:2d9:db50:c6d6 with SMTP id
 5a478bee46e88-2e478a331b3mr7553103eec.21.1776699612830; Mon, 20 Apr 2026
 08:40:12 -0700 (PDT)
MIME-Version: 1.0
References: <20260420-usb-dwc2-usb-c-stick-v1-0-c86f733f24f8@pengutronix.de>
 <20260420-usb-dwc2-usb-c-stick-v1-1-c86f733f24f8@pengutronix.de>
 <439e4d93-0b31-41a5-93a4-3e0456e60a7b@pengutronix.de> <aeYZgSySnesKe_L0@pengutronix.de>
 <22ce3b8d-b01f-4566-895d-c175c33a7e26@pengutronix.de>
In-Reply-To: <22ce3b8d-b01f-4566-895d-c175c33a7e26@pengutronix.de>
From: anis chali <chalianis1@gmail.com>
Date: Mon, 20 Apr 2026 11:40:01 -0400
X-Gm-Features: AQROBzCTHK5_nY73BcViW6Cx7KHv8tYJVoBlV7i9kFRevk9XOJ5QEnNPnFiB3OM
Message-ID: <CAL+1fyAnh3D1p=yj8+Fgj8CsjE6R0Jsfc5XbwyZYKhK797QQ8w@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_084014_657385_6D1181F4 
X-CRM114-Status: GOOD (  27.14  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] usb: dwc2: handle NAK when CHHLTD does not fire
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi, Okay I will give it a try today and come back to you.

Anis C.

Le lun. 20 avr. 2026 =C3=A0 10:11, Ahmad Fatoum <a.fatoum@pengutronix.de> a=
 =C3=A9crit :
>
> Hi,
>
> fixing the Cc.
>
> On 4/20/26 2:18 PM, Sascha Hauer wrote:
> > +Cc Chali Anis <chalianis1@gmail.com>
> >
> > On Mon, Apr 20, 2026 at 01:32:25PM +0200, Ahmad Fatoum wrote:
> >> Hello,
> >>
> >> On 4/20/26 1:20 PM, Sascha Hauer wrote:
> >>> From: Sascha Hauer <sascha@saschahauer.de>
> >>>
> >>> Some DWC2 configurations do not assert CHHLTD when a NAK is received;
> >>> the hardware keeps the channel active and only sets the NAK bit in HC=
INT.
> >>> wait_for_chhltd() polls for CHHLTD with a 10ms timeout; when CHHLTD n=
ever
> >>> fires the timeout expires and -ETIMEDOUT is returned without inspecti=
ng
> >>> HCINT. This causes the caller to treat the NAK as a hard error instea=
d of
> >>> a retryable condition.
> >>>
> >>> The symptom is that devices which NAK bulk or control transfers durin=
g
> >>> initialisation (e.g. some Samsung USB-C flash drives that NAK while t=
heir
> >>> firmware starts up) fail immediately rather than being retried via th=
e
> >>> 5-second NAK-retry loop in dwc2_submit_bulk_msg() or the do/while loo=
ps
> >>> in dwc2_submit_control_msg().
> >>>
> >>> Fix by reading HCINT before aborting the channel when the CHHLTD time=
out
> >>> fires. If the NAK or FRMOVRUN bit is set, abort the channel, wait for=
 the
> >>> abort to complete, and return -EAGAIN so that the existing retry logi=
c can
> >>> handle the NAK. Log a diagnostic message if the channel abort itself =
times
> >>> out, which would indicate a real hardware problem.
> >>
> >> How does this relate to
> >> https://lore.barebox.org/barebox/20260331034819.227094-1-chalianis1@gm=
ail.com/
> >>
> >> Do we need both? Only this one? Is there something over there, which y=
ou
> >> would want in your series?
> >
> > Sounds related, but seems to be a different issue. It says "handle the =
case where
> > DMA has already completed by the time we get here". DMA is not an issue
> > in my case. We likely need a combination of both, but Chali, could you
> > give my patch without yours a try to see if it changes something for
> > good in your case?
> >
> > Sascha
> >
>
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>


