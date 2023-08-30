Delivery-date: Wed, 30 Aug 2023 16:43:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qbMPf-00Ejy2-HN
	for lore@lore.pengutronix.de; Wed, 30 Aug 2023 16:43:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qbMPd-0007Wr-CE
	for lore@pengutronix.de; Wed, 30 Aug 2023 16:43:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IPa3asOwmvgMQQ8sU74cpt3OGgdHlDvNg11e86GikHM=; b=UnODrbmr0Ar2Zk9zjZu56X3hJx
	dZ4iLGosNE8j3nXlGS5Mxu1nNm459RAs5Kqsb1SufCOWim34FhvCUjhVDVOaxC4A/g4gpNI9QvaAA
	/OS0U+CPyX9B5KbyHNSUWvTp47SrVEMwvevFDMSePP0Q8Sb4flOOY9+rfvDLo0/YayvIqMq5Tcrpq
	HCMt/s5IsNTzlvWNLU4gTi5/G5CMNdlZucXUJESesMF/rbk7MQMBMN5G5fAqpqNUHMb3fy4s8eooU
	jE3RlsmiYow8KMyJ7UW57xDV3CL595+HGjp+nZCZYLXyl8It89D7dQJB6Cjcp2hbHCbAlr6vetoX2
	jrRXpShg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbMOc-00Dgdx-1K;
	Wed, 30 Aug 2023 14:42:14 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbMOY-00Dgd2-2k
	for barebox@lists.infradead.org;
	Wed, 30 Aug 2023 14:42:12 +0000
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-2680eee423aso3045573a91.2
        for <barebox@lists.infradead.org>; Wed, 30 Aug 2023 07:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693406527; x=1694011327; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IPa3asOwmvgMQQ8sU74cpt3OGgdHlDvNg11e86GikHM=;
        b=M9rZZ4ePBQYR8+sEY2del9JFhe2PaZOWggw8/LPSuoEarXD7w4UQ9XR9Exv3Az4J5u
         k0tIhtZzb4Eez5Qr9AyjRmiRln6SFx7K6GqL4+GqXPh5rpZq6+Op136r27obqZZYTDYO
         Wx+A51IqAhT9Qk61YvCMCH82pBorRzFopxDt195s7XjQZrXNrknDKZuA+3m+BRzlnvJy
         W8Eq4KH3HLns6FF/nq+moDvhNlHUR4H1m1EdoycG4tQZisaGyrK+bW6AB3ym70VF6Lkv
         bD7zF99cGMD1SBtjAQWp2p/gR38Fwbzf1VlMBSPqwxXZr1X5hVsUldqIoUYmN86jQoJ/
         /JNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693406527; x=1694011327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IPa3asOwmvgMQQ8sU74cpt3OGgdHlDvNg11e86GikHM=;
        b=gkRbf1IfdaQLwCmTQ4Vzi2NvbW0JW/25TBqiZnH+xNy1J+WdIUwTB8ufRFAs/eJl0k
         uNE7Px+Vo+568gyzjyZZtefsDXzl1g+724dwFtgIs5ByBlrnImxOkUA5QGvRWo+3gmva
         ub8X3ZtfTEI/hfS3PeRef4f26Mu5S/bwAu5+Sgg8xRraEQiIApQ44lfai3nr0bo6CSAa
         nWNiLwo1DCcjVPD20kochPGKDVcAUgYLSN6a3GF8/Omp6BTAV3whVAEJ/qxxboaLAcQQ
         VPyEn5ALKDieYCDtTv8TGcKXEPVyWloxRuV3HXP8Bedwoa83lnHcaSo0rVENX8LyTWz5
         /klw==
X-Gm-Message-State: AOJu0YxTuNnDQE8CCMyPvrCVE3J6SrFE9vYLCZrJRoTkcAuNIu4PF2HW
	4oGtbSCxfEevZ2DvvR7Yk8BWUlnHg33juC7yl3DpC1Ht6LcNHOUS
X-Google-Smtp-Source: AGHT+IFUMEzC9KT0IW9MaOHU8icdKGTw9wxONI2Xkowea18t8QVNnUh/aQbXRajJD1zRMFmu/2HZ8gPzag33nnNB11E=
X-Received: by 2002:a17:90b:4381:b0:26f:a180:8675 with SMTP id
 in1-20020a17090b438100b0026fa1808675mr2133653pjb.19.1693406527123; Wed, 30
 Aug 2023 07:42:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvThyufaTqyj8smDj89WeDeh-cggusnRYKMjB0ExAZ=94g@mail.gmail.com>
 <76a7bbec-5dff-c138-5c70-9b152558fe2f@pengutronix.de>
In-Reply-To: <76a7bbec-5dff-c138-5c70-9b152558fe2f@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 30 Aug 2023 17:41:55 +0300
Message-ID: <CAP1tNvRaVfTmUhTTCq755PkdTPgb9H1MEa-SQXjeKw8KQuvPhA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_074210_908894_58DB8731 
X-CRM114-Status: GOOD (  21.66  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: imx8mm & genimage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Ahmad.

"in-partition-table =3D false" helps me, now boot OK.
33K is valid offset for imx8mm, and we do not overlap GPT (or MBR) due
to the "holes" option.

Thanks!

=D1=81=D1=80, 30 =D0=B0=D0=B2=D0=B3. 2023=E2=80=AF=D0=B3. =D0=B2 17:25, Ahm=
ad Fatoum <a.fatoum@pengutronix.de>:
>
> Hello Alexander,
>
> On 30.08.23 16:02, Alexander Shiyan wrote:
> > Hello.
> >
> > I can't figure out how to correctly write the configuration for
> > genimage for the imx8mm CPU.
> > This way of writing works fine:
> > dd if=3Dbarebox-nxp-imx8mm-mgqs.img of=3D/dev/sdc bs=3D1024 seek=3D33 s=
kip=3D33
> >
> > For genimage I use the following but it doesn't work...
>
> What doesn't work? I would have assumed that genimage refused to build
> an image with below description.
>
> >
> > image imx8mm-mgqs-sdcard.img {
> > hdimage {
> > partition-table-type =3D "gpt"
> > }
> >
> > partition boot {
> > image =3D "barebox-nxp-imx8mm-mgqs.img"
> > holes =3D {"(0; 33K)"}
> > offset =3D 0
> > partition-type-uuid =3D 0fc63daf-8483-4772-8e79-3d69d8477de4
>
> I don't think a GPT partition can exist at offset 0, because that would
> overlap the GPT header itself. What you want instead is either:
>
>   - add barebox in non-partitioned space outside of the partition table:
>     That is done with in-partition-table =3D false, see e.g. DistroKit[1]
>
>   - add barebox in a GPT partition at the correct offset (32K?) and strip=
 away
>     its first 32K bytes. The only way to achieve this currently with geni=
mage
>     is to add an explicit file rule and use
>     exec-post =3D "dd ... of=3D$IMAGEOUTFILE.skipped && mv $IMAGEOUTFILE.=
skipped $IMAGEOUTFILE"
>     It would surely be nice to give genimage a partition { skip =3D [...]=
 } option,
>     if you feel inclined :-)
>
> For eMMC, the barebox update handler will take care to switch on the
> eMMC boot and install barebox and do any skipping of bytes if necessary (=
e.g. on i.MX8MN/P).
>
> [1]: https://git.pengutronix.de/cgit/DistroKit/tree/configs/platform-v8a/=
config/images/imx8m.config?h=3Dnext&id=3Dd4e41181cc388d528bbccb5e9ba96a6120=
980a55
>
> Cheers,
> Ahmad
>
>
> > }
> >
> > partition env {
> > image =3D "/dev/null"
> > offset =3D 8M
> > partition-type-uuid =3D 6c3737f2-07f8-45d1-ad45-15d260aab24d
> > size =3D 32K
> > }
> >
> > partition root {
> > image =3D "rootfs.ext4"
> > partition-type-uuid =3D b921b045-1df0-41c3-af44-4c6f280d3fae
> > }
> > }
> >
> >
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
>


