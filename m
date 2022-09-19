Delivery-date: Mon, 19 Sep 2022 15:36:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaGx9-009bht-9D
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 15:36:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaGx8-0000qI-3X
	for lore@pengutronix.de; Mon, 19 Sep 2022 15:36:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jfb0nKSqgRGw79If8Ynzs2f6GiBHGQTGDcKl6AMNhUQ=; b=gpogsR5AiYXxbpRP8euFQ7Uaum
	dWbbnyOu+Z7caqy7XvlmUP/UdKYCMsr6vkd+anuIHTkwG0wwVaP5fL0qYoUiesUhgu9OdmicSlZEA
	ipPE1NYjKE/QmZYK4nZqbWLxGnTrLv9eoOI9JohWUtTEGRTHk134iWja6PCxvtgoqR/4vBZYu/F28
	3QCklDC1SxA4/2mczDOwmUGv10fCnJK6ZVn90pS+XfjSRwTswJUrh25zle6lB+Od66RamRL7cpw3T
	J44XT0bT4FPMo/A/XkJnV7vVlVKQt+frkBo0b1Sb6JxJ8/mPLuAGXthhi5RWZpfkhk+wt85JVQNWH
	9iRehFLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaGuc-00Bt6J-Fc; Mon, 19 Sep 2022 13:34:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaGuW-00Bt1k-4g
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 13:34:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oaGuR-0000J2-G8; Mon, 19 Sep 2022 15:34:03 +0200
Message-ID: <cacddc32-3b0f-7014-393c-8c93e5971627@pengutronix.de>
Date: Mon, 19 Sep 2022 14:33:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
 barebox@lists.infradead.org
References: <ly7d1z1qvs.fsf@ensc-pc.intern.sigma-chemnitz.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <ly7d1z1qvs.fsf@ensc-pc.intern.sigma-chemnitz.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_063408_236988_B6D284B3 
X-CRM114-Status: GOOD (  18.35  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: malloc() alignment on 32 bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 19.09.22 13:37, Enrico Scholz wrote:
> Hello,
> 
> on an iMX6ull I stumpled across
> 
> | zstd_decomp_init:536 workspace=8ff1a004+161320
> | ERROR: initcall ubifs_init+0x1/0xc4 failed: Invalid argument
> 
> which is caused by
> 
> | static int zstd_decomp_init(void)
> |	void *wksp = malloc(wksp_size);
> | ...
> | ZSTD_DCtx* ZSTD_initStaticDCtx(void *workspace, size_t workspaceSize)
> |    if ((size_t)workspace & 7) return NULL;  /* 8-aligned */
> 
> 
> Trivial fix would be 'memalign(8, wksp_size)', but is it really ok that
> malloc() for 32 bit has only an alignment of 4?
> 
> Relevant code seems to be in common/tlsf.c
> 
> | enum tlsf_private
> | {
> | #if defined (TLSF_64BIT)
> | 	/* All allocation sizes and addresses are aligned to 8 bytes. */
> | 	ALIGN_SIZE_LOG2 = 3,
> | #else
> | 	/* All allocation sizes and addresses are aligned to 4 bytes. */
> | 	ALIGN_SIZE_LOG2 = 2,
> | #endif
> 
> 'ldrd/strd' require 8 byte alignment which might break with such
> alignment.

I recently learnt too that on 32-bit TLSF only has 4 byte alignment.
I also think that this is too low. 8 byte alignment sounds good IMO.

Cheers,
Ahmad

> 
> 
> Enrico
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


