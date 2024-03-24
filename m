Delivery-date: Sun, 24 Mar 2024 21:09:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1roUAD-002p0q-0q
	for lore@lore.pengutronix.de;
	Sun, 24 Mar 2024 21:09:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1roUAC-0004Bp-Nl
	for lore@pengutronix.de; Sun, 24 Mar 2024 21:09:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=38F8WXTRPZvKQhGsaEIKuxgGVGunrYxA70CvR5QXq+w=; b=IlFo0h78HRYO6ZxPb8ZhTVHIGh
	szMeSuichEq4RlRKY/ISe3y7/9p2SrfZIDsJL2b2/ZoUXCh/0TRTJddis+OfpUKRc/vLqbS1hs48K
	IF6/2DB6lBCvPBKwooCdWs0kjwHeCMMHofoahPej3mWRJEeWhbKupemNFLN4fRVlGzjtj775zcu3W
	7Y9E7a7cvGspcspjLeRgskkfCpHSSjeo3ilRvktn737kifW3wXhphJ5fffsJHMKqMMMh68vUQ4CtY
	I0fbu+ZgFRxTcSgnAJ7Be9DGATdRLYbFd7U2JzcqABhfMTqdF1nr8HTjaQwikuH5FGfVEWkZlyP0q
	u0WIq2Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roU9O-0000000DMzp-3IxM;
	Sun, 24 Mar 2024 20:09:02 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roU9J-0000000DMz0-2tkt
	for barebox@lists.infradead.org;
	Sun, 24 Mar 2024 20:08:58 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-515a81928faso657676e87.1
        for <barebox@lists.infradead.org>; Sun, 24 Mar 2024 13:08:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711310934; x=1711915734; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=38F8WXTRPZvKQhGsaEIKuxgGVGunrYxA70CvR5QXq+w=;
        b=a5YZV54wRl7ce7zg5omJWRyG9gWCf9QN8kDdk7bLKoykVk4aR33xwZa+rqJF2tvS4/
         tFcBwORBeUlzYe29r4wjhPEvQEeNy0kjCCtoeSzWqCER4iZMwSkpgNR1xGyH7UeSqDIk
         2fir1wyEW5qEbpLnmVMAZpfga0KchGZXZNMJhW/tuzafdNn5W58tW7iove6WjTU8Pc/q
         OTfLt51S3hg7w+NY5RIZJlA7P/OxFkGL25qPSrh4L/FvEQp0TOWKgtadlGc0qVJGqyS+
         5ltdNMmnPzcDQQEgLGz3NwX7l9q9DNs4/x7LI1Yk2KbczGJhpl3LMGMRhziIeaToaSKf
         3WVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711310934; x=1711915734;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=38F8WXTRPZvKQhGsaEIKuxgGVGunrYxA70CvR5QXq+w=;
        b=ckLaMiQ3RD/T/mEMpPLl4yrKWZqFZcthm9LVD5C9KZLEK5IytI8/hSkXy0v1X8fKiy
         FUPYVDtjZ1L5bP/LAloC+sEGg8jfzfh8S/fnpWsU3f1D8duKmXFmWok3Qcsir5KZKfV0
         hePy5jWPePjfjozhm9c5T6SojJ7LsVX/iGKT95WqCrlyPeGg8a+zUd66Gi8q3Bd54IiW
         N+TXOt33tRH5cF20slQ1EcrIYYj6SYCkZcY0MNBTUNS5SXWh1f20xPZjiawbfe09Bpsu
         H0k/pusInBMNUq2o7SG5hXRDMcA/+7KAnunJxhrhE91Ho0iubchxkLNWuo37N1dwZQ3q
         DF0Q==
X-Gm-Message-State: AOJu0YyL9Oe4V59pySp9IqbGY2pvW1APMXZGfoP0upGD0C7DU8FKJ9+Y
	IrwFOSlIrxNd1NfGXrM9c1vGsPtRxCvTjI9ePbSUbb1RbVE8DPsr
X-Google-Smtp-Source: AGHT+IGqarr9dhle/OsNNbb/Rs24DB7Oz13sTLH+JL13XardI+Bg+p05LGRAEq5k4d7qK/WGvIN2aQ==
X-Received: by 2002:a05:6512:21ab:b0:513:bad6:cf03 with SMTP id c11-20020a05651221ab00b00513bad6cf03mr2655738lft.16.1711310934061;
        Sun, 24 Mar 2024 13:08:54 -0700 (PDT)
Received: from flare ([146.185.218.236])
        by smtp.gmail.com with ESMTPSA id w24-20020a05651234d800b00513c1d03108sm776849lfr.229.2024.03.24.13.08.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 13:08:53 -0700 (PDT)
Date: Sun, 24 Mar 2024 23:19:32 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-Id: <20240324231932.d9d4ac9d8ebd55e9be21f04d@gmail.com>
In-Reply-To: <579562bc-72ad-4661-8675-986ccd79126f@pengutronix.de>
References: <20240310233355.015a6192a3d7cd668dd6f820@gmail.com>
	<41f4bc52-f619-4a91-a114-5eb2498cc3fc@pengutronix.de>
	<579562bc-72ad-4661-8675-986ccd79126f@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240324_130857_760960_6AFBC81F 
X-CRM114-Status: GOOD (  12.32  )
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
X-Spam-Status: No, score=-7.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: Documentation/boards/riscv.rst: can't rebuild image for BeagleV
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, 22 Mar 2024 15:29:48 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

> Hello Antony,
>=20
> On 11.03.24 12:50, Ahmad Fatoum wrote:
> > Hello Antony,
> >=20
> > On 10.03.24 21:33, Antony Pavlov wrote:
> >> Hi Ahmad!
> >>
> >> I have tried to rebuild barebox for BeagleV.
> >> Alas I was unable to reproduce the steps from Documentation/boards/ris=
cv.rst
> >> because of changes in opensbi repo.
>=20
> I just Cc'd[1] you on a documentation patch that describes how it needs
> to be built now.

Thanks for your patch!
Unfortunately I have not succeed with patched documentation.
I'll reply to the patch message.

--=20
Best regards,
=A0 Antony Pavlov


