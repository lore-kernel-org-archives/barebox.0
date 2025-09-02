Delivery-date: Wed, 03 Sep 2025 02:47:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utbed-007ShG-05
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 02:47:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utbeb-0004m8-O9
	for lore@pengutronix.de; Wed, 03 Sep 2025 02:47:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iVCSAVqorVeAdMypQSuomYJfOrEKS9D6+VO9IKy2KUE=; b=dlCkeOkFkfwWzcieilezloY2oV
	XM6aexXAxko9gtVIvHutbAZNTdLPbm4vCRfuKSoHXo1eXAj+9aKI891gIoFrYwpAbUdzCQYwtcpht
	g+w/wovlRpfkFpet0O57ayvAlOdOVR1i2chFHEa+PhhCEoadfMDsCMALrjv579o+XAQTMmOAhklHQ
	0oQfQvsJDoYSCpqQrcrb0T/tL5ETHqpYIAsiDTnb+vb2w0rx3br1LvMGf61K8iYKby4t7ouSinRgd
	lkTjmTDm48AHIJ/KpSXSvgdffJaoVuIfxB4rFMlOAJVKLRFy3ks3Fs6uaQOO+Ht5K5YDcUtJuCk7R
	6ptaEd6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utbdt-00000002sHe-0rnF;
	Wed, 03 Sep 2025 00:46:29 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utYdj-000000028cU-1flO
	for barebox@lists.infradead.org;
	Tue, 02 Sep 2025 21:34:09 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-55f687fd3bdso5884333e87.1
        for <barebox@lists.infradead.org>; Tue, 02 Sep 2025 14:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1756848845; x=1757453645; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iVCSAVqorVeAdMypQSuomYJfOrEKS9D6+VO9IKy2KUE=;
        b=UgXSscMqy9wRwiwA3i1CTjEFDRTZmIRe+aWtafyagPX0+gFD87bWZ4x2QTqEg+fDXV
         NvsAP0u/JrdAuJv/sEVxDdj4GbRhOeWsc/liXdNY6WCnkZnBGEJRHkLMaYP4q8OzS68K
         vnJfOs+/M7iIz6wdZMyMBVAnnuPDLbFdIQxXWZ0IvLM3e0Ti2TjML3el16pfG3gdRb5v
         7HQUi7HQuYhRit5Sh0xFkAwhB8UuBHBdRTwW82bQNpScQpqeDeGG27BJosL+Dl0S2IL8
         yxJ0qDZFraUHBb2mcuUVOtP/jREdsJIAGjbvW8lG/QY8Jm9SCtFY8RTIHXIx5Q+GXaXO
         mBmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756848845; x=1757453645;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iVCSAVqorVeAdMypQSuomYJfOrEKS9D6+VO9IKy2KUE=;
        b=xTpCiPIJ/aD9kwuY3OIH+7Zm5LVmWUo7Ct4Pz4ZwX3oef2bTZLZuQkeorEl2Kk2klD
         G2lRdgQXyGreiF6zq19Yelx3fd73f+ryAJY0NtFZY3Rj+f2KNzheLtMp/EZTHFAebJh2
         diputpWL9/wY/7H0EfMB8hPKOTuUpT00rfBqJK8rbyRPEfW4PJhMirV3QdKCZBmfSsTa
         aPSnyQ9dQ6LibVTsE7IdSs7eCov0uxPCMEYDVykaJily/G/0bsUTzliCt7d/6U5iz2B4
         3FwYZPkroR4AfzrI8RkSf02k3GDp1MBSW77R1cdMogZn4iXiFkHmU4zG4JAmN6MQTy5q
         rCRA==
X-Forwarded-Encrypted: i=1; AJvYcCWop4AZw7dDEONwxhNK1jmMF39GzWcWa3QXbSn9fIiag81C3G2cKL0hhjw3Gp1qA5L/1oytaDZ4@lists.infradead.org
X-Gm-Message-State: AOJu0YxsK9whNXwI3YXP5/P69OLhJXxS3HoyymRAcNlIBXKm5Md7934K
	Yt1clz2L2VdrKDvGDCVluW9bDy+Ji/COcKSAeQVY3gMGw/UHgfsOUA6C+5NEcv5QkmQ=
X-Gm-Gg: ASbGncuGKQHlNWggyI9ISENPFEBnVmFFvjltG836ituzkuwfIqLv40u8ijf0iv4gRzi
	7f92uMAie8oiKjAWpuSVuvvG+TYlY3oQI6sY+nU+iJ/RKHcmwuhzKBpVa0J3R/js9hJhtD6U8iQ
	im4UkzPxWlyVjqi9r/lqngmVz6e9qHnFaKCh3qg+H4QXl3CGpXqY9pyHYezfMEXraFKzkIeNEqs
	PYKtmmgBSOQkPXiNbiDb/J9/XST7VRmKBKDps0nEPeIb/+OvEww2E+xl6Mz0y/kdpVBlZNG8p/k
	xoTEHcdYQFFJLQJ1Co9gT+bffOJteRBPXdSDtBvmCJPCVen/UnWkJCSBy4cR2AtsL8VXQ3AF50F
	BFz0BfZnzLtIZ8gwO6kHdIqMKE1XuJsyiiK9PmrR9ur5a5AdH1oQOfmc=
X-Google-Smtp-Source: AGHT+IHPH3FgV/dheLml8bcfanItWySZkzhfhCnOUcPCcJlwflcyicBrppxJ1cyxIFu2aAlA9jEs+Q==
X-Received: by 2002:a05:6512:691:b0:55f:56db:7648 with SMTP id 2adb3069b0e04-55f708b6be9mr3800667e87.19.1756848845250;
        Tue, 02 Sep 2025 14:34:05 -0700 (PDT)
Received: from wkz-x13 (h-176-10-159-15.NA.cust.bahnhof.se. [176.10.159.15])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ace9c65sm45728e87.85.2025.09.02.14.34.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 14:34:04 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Jan =?utf-8?Q?L=C3=BCbbe?= <jlu@pengutronix.de>, Ahmad Fatoum
 <a.fatoum@pengutronix.de>,
 barebox@lists.infradead.org
Cc: Richard Weinberger <richard@nod.at>, Michael Olbrich
 <mol@pengutronix.de>, anis chali <chalianis1@gmail.com>, Marco Felsch
 <m.felsch@pengutronix.de>
In-Reply-To: <28a00db6c1bdf69f93e6ef7210e11c5dfa368411.camel@pengutronix.de>
References: <20250828150637.2222474-1-tobias@waldekranz.com>
 <07a7e6e0-f0dd-4969-888a-b616fe337158@pengutronix.de>
 <87frd83p9h.fsf@waldekranz.com>
 <24ac7ede-0f36-4283-b654-9cccdfa97a37@pengutronix.de>
 <28a00db6c1bdf69f93e6ef7210e11c5dfa368411.camel@pengutronix.de>
Date: Tue, 02 Sep 2025 23:34:04 +0200
Message-ID: <874itk4jzn.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_143407_673954_15EEF4BC 
X-CRM114-Status: GOOD (  23.46  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] dm: Initial work on a device mapper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On tis, sep 02, 2025 at 16:46, Jan L=C3=BCbbe <jlu@pengutronix.de> wrote:
> On Tue, 2025-09-02 at 11:03 +0200, Ahmad Fatoum wrote:
>> > Yeah I noticed that, _very_ useful. For Infix, if we end up going with
>> > LVM, I suspect we won't be able to send all of that info along with the
>> > commandline, and will end up needing to figure that out (again) in an
>> > initramfs - but for most cases I think it would work really well!
>>=20
>> Ah, didn't think of LVM. If mix-and-match is no problem for you, then
>> doing it in the initramfs is a workable solution of course.
>
> If you are thinking about LVM, you may want to take a look at how Android=
 is
> using dm-linear for "dynamic partitions":
> https://source.android.com/docs/core/ota/dynamic_partitions/ab_launch
> https://source.android.com/docs/core/ota/dynamic_partitions/implement
>
> This is also related to virtual A/B:
> https://source.android.com/docs/core/ota/virtual_ab
>
> The components are "snapuserd" and "dm-user" (which was not merged):
> https://lpc.events/event/11/contributions/1049/attachments/826/1562/2021%=
20LPC_%20dm-snapshot%20in%20user%20space.pdf
> https://lwn.net/Articles/838986/
>
> I'm not sure what they use at the moment...

Very interesting, thank you!

I get why they want something like that for Android, but it does feel
quite daunting to deploy for the systems I typically work on.

If one was to ignore the business of background-merging of COW data
etc. and was just looking to have a way of allocating volumes from
persistent storage, do you see any advantages with Android's metadata
format and/or tooling over that provided by the LVM2 project?

> Regards,
> Jan
>
> --=20
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


