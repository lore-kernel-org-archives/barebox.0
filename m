Delivery-date: Wed, 06 Nov 2024 15:14:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8gnL-005YMi-07
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 15:14:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8gnL-0004FR-Al
	for lore@pengutronix.de; Wed, 06 Nov 2024 15:14:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4W1QWI8IMFtozYnNyMZyWR+bgnSq2PclPfvcr2bmIc8=; b=MkkyK+vz41zC1DD+fXTKMmMtpV
	m00U9jhBrSmZot4V39sAgk6rFZJcljxQLDM8WUVi1kNOdRg+QRNQuw7l/KdN/WndpKXGV2H1Bz/7z
	Ft8QdUS8hAGC/bh6WeFN+EHpUai/UMdXcNiKYl0NOWIJLxtDU7MjD8CVeKJeFqQqxdT36Xpk7xDjJ
	Gk9P3o5WVmm7FsEqqqtGTpeVCTehe3fh59jlm0dfKVDo2OU4AT5PcIaSS1YHzZFCiHUbu+UlMQik0
	lBH616DwrkiOMiy0emyBXzUb1vzxTX0aXkI1ZNxe99PdTDIlLtdKoJR67bg3kUViXm6DSyntO39Ax
	YVXC6IWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8gmp-00000003YS6-2u62;
	Wed, 06 Nov 2024 14:13:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8gXP-00000003Vum-3ivF
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 13:57:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8gXM-0002VX-0x; Wed, 06 Nov 2024 14:57:32 +0100
Message-ID: <8d4414f2-0fef-4a67-bf92-72ee4a558d9e@pengutronix.de>
Date: Wed, 6 Nov 2024 14:57:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>,
 barebox@lists.infradead.org
Cc: oss-contrib@rtone.fr, Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
References: <20241031092721.763280-1-sebastien.bourdelin@gmail.com>
 <20241031092721.763280-2-sebastien.bourdelin@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241031092721.763280-2-sebastien.bourdelin@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_055735_964791_6DD8BE2F 
X-CRM114-Status: GOOD (  15.59  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] mci: add a busy_timeout member to the struct mci_cmd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 31.10.24 10:27, Sebastien Bourdelin wrote:
> From: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
> 
> This commit extends the struct mci_cmd to add a new busy_timeout member.
> 
> Signed-off-by: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  include/mci.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/mci.h b/include/mci.h
> index cd01e2f992..f607ef1b74 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -471,6 +471,7 @@ struct mci_cmd {
>  	unsigned cmdidx;	/**< Command to be sent to the SD/MMC card */
>  	unsigned resp_type;	/**< Type of expected response, refer MMC_RSP_* macros */
>  	unsigned cmdarg;	/**< Command's arguments */
> +	unsigned busy_timeout;	/**< Busy timeout in ms */
>  	unsigned response[4];	/**< card's response */
>  };
>  


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


