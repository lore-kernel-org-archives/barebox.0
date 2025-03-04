Delivery-date: Tue, 04 Mar 2025 19:11:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpWkB-009rwt-1k
	for lore@lore.pengutronix.de;
	Tue, 04 Mar 2025 19:11:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpWkA-0006p4-Ck
	for lore@pengutronix.de; Tue, 04 Mar 2025 19:11:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	References:In-Reply-To:Message-Id:Cc:To:Subject:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vD5ybF7GszaHR+bm/6o0qubCSKi/Olsk+FRBjaRb/jY=; b=2WH2dntS4gjqevKitnuQ4WxndM
	JgQpvt3trTukJ0Je61vLDzaiLO33n+2GKXQsEsvB4iQGyegFSsDpYmwAcdY+spaC+U71ftisYs9F6
	uR8a/woiynXTKqcvlgOKUxFLg+RaT6mGzNJ+VRhKP4cIGoCquk3wOPNi8ScFLnQZHjPvcZy4hBW4G
	AsDGHgqc3HC2jLMMQqEp9eqdjEuIK6olP5NOSjjqDyoBat4IMjkK1w5XsKvkh4dxhtrWQghOmipHh
	lKVk/n4va0i/wVlcSLu3VpHr6zedMJFeVo4c4H4LKLb5VcD3IpZOVqEHXJbQfSqlE9hIMPqH5gDHV
	CcAX447w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpWjX-00000005mV9-0Pd9;
	Tue, 04 Mar 2025 18:11:11 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpVSR-00000005Ut5-0q0c
	for barebox@lists.infradead.org;
	Tue, 04 Mar 2025 16:49:28 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-43bc0b8520cso16153045e9.1
        for <barebox@lists.infradead.org>; Tue, 04 Mar 2025 08:49:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741106965; x=1741711765; darn=lists.infradead.org;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=vD5ybF7GszaHR+bm/6o0qubCSKi/Olsk+FRBjaRb/jY=;
        b=TjV4f7r6ghzVWYfhVMKcgSyHzd/D3VvkzuAtBsvzmIRH2BgQdUM2o51X1bGF2mRKSy
         Z9UzfeSdTuPSawQnPkjuvR4IsAt2j4sD6Ax2IjylfOBG6/DaA8d6hgyTRhf+scnXcH2m
         GJWSfAPaMU86Dp8wmmdfr23834AJF28WOFkn/deH8KtTJSTUKP1xvbSYCwltw4sKBbk7
         wU9Y2cPeFlJqX/vd6gd0mU0oQNbZE7YUtFh4Q0TEO7XZFfDaJLDB2hUwwj51GkgIvxWd
         iqlymimnJ1Tlt5DlWK7Dva0rrCHT/pR/0JsBcNgup6WjfHm0iCYDUGQNzMSkqGxnNb5K
         t/hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741106965; x=1741711765;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vD5ybF7GszaHR+bm/6o0qubCSKi/Olsk+FRBjaRb/jY=;
        b=r+yDXHdtldRjJz6Q5/7CpST6IFUpyqGHwRkvQKOU1HVIP65nCOs0MUvf2vm9kR2t4Q
         axw4n5+ebtvXNiL3QqOTa728IdsTkacCekHiMLu/qXvY+jE9eOOuF5pDw06fOozHdiAl
         3EXB63Y111UblwpAV1gh+nWNrZ3kJrJCqqVxbEq0ydqmXT17B7cpJUtNsSC50DpCv8Xr
         jlZLjfWs2qzOdacIDgHN8Gx66FZK8DcD5/X1THxarkmGEvbbTFdrpxjN5ZY+zXN0+dtn
         DRW8Nwx7ilsJHt5NoCbQcPT2CqWCLueJq5dFxlhkPb1VLbmMgSMff8WrAwCAX1XLJyT4
         6jNA==
X-Gm-Message-State: AOJu0Yz0VV56bPVB1TWqm2PrHXg6zar4IhXtpM9v6QX2TguyYP5DexfJ
	271fZKQ7+fkl72mfeS7XHB9wFjesBi5NCVNiJrUsdXKLINR8D72j
X-Gm-Gg: ASbGnctZPUqfEjgglZdF0Rk/luUZ/qbRo85zoqOFjdif4joCyoh+e35AboWwBoPrR0n
	+qu93YCdXKQZtbgbx07HYbtLacK3vNe/hGTrxo/DXD4Tuu3yrePBcG0IdMX5dd/FikhQV588AmA
	PYHSp/n6ZuasP1SQAhtmetvaCx3Y2MsjlKBV7rZu5W3qkpizOi+IsrxoZxYuwN1SrCvOrxJkII7
	ShC1/5Uwt2mO+3+hh8FVjuKXx0ww+w9OK0maVC3pQ6l+2O2p4sNPxHnDlj8iZy5tXObYedm2QG5
	4ix56IRnM+Mfv++VwYZMk3hAbjiAMFwFQtffkRYTPKTu3PmcN5d1nd58UdK5dWnCxXPPLF+zcXi
	8i5vXPekdaSw=
X-Google-Smtp-Source: AGHT+IGZHfurocE9FeTFjd0F1JWD2fb4o2eJDQLOkZ15JB6GLPnu5FwdTxHcLDX+o4lGPvNUdsujNw==
X-Received: by 2002:a05:600c:3584:b0:43b:c541:51d3 with SMTP id 5b1f17b1804b1-43bc541542fmr62222835e9.6.1741106964775;
        Tue, 04 Mar 2025 08:49:24 -0800 (PST)
Received: from [192.168.47.169] (93-44-34-238.ip95.fastwebnet.it. [93.44.34.238])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43bc38986cbsm70508135e9.35.2025.03.04.08.49.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 08:49:24 -0800 (PST)
Date: Tue, 04 Mar 2025 18:49:02 +0100
From: Stefano Manni <stefano.manni@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-Id: <QH1MSS.NEOFAGTU4XUA1@gmail.com>
In-Reply-To: <3a8afe4a-f7e7-4158-b302-09f67dc11d8f@pengutronix.de>
References: <20250221180109.14129-1-stefano.manni@gmail.com>
	<06d40295-264c-4119-a201-f6e045def59d@pengutronix.de>
	<6N27SS.D8B9D3CEGOUH3@gmail.com>
	<3a8afe4a-f7e7-4158-b302-09f67dc11d8f@pengutronix.de>
X-Mailer: geary/46.0
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_084927_240433_FDB5DFB3 
X-CRM114-Status: GOOD (  10.95  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] imx-bbu-nand-fcb: do not use hardcoded devicefile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



Hello Ahmad,

On lun, mar 3 2025 at 09:41:53 +01:00:00, Ahmad Fatoum 
<a.fatoum@pengutronix.de> wrote:
> On 24.02.25 16:49, Stefano Manni wrote:
>>  Hello Ahmad,
>> 
>>  On ven, feb 21 2025 at 18:33:04 +01:00:00, Ahmad Fatoum 
>> <a.fatoum@pengutronix.de> wrote:
>>>  Hello Stefano,
>>> 
>>>  On 21.02.25 19:01, Stefano Manni wrote:
>>>>   Device file was hardcoded to "nand0.barebox".
>>>>   This patch harmonize the signature of
>>>> 
>>>>   imx6_bbu_nand_register_handler()
>>>>   imx7_bbu_nand_register_handler()
>>>>   imx28_bbu_nand_register_handler()
>>>> 
>>>>   with the other bbu register functions in order to take
>>>>   the devicefile as parameter.
>>> 
>>>  Is this this the sole motivation behind the patch or do you
>>>  intend to actually make use of the ability of varying
>>>  the devicefile?
>> 
>>  my purpose is to let people use a device/partition different from 
>> the hardcoded one.
> 
> Can you have multiple NANDs? But yes, customizing partition name can
> be useful.
> 

for sure I cannot have multiple NANDs but I can have a different 
partition name.

Anyway drop the patch if you consider it not necessary.

Best,
Stefano

> Thanks,
> Ahmad




