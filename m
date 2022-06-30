Delivery-date: Thu, 30 Jun 2022 15:21:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6u6g-0023CW-Pf
	for lore@lore.pengutronix.de; Thu, 30 Jun 2022 15:21:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6u6j-0004t6-3n
	for lore@pengutronix.de; Thu, 30 Jun 2022 15:21:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pwfW5KdXc0psPi3USwqbseiuQTGdyIuYrIitztJgSnQ=; b=DszlWLJmrcFRUypYIB3DfbPzrt
	/FcY/lEEukZZH95t1xjJR5vFwWqO5OpPRG9ezZOb3PGmfBw5SP9MthsncCbIhBxuMt4xvGI0S2knx
	dyCn4QO4Lp7SZfivH1Z0Hq6/mvCeBSFS3HZVFwRG+doCVx6naGCgf5oMPyi1i2M+35gkXTzrwEeq6
	PoLIFfKQW5p/5C0XeHUuJ4YuUOPVX9w0TP+pjKNTgUdkX1CWqrtnkkMHWSelKb2uVnubqKibWqQi7
	y7fCLCm5ksqTxrNdi46sMvRJUs1FRluENfvEQNbTWSPGKVribW03bzZX0HVSKJaW0Ij86Ajv1AmXN
	w+nhZVNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6u52-00HGXk-2G; Thu, 30 Jun 2022 13:19:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6u4x-00HGWi-DY
	for barebox@lists.infradead.org; Thu, 30 Jun 2022 13:19:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o6u4u-0004W2-Ac; Thu, 30 Jun 2022 15:19:28 +0200
Message-ID: <bfd75b6d-d5f7-195a-d0e1-997a883255a6@pengutronix.de>
Date: Thu, 30 Jun 2022 15:19:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: barebox@lists.infradead.org
Cc: has@pengutronix.de
References: <20220630122457.4009827-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220630122457.4009827-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_061931_508262_A671E81F 
X-CRM114-Status: GOOD (  17.35  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] partitions: efi: register guid device parameter for
 disk GUID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 30.06.22 14:24, Ahmad Fatoum wrote:
> We already register an nt_signature parameter for MBR partitions.
> Register an equivalent guid parameter for GPT partitions as well.
> This is less critical because disk GUID isn't used for root=
> Linux boot argument computation, as each partition has its own
> PARTUUID. It's still useful to allow shell scripts to check
> against it to detect e.g. a factory flash image.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Please dismiss. Premature emailing.

> ---
>  common/partitions/efi.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/common/partitions/efi.c b/common/partitions/efi.c
> index 848bed22610f..0f3f790539cd 100644
> --- a/common/partitions/efi.c
> +++ b/common/partitions/efi.c
> @@ -446,6 +446,7 @@ static void efi_partition(void *buf, struct block_device *blk,
>  	}
>  
>  	snprintf(blk->cdev.uuid, sizeof(blk->cdev.uuid), "%pUl", &gpt->disk_guid);
> +	dev_add_param_string_fixed(blk->dev, "guid", blk->cdev.uuid);
>  
>  	nb_part = le32_to_cpu(gpt->num_partition_entries);
>  


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


