Delivery-date: Thu, 09 Mar 2023 11:53:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDu2-00EipT-6b
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 11:53:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDu2-0002r5-0w
	for lore@pengutronix.de; Thu, 09 Mar 2023 11:53:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r5iXAWXpuYfohM49am/jdESILqowGQCFYh1dipfqcVc=; b=dwqYlosdwDejurTG2sBpD8l+LN
	+oTOvD4CPE8KTPDlpOF9ny/+N8Iww68eWseTpY+RPNkzYJ27LJC0Bn3kSFIe5MgzgzuowmEUv8q4w
	idCkgb8NXNHzTWP38J9G0eRfIk5B2ucsfS6hepsPBtlxi2cJeh2gyNQqHwuDMxtpTOWF0xBm3ucYL
	UWzGW1LlwpVriiloMob6D4XovGoEw5SJxnuW2m449Pz+7NnQVR5cCqiTgmeYgt/Emn2i59GDcFNaJ
	XtqfAZPTFrn1/hv4Pa2W8acrgATNHYSuyIrqEFMYh4AF/WmXQZ4oJncX+pQ65y1GNOhBDhzPvQ8u+
	kR4c6mcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDsw-009ERR-Dg; Thu, 09 Mar 2023 10:52:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDss-009EQa-96
	for barebox@bombadil.infradead.org; Thu, 09 Mar 2023 10:52:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=r5iXAWXpuYfohM49am/jdESILqowGQCFYh1dipfqcVc=; b=g1pqjgVYyZgFPIRLhfU/jJrhNQ
	4kIu9+RK/BNK7++0RbSfRSkjgwCUYxY8IVaWgB/LURDiIr28HoAWqovlwZ2OZOvvrNzM2LgezYlhy
	jjSWqb1cNSlcY5Kmt0hqu8ihb75roxqn+xWjdQJOeZPHayADEjzc1FzWRiPLBE3DN52/rKaJDdGkY
	/zQN8E9sY2b4zY7sxo5cgAsCb1MndoyjyCMcmqTqkAzBiJ/K3LYN3WuBUM52N2gNTbUXGwCZGOZuZ
	ksJTpSf1c5oTiv56Mmhy1o55m4Daj4bd0VZTBlP4UIs/WnMvNG8oxmmBkkOt04DABP3vHTP4oekUT
	b/Py8nnw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1paDso-0005bo-04
	for barebox@lists.infradead.org;
	Thu, 09 Mar 2023 10:52:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paDsl-0002cL-NA; Thu, 09 Mar 2023 11:52:23 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paDsl-0004Q5-GG; Thu, 09 Mar 2023 11:52:23 +0100
Date: Thu, 9 Mar 2023 11:52:23 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230309105223.GD5784@pengutronix.de>
References: <20230308130416.3895317-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230308130416.3895317-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_105226_343697_04736B51 
X-CRM114-Status: GOOD (  19.08  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] blspec: support higher verbosity levels for boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Mar 08, 2023 at 02:04:16PM +0100, Ahmad Fatoum wrote:
> bootm_data::verbose is an integer and may take values higher than one
> for higher levels of verbosity. Yet, boots with blspec always had at
> most a verbosity of one, because verbose was treated as boolean. Fix this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/blspec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/blspec.c b/common/blspec.c
> index f6e590b2efd8..97400b9a2248 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -88,7 +88,7 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
>  
>  	bootm_data_init_defaults(&data);
>  
> -	data.verbose = verbose || data.verbose;
> +	data.verbose = max(verbose, data.verbose);
>  
>  	devicetree = blspec_entry_var_get(entry, "devicetree");
>  	initrd = blspec_entry_var_get(entry, "initrd");
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


