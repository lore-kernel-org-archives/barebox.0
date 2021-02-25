Delivery-date: Thu, 25 Feb 2021 22:14:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lFNxa-0007ia-T1
	for lore@lore.pengutronix.de; Thu, 25 Feb 2021 22:14:10 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lFNxX-00039u-3F
	for lore@pengutronix.de; Thu, 25 Feb 2021 22:14:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MJKuSd0Or3sjxBb+NNOhbqjc83UhB56puBJwWB9tWXA=; b=Tp+r+H/d+w7yla72ntI/vU0aG
	IAWTuSNrC7EXltJ4zWrznb8VhWwZSJw0KC0yaj3r7Mj7yQGEkso7/h1f2+mC9eBueEAuQG1gMqRrk
	RfhHOfjF/8IafGnbO8Txbf4fdePUqxM3Q8Du33bk8ScLmc9QwSl7JOs8Oz8t/rVspDjOjYNQT4mhv
	XkBpnvxaVtrIW+dwJ3FRv2J4ncRlo5VNNCO3fD8OdNMT8DvWIg2Z+TQTJmTkOl+nrxbqySIPDSiQJ
	sNnUiUOsv9n9OFOusF7q4tKiA0YWWC2gcyr2tbrap6iy91Uc1DACBLwlvLHSNtk3r0IhXAPD4d4hm
	QI8z6h+oA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFNw4-00037J-DQ; Thu, 25 Feb 2021 21:12:36 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFNw0-00036a-3c
 for barebox@lists.infradead.org; Thu, 25 Feb 2021 21:12:32 +0000
Received: by mail-pl1-x636.google.com with SMTP id u11so3880619plg.13
 for <barebox@lists.infradead.org>; Thu, 25 Feb 2021 13:12:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=R2S35G90c5b02bahnA9dtYEGopMwGoTQCOzM2PprLQo=;
 b=vQPqRf5w0R90vDFrPBQro1GnuF7ATCebEJDg+QgG2hkZ1+oEM4T/kLPZlzyFghGIJg
 oZB3u5i355vUOjVbr3YZWGJnl+orSo4r6dF7jF+vd6hUUDSRb9sPAUdZEHHinF++NeoV
 /NaBnTaINK3HaqH9cAfT+HY36K5mQhqAdCpyCCCctVecQv1quGYaPjWWEfJXsbCDhdCf
 wWv03Olge2NCq8+/367vwuYTUrB4Gos2KwwgwjsQWkSQJWV/ngx3HGogzMG30PIwds4z
 0fCFTqOAZEF5ZNvaajoc5L74QzGD/HKhi7psbgPzPYZQqr3RcVQYJDPmVhG3tiUohdGU
 8wgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=R2S35G90c5b02bahnA9dtYEGopMwGoTQCOzM2PprLQo=;
 b=kf3hjU8dCnjHqQEX/f1TjYH/og2QwAMf0n2btvHblYgFUDknn2a7gxBsQMRSH+MDRb
 0vhlDTrCnljXL3Q+iSYP0VRZ8K/k8tfasfqTdI3gKGPeSTvTMqgA13L8SvFzNzzpUFuV
 OCL7VxEBbJPRYI71OFboB+v75n1vJh1wP4hsyrstq7k3Y6QbWm+doDeyLTx2bESu8ovH
 xrW+lFITE1AOIDZXtJ6ddV1rZ20J1XyR6mfZAUp1KRT3T+9DvDxkN1GpY8bvswLnx0RP
 N0TLmF82SGUWAI3UAz6xoq4pLMWeGrVWusvNDWiR1iXDRX+zWm8U4wwFBVuuhunQ+8lm
 Q6qQ==
X-Gm-Message-State: AOAM531MRiZWsp+Zt318/Wi7QsvyB4Qx6xHAaF3aWMnaXuxG9GTbrgv4
 6RCuoaS99nz5qk8MtmLb2Fx08Y0m9Rw=
X-Google-Smtp-Source: ABdhPJyAKOCdmiHtIjoFakfLuR2YV3YTkvTOi0ABDvp24RCSED27vQxxAiNWmaNEbsJGiU2G3NrrBw==
X-Received: by 2002:a17:902:8342:b029:e1:6aa:d770 with SMTP id
 z2-20020a1709028342b02900e106aad770mr4705300pln.27.1614287549651; 
 Thu, 25 Feb 2021 13:12:29 -0800 (PST)
Received: from localhost (g98.115-65-200.ppp.wakwak.ne.jp. [115.65.200.98])
 by smtp.gmail.com with ESMTPSA id jx20sm6757006pjb.30.2021.02.25.13.12.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Feb 2021 13:12:28 -0800 (PST)
Date: Fri, 26 Feb 2021 06:12:26 +0900
From: Stafford Horne <shorne@gmail.com>
To: Antony Pavlov <antonynpavlov@gmail.com>
Message-ID: <20210225211226.GB365039@lianli.shorne-pla.net>
References: <20210223095902.GD5549@pengutronix.de>
 <7c538f1d-9cc4-c25c-0ccd-44831597c80e@kalray.eu>
 <20210225124500.GA365039@lianli.shorne-pla.net>
 <20210225130240.GA5081@tellis.lin.mbt.kalray.eu>
 <ba82e9ef-9d9a-179c-1688-a9aeb12413d3@pengutronix.de>
 <20210225203920.0063e939118238d5089b2ef9@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210225203920.0063e939118238d5089b2ef9@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210225_161232_231539_4AC7BAFD 
X-CRM114-Status: GOOD (  13.28  )
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
Cc: Jules Maselbas <jmaselbas@kalray.eu>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>,
 Yann Sionneau <ysionneau@kalray.eu>, shorne@opencores.org,
 Sascha Hauer <sha@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: nios2 and openrisc in barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 25, 2021 at 08:39:20PM +0300, Antony Pavlov wrote:
> On Thu, 25 Feb 2021 16:33:06 +0100
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> 
> > Hello,
> > 
> > On 25.02.21 14:02, Jules Maselbas wrote:
> > > On Thu, Feb 25, 2021 at 09:45:00PM +0900, Stafford Horne wrote:
> > >> Hello,
> > >>
> > >> I am the maintainer of most OpenRISC things right now.  I would be happy to
> > >> help, but I don't really use barebox right now.  Most of my deployments I use
> > >> with litex FPGA SoC's that has its own bootloader.
> > >>
> 
> There is barebox for litex SoC with RISC-V CPU core, please see:
> 
> https://github.com/enjoy-digital/litex/issues/413#issuecomment-609047340

Hi Antony,

Great thanks, I see that is a two stage bootloader Litex BIOS -> Barebox.
That's great and gives me an easier target.

-Stafford

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

