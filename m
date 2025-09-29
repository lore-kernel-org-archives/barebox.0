Delivery-date: Mon, 29 Sep 2025 15:02:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3DWa-002Q6E-2T
	for lore@lore.pengutronix.de;
	Mon, 29 Sep 2025 15:02:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3DWa-0006pt-88
	for lore@pengutronix.de; Mon, 29 Sep 2025 15:02:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KhYD8hetwFnUTq6/qrKqwoRLJODZEzkkG8DP93ydvvw=; b=W4dRw5nSmR2kfQLQ4i3gJ4L0l4
	f0ZN9cuV2+nRwBxQTLlAldWGle5UknvS60sdpn0gRt+7LhulZoAfrBlbx9nQhT7xRtQSKHTXnlREa
	kLmvb0pBveAhZO5zgq9l5672wirEaWu5NIlFWF8M3EubtJZV80CS+N7kZsv8nU1Es6hvQmngx24Gx
	iV8rbKOsWJqica1DsZukt02kyDadBXRqAoifVCql8Xp5VGSoPJs+QFLgi6raQa7KDKHAy3n0iCP5/
	6M0xKr0/thW2Z4B20a+XYecTMx7mU53lanbn87GbBOVWa2dS6q/TyILwR89xfjXGlt6lj5opv1yz2
	kzUrYzxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3DW4-00000002W6R-1CQp;
	Mon, 29 Sep 2025 13:02:08 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3DVf-00000002W4c-2J10
	for barebox@lists.infradead.org;
	Mon, 29 Sep 2025 13:02:07 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-781ea2cee3fso1546756b3a.0
        for <barebox@lists.infradead.org>; Mon, 29 Sep 2025 06:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759150903; x=1759755703; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KhYD8hetwFnUTq6/qrKqwoRLJODZEzkkG8DP93ydvvw=;
        b=lyprasqoTSjtX2HYnlpBH3Ehu0fn3+SPNRveEGCMlw1GRi/0DLPzel5F5aB7lQQDpN
         IYQRxbfrGO97TzDMTZ9S9uc2W1A3S3eGM9trwDTpST0uVR6Wc6nR31Op4cZ/MqdtQBH9
         W/PqJcDnfMahfZEvAIOngJxbiuWVGH0Rt40dQXlkLq7+CZDxIxZieDTzGAo8JRZX7zmV
         LlPxLlnld85vI69DfZ4dteaImaXQTqhc7ZrHUnSz65AlQRkw0W0HQNS405NQuJQ+cHn5
         Yvc8nqBUXj0s06P3g0SaJprWnzpBCsnHzLmVSRTEmi6zlTWOtvL3i0FptRRSkt/euKMw
         3IQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759150903; x=1759755703;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KhYD8hetwFnUTq6/qrKqwoRLJODZEzkkG8DP93ydvvw=;
        b=bWUsqniIZehKRdgkPVoduuGkUvI3OlvXOYdf7ZbzdgntPxos5Am2bXnEb8lsLtkKQ8
         Acs8saLYxYwyhqK41FC3ovCZSRvT882rpSTJxdVZ1B91NF5r+mv7tL9Sl1i1/M2Khw+S
         vQy+PVIuzz3bWEWriIfg0aHaFAmzekfsah+79QqDoOsACiFlDJJPNZ3n0QA2r/tn/uqR
         2sdQmoOqyYTChfjBiHxkU4BdEibvhVL9B6b/Az8dB/mhk+QmUOhPdAaK52UUECzzhX6Q
         3XqAPhYzp24M3R+5XcjXNMjEV0f9IXLi+lklITGaRgcx/LxpZGQQjlbaEmoFdd+bJ8Af
         6WXg==
X-Forwarded-Encrypted: i=1; AJvYcCVmT5onxObsf8OrZxaitb2yzb7Pz/WerU8z07+XJOJszcGKMw0gbKCeTAgZ2/4jWb2Ec0+m8u4u@lists.infradead.org
X-Gm-Message-State: AOJu0YxCFZTbJmVraKSv5y0oFazpjpwTsDS0FFCEXr8DIcDEozuhbD98
	FJTcDFYfu2KotEXiVM0a56f1d0ZspKIgw4iYCpKFnRUCfJPvRBvkTA6SPxJf0jTT7mEZznkYABz
	UWOZDEBL0dEokDsXxcNI3coDH+Fhej0d/xuUeIXE=
X-Gm-Gg: ASbGnctezvKk3wof8Y8r5MBPHz+zPa/aKln4XUIaFSqlWIddsypTutzcMzWN6o3GmyM
	hXb/WTnmf04Kx+hDjGdJoc1IgdzpYb8w5zs9Ff1HVKnOsp9LN2vyQVI/ObexiuGcTIjgfMNXqBc
	GAWcmza9c1Ut4vzEYUXNsksR0OpfOHKgJjY73eN7s3BIy0NRSe0tnvI1vHS9BFMMDJCwqtntm2l
	xpS5xzH
X-Google-Smtp-Source: AGHT+IFWMrj2kT0z5aS1xdBw3F+TbWMnOK9otZ+haSjjDgc65HDjzO+A4eCOfBVF+wJiptYjdNrFg3H8hXLRlZqdfWY=
X-Received: by 2002:a17:903:384c:b0:27d:69cc:990 with SMTP id
 d9443c01a7336-27ed4ad102cmr206645435ad.49.1759150902253; Mon, 29 Sep 2025
 06:01:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvQLfni2s37JYe-hDBxQfWLc2TNhrypH+-bicWXmW9o6Og@mail.gmail.com>
 <Z-6TBYRYiazahICg@pengutronix.de> <CAP1tNvR6mxe8gMSb05U20GdGqaO4N9zq-7so74+fm0DJ0iopVA@mail.gmail.com>
 <Z-6WbLbIkVS_wvLj@pengutronix.de> <CAP1tNvTfCC=f+naoA5MJXnwr8EGxL2wEsMpOVbKWGBjb=CGztg@mail.gmail.com>
 <Z--KaWCsJbI7hyxw@pengutronix.de> <CAP1tNvSL6vMx=ePmwHx-=yJGtWi2PdAfpa34PEZFPCgNrP1nhQ@mail.gmail.com>
 <CAP1tNvRcKkBfqP_mTQf2KOzqPU=RnzjEZkfQ2kgS9MpQ9Vo6Fw@mail.gmail.com> <aNo6GD3kw4l3g_Ks@pengutronix.de>
In-Reply-To: <aNo6GD3kw4l3g_Ks@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 29 Sep 2025 16:01:29 +0300
X-Gm-Features: AS18NWD7JHE-qKdVcCo7Sb0UDEfAAhh9sPiZQnKaInx2DiA15eMf3eSVVZC8K2A
Message-ID: <CAP1tNvTr=P2r5vm5jEyXavfnLP2J3Q1t0tVB92HJ5XuoDBjkzg@mail.gmail.com>
To: Michael Tretter <m.tretter@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_060143_587571_6CFBE9E1 
X-CRM114-Status: GOOD (  17.84  )
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
Cc: Barebox List <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: RK3588 CPLL question
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

> On Wed, 24 Sep 2025 16:05:02 +0300, Alexander Shiyan wrote:
> > There's still no successful result with properly configuring the CPLL
> > for the RK3588.
> > Without it, kernel startup becomes pointless, as important frequencies
> > for network
> > interfaces, and likely some others, remain half the speed required for
> > system operation.
> > The CPLL in U-Boot is programmed for a frequency of 1500 MHz, and it
> > works there,
> > but in barebox these actions do not bring success.
...
> > I don't know what else to try...
> > Has anyone had any successful experience running a barebox for RK3588
> > with working network interfaces?
>
> I have barebox running with working network interfaces on a Radxa ROCK
> 5T board. I'm not familiar with the clock tree, yet, but on my system,
> the CPLL is also set to 750 MHz and child clocks seem to be running at
> half their rate.

I think REFCLKO25M_ETHx_OUT is not used there.


