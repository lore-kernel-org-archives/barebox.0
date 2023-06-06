Delivery-date: Tue, 06 Jun 2023 10:36:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6SB5-00Cp4W-EE
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 10:36:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6SB3-0005u9-6g
	for lore@pengutronix.de; Tue, 06 Jun 2023 10:36:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j2Hhbpgho+EvJu4eIob9RQFrEGr53A4ip1Pft86Nato=; b=byonFCW88RJcbMcUtVuIOpfxTG
	6aL5xTUc62yhL3a3K9fSRCIwhXPUw/JkdjtPb1O2hebMgt4zAjOpcEmVsXKaRRZppJUB/n6He+8iy
	hUE0ghZNZKcSTKup8BEJ5MdM6dqRzDTpki7/OVlca9avUzPHz4wEh193BPXLhOUUkEdAz5wxxAG0U
	5ImKQ3oFb3ODHzlN80Ig6+FgiEZdpZZMxz9QlfiN7JJy5xo7MWNrfP1NIzvi8Lkj+/wyGz0DFIiLQ
	pu2eBuSqAuphRMwXS3yVaoUPOZGRRCSIcjBVykZB8347Vx9mV+p99U2FXqyad1b0a6y/25sI61I0e
	ka+pYyQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6S9v-000pQS-2P;
	Tue, 06 Jun 2023 08:35:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6S9r-000pPf-3B
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 08:35:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q6S9q-0005Uv-9I; Tue, 06 Jun 2023 10:35:14 +0200
Message-ID: <c498f22a-0ec5-f9a0-80eb-5c7842cec9fb@pengutronix.de>
Date: Tue, 6 Jun 2023 10:35:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Denis Orlov <denorl2009@gmail.com>, barebox@lists.infradead.org
References: <20230605202634.42175-1-denorl2009@gmail.com>
 <20230605202634.42175-9-denorl2009@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230605202634.42175-9-denorl2009@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_013516_030059_315734E2 
X-CRM114-Status: GOOD (  17.58  )
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
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 08/17] MIPS: malta: fix GT64120 base virtual address on
 64BIT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 05.06.23 22:10, Denis Orlov wrote:
> Use CKSEG1ADDR for it to be properly converted to the 64-bit
> sign-extended address when building with CONFIG_64BIT set.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>

Reviewd-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/mips/mach-malta/include/mach/mach-gt64120.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/mips/mach-malta/include/mach/mach-gt64120.h b/arch/mips/mach-malta/include/mach/mach-gt64120.h
> index e7d230655c..20ac4d94d6 100644
> --- a/arch/mips/mach-malta/include/mach/mach-gt64120.h
> +++ b/arch/mips/mach-malta/include/mach/mach-gt64120.h
> @@ -12,6 +12,6 @@
>  
>  #define MIPS_GT_BASE	0x1be00000
>  
> -#define GT64120_BASE    0xbbe00000
> +#define GT64120_BASE    CKSEG1ADDR(MIPS_GT_BASE)
>  
>  #endif /* _ASM_MACH_MIPS_MACH_GT64120_DEP_H */

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



