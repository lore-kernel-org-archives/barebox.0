Delivery-date: Wed, 03 Mar 2021 22:32:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHZ6s-0000Cf-3D
	for lore@lore.pengutronix.de; Wed, 03 Mar 2021 22:32:46 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHZ6q-0006Eu-EE
	for lore@pengutronix.de; Wed, 03 Mar 2021 22:32:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HVsk0nrit1ViCPoRpKiWAJAiM41zKYiNBCiWVqqAUaY=; b=n2PUESGMVVls0XDJx5SHuFlAI
	8EUr20/frX/DvQamZ+yvw6qOhA4WGkA7WQPie48lZ9HXald58y+aOBn5JaSasWnV+spnZtc4M/Vzf
	EDNy3wVxJZ+i+eGWHAs1jWqx+4MWTx+f+j31F/OAc7KTT6e9UZbeUZJH4rifF22AggWuAGWxKKaH8
	Hcr9Nd47BePsXgd7gbXtWyB/VAJQUD2xTI+Cm7flIhITzSgQznzxn2SPQJdM2LzwNIXLrJkS2Ui8b
	+ggN9gpJUhLPed2VcrEYSRtqPa2d1FJKmcOdFvwTmlj2sDgtvGGm84pnodyeOEFpmqL/to+/VeAlK
	4YBshng0g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHZ26-006axz-AC; Wed, 03 Mar 2021 21:27:52 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHT8R-005Jnu-3f
 for barebox@desiato.infradead.org; Wed, 03 Mar 2021 15:09:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=q4mxr+HtYshDHve+A0X1UnjoS3fdH7iAO+i5inMSxz0=; b=GUJToZJECLIDHHEyK8lpNixsqk
 uBxpjXnZTIPIQx2dnBqu4FEV5L/Y1bwT7d/t5HeEz5wuK0a2tHuAUI6mtOLLbw97y5AMGUuUij9Ga
 85wzsBFcwnjWREDbI3JVM7efXBx+HO+ail9kZRgccGdfsPni3fP67QpV5mPDOTe2ISsRY8nVGjE9Y
 7NfXKXszMFYj7rmDSCpR2TT+WWaZdOka+gIbIEpYr4gLIFaDmgocewcG2hLYdZXjTGQ+ai9OUJPRf
 s+WjP8aWyxjs/xJz/2ocyEeCQkrGknKMy0xwJKoaNIrKY99n+w6Tmliq/gpJy6X0Vh1RLxO1i2pVz
 2F5473Og==;
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHQR4-002VRF-Ky
 for barebox@lists.infradead.org; Wed, 03 Mar 2021 12:17:03 +0000
Received: by mail-pf1-x433.google.com with SMTP id q20so16150592pfu.8
 for <barebox@lists.infradead.org>; Wed, 03 Mar 2021 04:16:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=q4mxr+HtYshDHve+A0X1UnjoS3fdH7iAO+i5inMSxz0=;
 b=BU9ZH5DeEgnKdDEncgXKIYuZ9S8+o2YDrdTO77VIZDEhJ5zOzueUhR3N8XEgB2/VJ/
 x7l4Z7h+4ugskxBYkcEQBNrXxrDedTuSMLoiaT98/3hXpMUPu9ESQ1mAVdOkkAGxOFtN
 Qyk9D+hlLdaiQ+5P3IoFD6cS7VkOJ/YRuVyPFE/2JZEaTbNuXhnoFtshld/XkUyioU2n
 C56iFEWo8/FEKZGpkWYvMa8dgwzTl+bMtTDcojlOW7FzmKEDtqiWuyKLk1gFawb9MpWf
 a9ZuUvzju8gZEx0xM2wyQOUta9NLucpanvvpyNs10g5tBBSJSOZmSA8d8794T5vXLl9/
 ByDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=q4mxr+HtYshDHve+A0X1UnjoS3fdH7iAO+i5inMSxz0=;
 b=j0nO/PH6ysip/EZXZqda65fq1LrPrV+G7t+8WBAyuH8AkM7/BxLd7nnUAY8VWBZ6u+
 0hAdCcb/boqenq7o6NhJ8GNMGOmtP8cCyNC+ho32qkjNWl+Kl74e6JBGmRAvMt/XbISe
 hUxCaoCwgRqx/Ig2Jlt7YhLFRAwfkNpVg/5AIeHOtY8bprH48aj3hqEgP3goKRyqrDH2
 9bFkm0C2G7ySyAc0vmfXyGrqR9enOPbbRlj85tqQ9iz/UCTakcaD8L3wE59YtgKrtI3C
 VATyVF/sZ4AgrQJQIR3br8hh73Rwip+e0I4JxsAeCUY7UL3lD0SQAh7w/CeCyd80mXcI
 o3wg==
X-Gm-Message-State: AOAM530+B5PljuyQ8sGsFR7p7koHOzOJtsqcfcZDOumpcPtSNyjEzgG1
 l3DtITZwc+vk5pM1c14t5oxuU16ocQo=
X-Google-Smtp-Source: ABdhPJyoSS7MiO3dH9MFVezq/OgahD5tQmhEWTLLkpdanU3dUSFYn2B3LrUn8OaMwS7ZfVYoZE5Ktg==
X-Received: by 2002:a63:1021:: with SMTP id f33mr4512652pgl.409.1614773750665; 
 Wed, 03 Mar 2021 04:15:50 -0800 (PST)
Received: from localhost (g98.115-65-200.ppp.wakwak.ne.jp. [115.65.200.98])
 by smtp.gmail.com with ESMTPSA id v26sm23852386pff.195.2021.03.03.04.15.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Mar 2021 04:15:49 -0800 (PST)
Date: Wed, 3 Mar 2021 21:15:47 +0900
From: Stafford Horne <shorne@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, sha@pengutronix.de,
 Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20210303121547.GE365039@lianli.shorne-pla.net>
References: <20210301110106.3764-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210301110106.3764-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_121703_892082_9E868DBE 
X-CRM114-Status: GOOD (  15.70  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 00/11] common: introduce bthreads, co-operative
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 01, 2021 at 12:00:55PM +0100, Ahmad Fatoum wrote:
> Hello,
> 
> This is v2 of barebox coroutine support:
>     https://lists.infradead.org/pipermail/barebox/2021-February/035032.html
> 
> As discussed with Sascha, if this is to be added, this should be added for
> all architectures and not be optional. If we have this as integral part,
> it means we can substitute coroutines for:
>     - pollers: just wrap the code in a loop
>     - async pollers: just call a delay function in the loop
>     - workqueues: assert_command_context yields until in command context
> 
> In addition, we will have much less work porting over threaded code from
> Linux. See the referenced series for an example of a USB mass storage
> gadget.
> 
> To prepare for replacing them, the functionality is renamed to
> bthreads (as in barebox threads) and is made separate from pollers.
> 
> How to add new architecture support:
> 
>   - Apply this series or check out https://github.com/a3f/barebox/tree/bthread

Now that I got a dev environment booting off master I have switched to your
bthread branch.  I found there is already a commit to remove openrisc in next.

I will revert this in my branch.

Is there a timeframe you aim to have this all done?

Also, It seems networking it not working for me that is ok for the work here,
but it will be something I have to look into next for OpenRISC.

-Stafford

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

