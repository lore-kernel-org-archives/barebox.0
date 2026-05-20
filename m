Delivery-date: Wed, 20 May 2026 13:18:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPewc-001qSk-2F
	for lore@lore.pengutronix.de;
	Wed, 20 May 2026 13:18:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPewc-0000B7-3j
	for lore@pengutronix.de; Wed, 20 May 2026 13:18:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3Hj4vhWNkqm581+eeuCZSesQRU+fKIWbJ4FG+5WaB28=; b=g1JjVFFmKkYq1/3/Sp10EJ8oLG
	GCXSS9ULWFvSoNKBJ+h3r4ff4lXHx2ApRE/TvFMtg20XU5F2LQ5S4daw+D0f0VR56EdnfAY7ect41
	ucbE5pJAvLHhn4g0OfQNmQx1XkJPg+/QWqPGBiZVG8SSWU1Ha3qnhLHfx1W1Z+aIsz9GpTm8/bdIs
	8R6/ZWa2cK5Bm83vYi9hn8g3Lay/9PQaCKb703IVjZEeKc1QlrUmEOprEdVSu88UTtPbt+X+LyJju
	OzM2OMiICS8aKOegH8lgG2rS9RNsKP/l1ocUSslzj5uFoamzn0LLiEBhLvEanTJuAMoY5jKYvWPkt
	p86xBGQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPevJ-00000004QaI-2Rgb;
	Wed, 20 May 2026 11:17:13 +0000
Received: from mail-dl1-x1236.google.com ([2607:f8b0:4864:20::1236])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPevG-00000004QZw-31Cu
	for barebox@lists.infradead.org;
	Wed, 20 May 2026 11:17:12 +0000
Received: by mail-dl1-x1236.google.com with SMTP id a92af1059eb24-134fe980658so6158377c88.1
        for <barebox@lists.infradead.org>; Wed, 20 May 2026 04:17:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779275830; cv=none;
        d=google.com; s=arc-20240605;
        b=W4p4i1rhzPKwveiIIVeVkiYxwGtv1L+0baWsIDEcxNinYeCCS4HO78xVQqZW+hb7+q
         7/oa9TfXafrjwT7VxqR5V633TFeqPh1jKkd7WLDoZw4qph2VjpBp8y2zVY/YXgwC6wKA
         5zVDpeA3mP8iw7CfKZJ8ZHtMvjWy2FuLy1c78JNitvYJ4FDnq36dOhYnwKNntsPxs5J0
         yE3WjOkCNq3wEcdLGvEb8FDZIHrI1uf7JVt6uIO/D3BNy4/FK9DfzZ4VAjTTkprIbe7L
         7eno8lJKu7266y1/SsJtdbrZv639Kn8cKEE9RRXWg6caqsoE4SnBDkZMQUUgVWgdDSSo
         4Mmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=3Hj4vhWNkqm581+eeuCZSesQRU+fKIWbJ4FG+5WaB28=;
        fh=QTl4aF0/iXkDY6Uf61Tk/V/7sh5GF70RwK/YHfa2l1k=;
        b=T6uGiHOVW/hSxKALbuOlZwf4/wGYLXGU6wzIQQag5XTcB6RFJfNcUEQ6eKwHKzwJtv
         fGKzUdoQTnmG74mqI1hjXR2FPtDss+244o5Pl99vyboePI5vlNszK/oG35qjhiWthg7P
         1GemzVEzJpqKqeYr2VzJa6okWadpYvlLNUXuyRlaak5SAth7bu1Tg06vw+srgO0bplJM
         lEEJqkE3cP/KwrweujszwqaTguHjPmlMZJwRkdMSIUCDK6n5xmaUYPehd7tkdS6SfpH9
         HMwx0AdMHaLWMIU9xXrK8UO4dtPwWxHQw0TWztmi7zn9ZlSsT0sCAZR7PCX0ESSVsIef
         4QkQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779275830; x=1779880630; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Hj4vhWNkqm581+eeuCZSesQRU+fKIWbJ4FG+5WaB28=;
        b=Z7jKO0b6LYAGi+bds2l6tUbTHMjdbqh9NmWZ5PlI2+tkdbEUgSx679e+WwdXOytuvs
         DaSLu8No3gHwRfw3w+peNbjyrzvKKC4vVxAbeMYsBWpuCt3+nu3OsCzY5ufkpPrdaA0z
         5v3CbfTtulicOMvyHWPNpkj2X3bHXBFL4XSpj1EUoMbu3JDPBpKeCazpu2hV4i6bLhdr
         FHJYrYWYA0uTvcd1K1zW6e4bwKswYvqoi0qOVjyzKDobq+XP2fmF5NfUnTqSorrekayn
         9GzhYF2Ve9TL72vwHAnd8JYuO9fGAcJlYbaAZ1UmycjSaxxUoZ1fqeueT1VzVkuWQTTQ
         m8BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779275830; x=1779880630;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3Hj4vhWNkqm581+eeuCZSesQRU+fKIWbJ4FG+5WaB28=;
        b=jfppaDjAR6+spIq7em5bUHVwU4esyrnjoWwH9eTTBURf6CgGZx4+SZ23DoW747n8hX
         h5D/CHrMVxecKlBUbKPF7BcJQQm05njaTRlKd/wgr/cSAH7OSpUL+kM91JZALPcmDter
         KewKIBn1o+94t+aV91zmogc8uQYFgHpVJVaphYpDQ3fwXZYfQAIDAUHh8Mxxj/4QRPBQ
         8pejTuuXRENTkHpdnil1WcOU/G/VK/vSLooMjozvEBTNscVl3SzZkQ9JerZdoXE1NRjX
         1xR3z3FDWMAddaRo54FemhoWoS7i0j0B4ZRHm1PQpPfvIqm35IzmmWqb/xglXxZe4jjb
         hH4A==
X-Gm-Message-State: AOJu0YyKxlo/ACeaZkI1YyOGDUnHDH1XfuhbEgPmH4qQPeHYJLKbk+Yv
	daYESg3wPIXka5L+frdSW0RZxMwbldJWTmqYqQsfCHkSoLLRjZ2hCQirbyxzs9IZ75RrCbnaKZ5
	v0HxkJP4Rhv1rPZSChl8j0DsWSY61ic1Xmy4vxeKk5g==
X-Gm-Gg: Acq92OGZU2RYsmtJgj8ayTmtFSKulBShSDpTlrWQsc7SX73O1lceovwM0T/d/XQOU2y
	AdKuhEMwSNxX+QoCZuXr9J904hWdXE/r63U+v2CLJaXY/rt2GULPjDqcbb9SZwNfNtPMwbCG65J
	nIQXPVNYfoMS0Jzxst4Ws+m/cOIyTMtS3RYJVPgE1xio1yBPg8xco1QYRlgvHq+hm3L6jFI+TyV
	9U5mJLAuzjkMzBvKgkajeh8o2Rqp/DWanOkEqlTIehj9hxIKHTcjESFsL5dNONQDccgS2PIRAPo
	mzXBvVIr
X-Received: by 2002:a05:7022:6987:b0:135:262f:f6d5 with SMTP id
 a92af1059eb24-135262ff71cmr9847657c88.40.1779275829628; Wed, 20 May 2026
 04:17:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvQNpjt4e2AhwTPoMKM0E9gra__3feFdczhvVWTc6e_4CA@mail.gmail.com>
 <E1wPaJS-00000001yEr-2gmZ@pty.whiteo.stw.pengutronix.de>
In-Reply-To: <E1wPaJS-00000001yEr-2gmZ@pty.whiteo.stw.pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 20 May 2026 14:16:58 +0300
X-Gm-Features: AVHnY4KUd9fuLcRfP3VSSmru51Y1CsmgU8LlgpRHk36WlLmF2vpx3g9fEblsI8A
Message-ID: <CAP1tNvRtsajFJ25x6JGw4dvDB-EGAdABYFrg1sFpYMYZ7XCJtQ@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_041710_764113_EB0DEDD8 
X-CRM114-Status: GOOD (  22.85  )
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
Subject: Re: v2026.05.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha.

There is only output from sdram-init binary, then silence.

shc@gentoo /home/ARM64/barebox/firmware $ ls -1hs rk3568*
396K rk3568-bl31.bin
4.0K rk3568-bl31.bin.gen.S
460K rk3568-bl31.bin.gen.pbl.o
4.0K rk3568-bl31.bin.sha.bin
64K rk3568-bl31.bin.z
456K rk3568-bl32.bin
4.0K rk3568-bl32.bin.gen.S
624K rk3568-bl32.bin.gen.pbl.o
4.0K rk3568-bl32.bin.sha.bin
168K rk3568-bl32.bin.z

Can you compare them with your files?
I understand the versions may differ, but the size should be roughly the sa=
me.

Thanks!

=D1=81=D1=80, 20 =D0=BC=D0=B0=D1=8F 2026=E2=80=AF=D0=B3. =D0=B2 09:21, Sasc=
ha Hauer <s.hauer@pengutronix.de>:
>
> Hi Alexander,
>
> On 2026-05-20 08:15, Alexander Shiyan wrote:
> > Hello Sascha.
> >
> > The first launch of the new release has failed.
> > On the RK3568 platform, BL31 does not start. The size of the final
> > binary has decreased from 1.5 MB
> > to 930 KB - possibly due to the announced compression, but it seems to
> > me that this is too
> > large a reduction...
> > Are there any additional settings/calls required for custom boards in
> > the new release?
>
> No board level adjustments required. I just re-tested the relase on a
> Rock-3a board using rockchip_v8_defconfig. It works here.
>
> The size reduction depends on the size of your firmware binaries. You
> could look at the firmware/*.z files and compare with the original files
> to see if that explains the size reduction. The TF-A and OP-TEE files
> that I use only have around 700KiB in total, so a size reduction of
> 600KiB would be unreasonable in my case.
>
> Do you have any console output to share?
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


