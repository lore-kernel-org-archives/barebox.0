Delivery-date: Thu, 25 Feb 2021 13:46:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lFG2R-0007AD-J1
	for lore@lore.pengutronix.de; Thu, 25 Feb 2021 13:46:39 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lFG2Q-0006fB-Mu
	for lore@pengutronix.de; Thu, 25 Feb 2021 13:46:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yjLxnhw9zLDgc7QiPjf54Flp3OAm0CZFdCULPmcSy1s=; b=RJxQHOXPF4r3GMBa4vYsNNfYD
	VWPOHBllDPjhZvfpL4BKwQpxpA9gDgcjRTfIJLhSKw7IJ5pB18bIbR+MEyygAIRaZkT8X7OMOhaLn
	QOrtDeCijGdB+2lVsT5Zspd1js/WoTSI2VEErLTx1Z6glJBKgVJh8S+LxX9Cr8qPvtrHirAaQLzwY
	CqFt2whGyR59Ivhah2vqLWyZbYTvv8ymlIoCsTdegCjJNwy8jhjW+ahgunRBYPZTtJzjmcjV7bcvU
	erxfcE2FdzRQHBC0mUE9jpn2bDr05zwYQtLjYfX3TDqzhUP0Cbb9izbeXtMhtdOjdReUGRfAXKN+1
	SrcOd7meg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFG10-0006TS-VL; Thu, 25 Feb 2021 12:45:11 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFG0y-0006T5-Be
 for barebox@lists.infradead.org; Thu, 25 Feb 2021 12:45:09 +0000
Received: by mail-pf1-x42a.google.com with SMTP id q20so3521389pfu.8
 for <barebox@lists.infradead.org>; Thu, 25 Feb 2021 04:45:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=E/MSDqYgfjZ1oxvCdWWvP2+mFnRud/M7Bymem7mkBZM=;
 b=pNgxCLVcULZQq+yqgOlo/ytmTOkcT0aCn13QL5EjnapDpTXEftA5PRbDKt4wbp/jw3
 SiuOFRaFR7kUR5dHDx9nRXJD/3GXUpZMBLSzSJn1uULuE9ja4Niu+8Hq3fm85AZr1Uq1
 Wsdv1Q/Q12vjMkBFS9Qu3HFkMnvhzzb2cGFv3+PpbRe3DJTvStSKftBgJak5jEsM0CBF
 2Nmwykb62xl39uCBKfS67JyzaJc7dUHmQEVG9KCJxJJLXkcz6gNuU6joa8TjSiUBXGFl
 1wPLmJaCQCCQT8Y1tOrw89Qc51GfOFu121lwkkoezQnl5VhNYmD3QFPk5sKuY5w17mK8
 tNng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=E/MSDqYgfjZ1oxvCdWWvP2+mFnRud/M7Bymem7mkBZM=;
 b=EbGgDfa9Lxwivfm+oogO60SbRHLkqsKdclXLxvLlyIfBx2pzOk3x7yvMJNcoYgZqJo
 vQ4iIxXBzEV6C6W3v7aSwn2PzwsFU4Pf7IsK8LuQGydx3C/HYWVPnuoEUb+k5nAgS3Kl
 2Ju2uM/MP/IkIamE9Qkq9XgtR6WBi6zr0oFI2NJh3poVdQIHuYeLfOYNz8nX7KQ/UHd0
 YEhonFB1RF1Fe13bOgRaaE5od+OlrnrQ7k0t21l36MJucV2OnWmyWZxDfBQ9Sectuy3q
 SPeuUd+cHlbFjJgDEfkzANNNxhogNf+RsnqCC71BSNrC8pfUi22Z00QHzmR9aexkpPnV
 ShGw==
X-Gm-Message-State: AOAM533dx/w0FZOgey2tp/8grkVLpnvvVVAwnJynkT8WcPqDaWVrPA7k
 DddwTUutxOlF6fvR9CzpQ2Y=
X-Google-Smtp-Source: ABdhPJwuqRp22Y4kPMWC6+y3OWZsFKYGeU244K6+SWRmsbm2qRHvCFFi9CBL9VjOLDpRYQXXqBOhAQ==
X-Received: by 2002:a63:2f86:: with SMTP id v128mr2758661pgv.241.1614257103645; 
 Thu, 25 Feb 2021 04:45:03 -0800 (PST)
Received: from localhost (g98.115-65-200.ppp.wakwak.ne.jp. [115.65.200.98])
 by smtp.gmail.com with ESMTPSA id e185sm6479355pfe.117.2021.02.25.04.45.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Feb 2021 04:45:02 -0800 (PST)
Date: Thu, 25 Feb 2021 21:45:00 +0900
From: Stafford Horne <shorne@gmail.com>
To: Yann Sionneau <ysionneau@kalray.eu>
Message-ID: <20210225124500.GA365039@lianli.shorne-pla.net>
References: <20210223095902.GD5549@pengutronix.de>
 <7c538f1d-9cc4-c25c-0ccd-44831597c80e@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7c538f1d-9cc4-c25c-0ccd-44831597c80e@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210225_074508_447026_8417B011 
X-CRM114-Status: GOOD (  17.40  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Barebox List <barebox@lists.infradead.org>,
 Sascha Hauer <sha@pengutronix.de>, shorne@opencores.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: nios2 and openrisc in barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

On Thu, Feb 25, 2021 at 08:17:41AM +0100, Yann Sionneau wrote:
> Hello,
> 
> I am adding Stafford Horne in CC, as I think he might want to help about
> openrisc port :)
> 
> Cheers
> 
> Yann
> 
> On 23/02/2021 10:59, Sascha Hauer wrote:
> > Hi Franck, Antony
> > 
> > Are you still interested in barebox support for NIOS2 and openrisc? If
> > not I would consider removing it. Background is that we are planning to
> > introduce green threads and implement pollers with them which makes
> > green threads rather mandatory. Green threads need a setjmp/longjmp
> > implementation that would have to be added for these architectures.
> > 
> > Keeping the architectures is no big deal normally, but I don't want to
> > add untested new functionality, also I don't want to implement things
> > that nobody uses, so if you are still interested it would be great if
> > you volunteer to implement setjmp/longjmp.

I am the maintainer of most OpenRISC things right now.  I would be happy to
help, but I don't really use barebox right now.  Most of my deployments I use
with litex FPGA SoC's that has its own bootloader.

That said, we have a setjmp/longjmp implementation in our glibc port which I
have been testing for upstreaming lately.

  https://github.com/stffrdhrn/or1k-glibc/blob/or1k-port-2/sysdeps/or1k/setjmp.S
  https://github.com/stffrdhrn/or1k-glibc/blob/or1k-port-2/sysdeps/or1k/__longjmp.S

I had a look at the barebox docs and openrisc port, it seems like there is
support for our standard platform, or1ksim, which is the same as my de0-nano
fpga board/soc and qemu.  I should be able to make use of this.

Is there a branch where you are doing the green thread work?  I could add and
test the OpenRISC implementation.

-Stafford

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

