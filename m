Delivery-date: Mon, 09 Jan 2023 10:10:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEoAT-006UiD-TC
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 10:10:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEoAR-00069U-WE
	for lore@pengutronix.de; Mon, 09 Jan 2023 10:10:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zJ3F+Vd6mo8CJCJIj849EKEmxteTwXqXSxuUAjWuu9U=; b=m0x5lElOXotRPQ80lkR4Cx4OGo
	XbetjPykHRTTlNxL98QkXW8dXXPAx89MK1LD1mxabrxWuKVB5zY2ZItAyq75HHHTkftorYil0TQNi
	Vvo5YJ9r0gepLoNU5BPBWlIk8xzdghThIYce0+x5tiWqBQ/8G7T7T3hQaJ7wpYvQjSdPHNUFUbkHW
	UmL9Bi0FQsWfAyq0UjGfUeDeYltsP/ZBe/r0K8MZPC6nntYOzNz4xuAK9M/RhWEXv+aisUwJGalV7
	LuJs3wLT0EyIcWjJhwhe0yjzb9YUGSF6+zvrUUx6JrqCmiBO/420BdBMGja3aN/aNxRO2v3PJEOK1
	CcwYFlcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEo97-000Wl1-B2; Mon, 09 Jan 2023 09:08:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEo8y-000Wen-Qt
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 09:08:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pEo8k-0005oC-Ts; Mon, 09 Jan 2023 10:08:22 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pEo8k-0003Lb-Df; Mon, 09 Jan 2023 10:08:22 +0100
Date: Mon, 9 Jan 2023 10:08:22 +0100
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>,
	Alexander Shiyan <eagle.alexander923@gmail.com>
Message-ID: <20230109090822.GB28911@pengutronix.de>
References: <20230109061401.1817658-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230109061401.1817658-1-u.oelmann@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_010836_914353_46A70470 
X-CRM114-Status: GOOD (  22.38  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] of: partition: moan if adding a partition failed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 09, 2023 at 07:14:01AM +0100, Ulrich Ölmann wrote:
> Do not silently continue if e.g. the label of a partition defined in the
> devicetree collides with the name of a partition defined in a GPT on the device.
> 
> While already at it, fix a double semicolon a few lines downward.
> 
> Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
> ---
>  drivers/of/partition.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/partition.c b/drivers/of/partition.c
> index abbda674d6cb..ed1114193062 100644
> --- a/drivers/of/partition.c
> +++ b/drivers/of/partition.c
> @@ -67,11 +67,13 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
>  	filename = basprintf("%s.%s", cdev->name, partname);
>  
>  	new = devfs_add_partition(cdev->name, offset, size, flags, filename);
> -	if (IS_ERR(new))
> +	if (IS_ERR(new)) {
> +		pr_err("Adding partition %s failed: %pe\n", filename, new);
>  		new = NULL;
> +	}
>  
>  	if (new)
> -		new->device_node = node;;
> +		new->device_node = node;
>  
>  	if (IS_ENABLED(CONFIG_NVMEM) && of_device_is_compatible(node, "nvmem-cells")) {
>  		struct nvmem_device *nvmem = nvmem_partition_register(new);
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


