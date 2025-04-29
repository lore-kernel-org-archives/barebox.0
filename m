Delivery-date: Tue, 29 Apr 2025 11:51:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9hcw-000SK6-07
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 11:51:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9hcv-0002KB-FD
	for lore@pengutronix.de; Tue, 29 Apr 2025 11:51:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VJaauj+rg9tlYovPKAuYFRNB7DBOEWHS9RHQ1RFuU+k=; b=ejSh41ewaxRHUz+mRlh8Na2YAP
	OOCbch90xbgjZED1vZJXnweIw0K/hS5pGhBS94VQjgxQauG1rII5nfMhfziNNfFqPKVyMKAgkX8YZ
	Ql1Y+PffYB3fRTFzy+tr8x9f6vl59sM8Iw26E0V8P6ieO7+PAbztNGawINIiIoP1lctyBMzAfTeFY
	bTNLWUI0L0NtuUGZRhNJonyodtdC3tsUxFKYbXEKwXCZQ3chwQsqvSmwzvRgTpk0UNJQpUs6ryEAu
	+Ig2YtSPqvjuDqNyFdteREq2RtSclz9qBO64ejUjdED6d8i1xnppMkoso7WAT5kzf5IjmeHBwZD2W
	EGr3Vo/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9hcS-00000009Cex-0CS1;
	Tue, 29 Apr 2025 09:51:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9haz-00000009CUq-034K
	for barebox@bombadil.infradead.org;
	Tue, 29 Apr 2025 09:49:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=VJaauj+rg9tlYovPKAuYFRNB7DBOEWHS9RHQ1RFuU+k=; b=i4nRTgRFLk6SYRSaweYrU90Oz5
	rNHaPelcL6JrMB21N+XHHCbwQbYpOKCEWa4LV19mbTYk3LyZZqlSMlOrdOW8f7jxoLmKKsNh/pD2l
	M4+MK6afnTlb30U2JzGyVmoDgwoBssczxkV50v3e/gAzHGqnX0T8FBGi0Fz3GmWbXSMcHRHf49E6N
	CLTxGMsBT8+jUSG5IOjolQo8RlxCGHH/4vk6ekMnqfknFFHJPPeGzWp91AMiUzu6y95Snt6gK6qVK
	x0Z3TIYXl4q5Gpc/DUgiEaZhKk/k/7WuWhd9id4MCmas1nB4PZpq6kD6rW5/nIqF7gND8+67ypwLE
	44ynAnpg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u9hav-0000000DG7w-3nHz
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 09:49:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9hau-0001J1-NU; Tue, 29 Apr 2025 11:49:40 +0200
Message-ID: <3761c82f-78ec-42ea-bf4a-d8ecbdced01d@pengutronix.de>
Date: Tue, 29 Apr 2025 11:49:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, johannes@gnu-linux.rocks
Cc: barebox@lists.infradead.org
References: <20250428172001.6708-1-johannes@gnu-linux.rocks>
 <aBCO-SSyT0BQnlek@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aBCO-SSyT0BQnlek@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_104942_100680_20A9BE94 
X-CRM114-Status: GOOD (  18.50  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Porting Cora Z7 Board to barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 4/29/25 10:34, Sascha Hauer wrote:
> In case of the Zedboard you could take start_avnet_zedboard.pbl. This
> contains all necessary components including device tree and barebox
> proper.
> 
> However, this binary is linked to 0x0 and the FSBL will likely load it
> there. I don't know where the FSBL itself is located.

The pbl files tend to be a bit bigger, because they are meant only
as input to objcopy. You can add to images/Makefile.zynq, e.g.

  image-$(CONFIG_MACH_ZEDBOARD) += start_avnet_zedboard.elf

And it will generate a much more compact ELF file that should
be interchangeable (I had tested this on ZynqMP).

>> Is there a way to hard code the UART to use for the barebox
>> console for barebox proper?
> 
> Why do you want to hardcode it? Setting the console via device tree is
> just fine.
> 
> For debugging your early code I recommend CONFIG_DEBUG_LL. For zynq the
> UART is hardcoded to ZYNQ_UART1_BASE_ADDR in include/mach/zynq/debug_ll.h.
> You can change it in this file.
> 
> With CONFIG_DEBUG_LL enabled you can put putc_ll() in your code.

CONFIG_DEBUG_PBL is also often useful.

>> The Zynq on the Cora Z7 only embeds a single core Cortex A9 while the SoC on the
>> Zedboard embeds a dual core Cortex A9. Does this affect the cores initialization
>> in arch/arm/mach_zynq?
> 
> I don't think so. I haven't used Zynq myself though.

Cheers,
Ahmad

> 
> Regards,
>   Sascha
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



