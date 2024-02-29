Delivery-date: Thu, 29 Feb 2024 12:14:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfeMw-00FUGi-1f
	for lore@lore.pengutronix.de;
	Thu, 29 Feb 2024 12:14:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfeMv-00021F-TG
	for lore@pengutronix.de; Thu, 29 Feb 2024 12:14:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ibLXlE+sS9zPvl03rY/ewK/bZK8cPMpKk38voxfKQT8=; b=iVzkzycWUvwJ9pc76vUoHGrnLw
	I3wKc9bTeqNWeqwQKX0JV7aJUHOO2v1sdadItsJLLtgWtEWasKNB6AgLPTlvVgCQx9YPCdQ7OLTt9
	JaioN33TggrJJ2i96qodL6LJMp4BJEFh8LLzxkKPOJUJ4Ow/x3rje3Nn0CJKBivplT3kxz2U9G5Te
	SmuSSxhd3Ord/HpZhYhCg9ebUkzLp5XTJlyxj2hCrMneioiHXV2glBdtusvDI3KSx0geQiTysgPIn
	W4Fufd2aVQ2sptrpXjK8Nh69uFBUmQVebOh/OX9o6M7B/wUcxUuAkkGg+PzCyrCdXIu3JZSloJ3Bq
	g/p55FsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfeMS-0000000DJKo-1I0w;
	Thu, 29 Feb 2024 11:14:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfeMO-0000000DJKH-1Qms
	for barebox@lists.infradead.org;
	Thu, 29 Feb 2024 11:13:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rfeMN-0001vB-3W; Thu, 29 Feb 2024 12:13:55 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rfeMM-003ZlF-NK; Thu, 29 Feb 2024 12:13:54 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rfeMM-00DYzs-24;
	Thu, 29 Feb 2024 12:13:54 +0100
Date: Thu, 29 Feb 2024 12:13:54 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240229111354.y6hgi2ml5jwgotvz@pengutronix.de>
References: <20240228180319.2739412-1-a.fatoum@pengutronix.de>
 <20240229091020.6fdnglwbla75hpn3@pengutronix.de>
 <cd591f96-026f-4fc8-8f26-f572143b32e7@pengutronix.de>
 <20240229093324.by6gutzs6g3bgknz@pengutronix.de>
 <e930242d-0fa6-4387-82a2-112b519b619d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e930242d-0fa6-4387-82a2-112b519b619d@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_031356_429172_068ADE51 
X-CRM114-Status: GOOD (  22.91  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] optee: don't warn about missing OP-TEE header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-02-29, Ahmad Fatoum wrote:
> On 29.02.24 10:33, Marco Felsch wrote:
> > On 24-02-29, Ahmad Fatoum wrote:
> >> hdr is a valid pointer for me, but it doesn't point at a header, which causes
> >> me to get an error message.
> > 
> > Yes, I have noticed the code path for non-pbl part as well now :/
> > 
> > I was thinking about:
> > 
> > 	if (hdr->magic == 0)
> > 		return -EINVAL;
> > 
> > but this is not far awways from you change. Therefore:
> 
> This would assume that DRAM is zero-initialized after POR, which isn't given.

For i.MX8M and i.MX9 it should be the case since we call
imx8m*_init_scratch_space which in turn does set the scratch space to
zero. Anyway as said, I'm fine with lowering it to pr_debug() :)

Regards,
  Marco

> > Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> > 
> > PS: Could you please fix the silent check as well by using IS_ERR_OR_NULL()?
> 
> I will send a separate patch for that, so this can be picked up as-is.
> 
> Cheers,
> Ahmad
> 
> > 
> > Regards,
> >   Marco
> > 
> >>
> >> Thanks,
> >> Ahmad
> >>
> >>>
> >>> Regards,
> >>>   Marco
> >>>
> >>>>  
> >>>>  	if (hdr->magic != OPTEE_MAGIC) {
> >>>> -		pr_err("Invalid header magic 0x%08x, expected 0x%08x\n",
> >>>> -			   hdr->magic, OPTEE_MAGIC);
> >>>> +		pr_debug("Invalid header magic 0x%08x, expected 0x%08x\n",
> >>>> +			 hdr->magic, OPTEE_MAGIC);
> >>>>  		return -EINVAL;
> >>>>  	}
> >>>>  
> >>>> -- 
> >>>> 2.39.2
> >>>>
> >>>>
> >>>
> >>
> >> -- 
> >> Pengutronix e.K.                           |                             |
> >> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> >> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> >> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> >>
> >>
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 


