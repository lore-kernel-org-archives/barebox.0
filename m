Delivery-date: Sat, 17 Feb 2024 09:03:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbFf8-009Zpm-0f
	for lore@lore.pengutronix.de;
	Sat, 17 Feb 2024 09:03:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbFf7-0002Lr-II
	for lore@pengutronix.de; Sat, 17 Feb 2024 09:03:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O/D/8YhaXuM5vcypGHcW65tQ5i3BX93ijPouVTsmHt0=; b=38u9ooJbaARVnxQRjINx4htGfz
	Ddl/yiPBT60UkVxciS61uHczVKL0/oJXVaDnFSfwggeNfWvqxoV8+cCKoKIn+pWz7aX6modHkHD81
	NjD4AA58h5ULSj4IRvyzAakM2dcf9Lug5J5wr/O/qEWX3oxIvn+0XaYymMyXDg5EFT+Xvb/Y7W6xm
	gKJvRhM70ywJ8vgr9rSkvIAw2HeE2gyLSJXmlT0pik185kOymOZtW0RaNJt3adYDH8KIIxKMVxrwu
	BRE8T1UkRez/0Yji9EzQqS0oYeaN4q+QQ5er89JcNjWaYlj/vRfnQNKKpDOZoDvSgxJjDHGLjGmJy
	KYMELFSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbFeP-00000004s4s-3Zse;
	Sat, 17 Feb 2024 08:02:21 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbFeN-00000004s3v-0BpS
	for barebox@lists.infradead.org;
	Sat, 17 Feb 2024 08:02:20 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-563d56ee65cso1798432a12.2
        for <barebox@lists.infradead.org>; Sat, 17 Feb 2024 00:02:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708156936; x=1708761736; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O/D/8YhaXuM5vcypGHcW65tQ5i3BX93ijPouVTsmHt0=;
        b=HyyuCF5F/iMIGPd3tXIwd6hew5TUSOi1n1OXowtaUQn5kEbwM4zSxIr7FhTzxmSWxn
         EaQqvt4AfQvc2FZbwALj8zUDFoRu+0O9HGcrIg+K6F/zRvbETnUGOo8uzgWIBiXWO/CC
         wy1OShMwZKWLZ3f9wb8OuzMok9+DIDlBVSLEuX78d3/ELjo2EfZEAie/DpQgLJVqz/Eo
         aTfPTzjv2TgiWMPqr7aMPjF7dW2oeU9mnzgoLrBvM8Q8tJlt52KEsPeiaRvqseB7641K
         NPctXZDxjPgAasjpLIkUXoeRJIpdLmW5fWdy7GmpP5qTzyJxHepNMOb6Y1koAyHKFXNp
         EYZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708156936; x=1708761736;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O/D/8YhaXuM5vcypGHcW65tQ5i3BX93ijPouVTsmHt0=;
        b=Jm+Ms+tzhOoKWjXwrHD8w8KdADuFdeGXTismjzDwk9YCRleu5qmO7hYaolbLptScXk
         AWV+oEfyw5OjSZLKNIqcF1VLoOoRB0qjgMgpqCFFoThEpmxuVa3VID9+EUEJOLSF7BQR
         wCVaUIhxyvIsNgI/T8e0WMqvld+sx9XFw5QFRGrW/XmI9678DOkv5wthn88My9idDsZH
         tUSSjKN99uzo/G09jmQcFCLUTcB8Iu/lfJdSG075E0FlEPC4HR3Fd7tzxLCOghOocugH
         GXaUN5vwrhBRKET45jSjv4cFc8LhUYtkdcmwjWPqblCYwPYmn4+bfMAbx9Kka4JTaKDI
         aNcg==
X-Gm-Message-State: AOJu0Yy4Lrrl0hGWiN7uty/13gy4KqqmdHJNECg3+VjFyBQ30fvAbpOs
	43pndmIDzi0jns5PFlpOQlu0clZfAidpuGWgJ1LAvrHLjo0GCFp+O/aU3Fbw8IJ0vTfhKy2Ew1X
	WARBdOFHd8HEW++Hu2eQhXZ839N2t6VADMeFRFA==
X-Google-Smtp-Source: AGHT+IFOm6N8LVLnT2a+dPSuFKrhrByQkCLUrLhamVHQIV4C9n5A+HneEbGDsLiiyDN/I4PekLCc7L5pwDTWBig4Ooo=
X-Received: by 2002:a05:6402:2d9:b0:564:2956:6a02 with SMTP id
 b25-20020a05640202d900b0056429566a02mr343533edx.18.1708156936331; Sat, 17 Feb
 2024 00:02:16 -0800 (PST)
MIME-Version: 1.0
References: <CALXu0UeQAXPGuuEqT-buX5o_H7YbSdUYqkpyP7i1d5yc55xcfQ@mail.gmail.com>
 <a5a7596a-e9ed-42cf-9f5b-16a68235509a@pengutronix.de>
In-Reply-To: <a5a7596a-e9ed-42cf-9f5b-16a68235509a@pengutronix.de>
From: Cedric Blancher <cedric.blancher@gmail.com>
Date: Sat, 17 Feb 2024 09:01:00 +0100
Message-ID: <CALXu0Uc=pG-P7_6kaqkYLEJEWHu4zCLM9XztmH3XndDGnDS2Qg@mail.gmail.com>
To: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_000219_108003_4F0EB288 
X-CRM114-Status: GOOD (  17.00  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: Booting from NFSv4 file system?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, 14 Feb 2024 at 14:54, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hello Ced,
>
> On 13.02.24 08:51, Cedric Blancher wrote:
> > Good morning!
> >
> > Does Barebox support booting from a NFSv4 file system? Explicitly
> > neither NFSv2 or NFSv3 will work in our case, as both protocol
> > versions are no longer allowed by our IT department.
>
> It's a funny coincidence that the same question was asked just a few
> days earlier:
>
>  https://lore.barebox.org/barebox/CAAvCNcByUskEuqLMPmO6mbCOZHhYNx_OXZKYO+HKyz_=Cs2RCQ@mail.gmail.com/T/#t
>
> Do you and Dan both perhaps use the same Enterprise Linux that now ships without
> UDP support in the kernel NFS server?

No, it's a reaction to a EOL/EOS warning that in 18 months we will not
have NFS-over-UDP support, as UDP support in NFS is depreciated since
YEARS, and NFSv2 and NFSv3 are being phased out in favor of NFSv4.

That aside many enterprises now started banning UDP based applications
wherever they can, and NFS-over-UDP with its depreciation is high on
that list. I have several customers who cannot do that anymore, and
even in Institute Pasteur it will no longer be happening in 2025.

So we need a replacement, and we need it fast.

>
> To sum up the other thread: We don't have a TCP stack in barebox, but that's a
> hard requirement to do NFSv4. There's AFAIK no one currently working on this.

So basically in 18 months the NFS support in barebox will become useless, right?

>
> The immediate options are either using TFTP to download the kernel

But tftp requires UDP, right? There is no tftp-over-TCP, right?

> and then
> use NFS for mounting the rootfs within the kernel or to use a userspace NFS
> server.

But will it still be UDP?

> I am using NFS Ganesha at home for this.

I would prefer the JAVA NFS server from DESY, but even they no longer
support NFSv3 via UDP, only TCP.

Ced
--
Cedric Blancher <cedric.blancher@gmail.com>
[https://plus.google.com/u/0/+CedricBlancher/]
Institute Pasteur


