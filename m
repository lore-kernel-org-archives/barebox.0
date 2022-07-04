Delivery-date: Mon, 04 Jul 2022 14:56:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8Lcz-005YuS-T3
	for lore@lore.pengutronix.de; Mon, 04 Jul 2022 14:56:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8Ld1-0002tT-TC
	for lore@pengutronix.de; Mon, 04 Jul 2022 14:56:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ADS3pB6SJO3pVo3Boxz7n3Rt/Iq2AHRQtSb2ZiEbnBw=; b=rXSfBZqpsm1M+VZuJx8EmSbJaO
	sdM6NkQ6Wf+4DOjqCateWyTlnH+ETrOkceJCxobUFkIic+6ePD5AFgcjrNQyXhlskCVvzp1yh4wSE
	1L0IKnTEIxs/U+svFGWRQ4foTFjHH6q4JLTgg35hwNMd5e/7H4xF5eNN4h1T+6vRbVgofsNnzwrTL
	WRxOdaLUxC0SMqC59Y+RGdZy3nId2YXSm9kKeqQFEMvvq1o9fndD82l4oA9EKk7Hy8gXN5KJd5YJ6
	CjnZERKPtMDvDXMEvC3Xs8RTmUvB8pm3ud8yD2ksGxmROEljDNSeAhLYQieo1wQSTPzc7iDK0J2Xv
	qEj9iV2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8LbW-008y6N-PQ; Mon, 04 Jul 2022 12:55:06 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8LbR-008y51-5D
	for barebox@lists.infradead.org; Mon, 04 Jul 2022 12:55:02 +0000
Received: by mail-yb1-xb33.google.com with SMTP id o2so11474892yba.7
        for <barebox@lists.infradead.org>; Mon, 04 Jul 2022 05:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=ADS3pB6SJO3pVo3Boxz7n3Rt/Iq2AHRQtSb2ZiEbnBw=;
        b=DiF1V+ohq2F6BckRtMLmk/vzONHb8qvbHHcj5Lh31RXpSiXlZIYMPaotBxmIwM0to4
         aDPRddffReILoz6OXAgvDvh2+EQphxPWTCLYas2kUWEhEytNnNbE++hEfVryRH+fVY2w
         ADTg63l39Qr2spANjr1gm5+iSpS3DnNA+0k0rv5VRvnKKjuQ2o9iiGApC5N1S1+ER00W
         AU983BSI1YDopXIQaHvPqo2k/K/8ZMJfDZC4PcIlSq8APuzjOYEHuValO421Dgd5kXlh
         fMG0KVN2UrqRm0WGpw0+I+pZSeoU7e6DbIbKqbNS2dWV4KcOn9QsYBo2wXCtQbKwb+gL
         Fn3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ADS3pB6SJO3pVo3Boxz7n3Rt/Iq2AHRQtSb2ZiEbnBw=;
        b=WVyZZEglQgC1AO/7hvuU83E2/RCjmhXXuUGzp9lwdd0XRP93gLE57NEt6Ml9uXGnAU
         xLEZNRF6dGsTNw71hhsXn9xcHYWTGwbLwqca+8pS0nSC0/8ulGYc+j9BZEIS1PyM/C6u
         mGh3O9g+es2tqa4ES9RRqPeSnAl/dpBpNvA984eFMSucGJvX1T5TIMtdfmOeX98ErbwZ
         ioHOr9FCFcolwLJUlAF8exNxgyiBuT6b1qPbHHLjSBXJ+xVOB3Hhyx6alUqQKXXbgDjp
         Z/IJMD9tKfHIeXlyp66fbc8C5sJtO7Ov0kUSScRKe2Oe5rWa5HjSBpbGnUPWHY03x34X
         x4Rg==
X-Gm-Message-State: AJIora9b1D6Jku606FH2i7TBO58UHOKT5y9+NpHpOM/3HYm7ychdoJJz
	tleY2qWZX43Ouzox75Joy1k7LXv0jriADyVphtBz/MUqRV3zYQ==
X-Google-Smtp-Source: AGRyM1sVGbC8wI/2mreN1y42txD7MS+8RzkA04QJck2ZMuuPeSp8CCHUbYbJIrF0R/NYuuB4Xc0/H5KDFy8nTLVyqeQ=
X-Received: by 2002:a5b:a4f:0:b0:669:9661:55e4 with SMTP id
 z15-20020a5b0a4f000000b00669966155e4mr32033075ybq.466.1656939299152; Mon, 04
 Jul 2022 05:54:59 -0700 (PDT)
MIME-Version: 1.0
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Mon, 4 Jul 2022 14:54:48 +0200
Message-ID: <CAGm1_kss73npzzCzoD44kO4C24PNwPHZcOV_nZWwq_sW12zxww@mail.gmail.com>
To: barebox <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_055501_258369_8266E96C 
X-CRM114-Status: UNSURE (   5.23  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: am335x: baltos
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

am335x-baltos got broken between 2022.06 and the current master. The
symptoms: no barebox console output at all i.e. the system freezes.

Here is git bisect log but I don't really see the reason for the failure:

git bisect start
# bad: [269dc4d7eb891dee25d4fb07b693a36ab37c7472] ARM: dts: am335x:
update cpsw nodes
git bisect bad 269dc4d7eb891dee25d4fb07b693a36ab37c7472
# good: [4708257d5e1345088aa2b3f2f76bb8bb37f7368d] Merge branch
'for-next/earlycon'
git bisect good 4708257d5e1345088aa2b3f2f76bb8bb37f7368d
# bad: [bd0e1e5dde37cb927ad9e5d225d55d0cb636a53d] Merge branch 'for-next/misc'
git bisect bad bd0e1e5dde37cb927ad9e5d225d55d0cb636a53d
# good: [949bc82e530381eab565b95e5bf1bbc0021d2c89] fastboot: always
try barebox_update handler for bbu- partitions
git bisect good 949bc82e530381eab565b95e5bf1bbc0021d2c89
# good: [ea162825a013c29823fed9e7d77c9671684cf247] state: don't report
error for -ENOMEDIUM
git bisect good ea162825a013c29823fed9e7d77c9671684cf247
# good: [32f05fa24bb481906ff23e496d3a09260c8959dd] ARM: i.MX: Make
sure *_get_boot_source always assignes *src
git bisect good 32f05fa24bb481906ff23e496d3a09260c8959dd
# good: [3367ebc55ebe92e21c9a9045e1eab35593cfcf57] scripts:
imx-usb-loader: simplify code flow for file size calculations
git bisect good 3367ebc55ebe92e21c9a9045e1eab35593cfcf57
# good: [370f346bca176a93d034af2c0021b5da9a6101ad] ddr: imx8m: remove
header including itself
git bisect good 370f346bca176a93d034af2c0021b5da9a6101ad
# bad: [8828e1226981b6a31b12a643768cac63fae3576e] Merge branch 'for-next/imx'
git bisect bad 8828e1226981b6a31b12a643768cac63fae3576e
# first bad commit: [8828e1226981b6a31b12a643768cac63fae3576e] Merge
branch 'for-next/imx'

Best regards,
Yegor


