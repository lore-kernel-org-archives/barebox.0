Delivery-date: Fri, 30 Apr 2021 11:45:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcPi2-0004iA-0R
	for lore@lore.pengutronix.de; Fri, 30 Apr 2021 11:45:18 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcPi1-0000Cl-9Q
	for lore@pengutronix.de; Fri, 30 Apr 2021 11:45:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4lEg6I73uO924FV2Ygbjc/qb80xBuV6njQ9D4pKN3Jk=; b=Kb4JSJNKev71FXz+0YmYOjvPs
	V1alEku/hltWfA1ls1Ihiu1PHLtrnNgrEJDsCqRcoX9wgmRpAEriPhT9W6N6nVnzBh3snl4ufw7dj
	XzGq/pM4TI3y/WmAMQFWzYpmr462DcLuNFvlTwxe5w0aBT303bZXxVEm6E3afFpCTcnRc365PNI02
	poPGZZamp4GD2Vuqkmlg+iartYthZjfSKvatlyJ0GjiXMP9qJyWvk2c2aUdUVjD/ylKeskJXA5+tL
	yO8SThh7HfhoWPN84e9h98TjYk5xmjQb4YeB5rDbsQUu6jH8J7ACh88hTH84g9pTaebQhJDA/UKD6
	bnG3WcBXA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcPh4-007bkj-NK; Fri, 30 Apr 2021 09:44:18 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcPh0-007bkZ-GY
 for barebox@desiato.infradead.org; Fri, 30 Apr 2021 09:44:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=/DduZqpKPCqa5QnPER5c2qEcX3wiXIZKvGkUiEA+FAM=; b=sSNmFzyaWVKP+WR7b3Wiunbu7v
 R8ANOQpR4jPWcD0mb/GzuwKuJ27JCHtveaDmdKqe9fAf0ZsX6IwifOmxMMDUoVdlei07Dh8i48dRm
 /852XIEhMg0kiJNVA7WmDz4MSBKR0QFk3vBwaBYsHHIbvviHs+Nqz0OQtcAwS4EKidAYRvi0YF5xS
 bJQgMUOF08W5BLqPSZervL0cyWC8Ew0aLwvn6Q9uiqD+AmmobH074B6aY4PRHE379Nb5m4K0E1ixF
 cOuUAoYkaZw3QlswoR4ENqV+6tthGxY9XUEyTp1whdMRMYNqqA45GB75G3b36AwclEXYbIOacKAUH
 NgQzh19g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcPgx-001HQm-IE
 for barebox@lists.infradead.org; Fri, 30 Apr 2021 09:44:13 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lcPgu-00005A-4J; Fri, 30 Apr 2021 11:44:08 +0200
To: Bastian Krause <bst@pengutronix.de>, barebox@lists.infradead.org
References: <20210430091930.30187-1-bst@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <8641c004-2bcf-a07d-f3e7-493dd595f8dc@pengutronix.de>
Date: Fri, 30 Apr 2021 11:44:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210430091930.30187-1-bst@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_024411_633298_020E6345 
X-CRM114-Status: GOOD (  20.74  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] scripts: imx-usb-loader: print excluded USB device
 message only on verbose
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 30.04.21 11:19, Bastian Krause wrote:
> If a USB device path is specified, it is expected that other devices will
> be ignored. So print that message only on verbose > 0.
> 
> Signed-off-by: Bastian Krause <bst@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  scripts/imx/imx-usb-loader.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
> index e277d29035..6f9104e816 100644
> --- a/scripts/imx/imx-usb-loader.c
> +++ b/scripts/imx/imx-usb-loader.c
> @@ -314,7 +314,7 @@ static int device_location_equal(libusb_device *device, const char *location)
>  	/* walked the full path, all elements match */
>  	if (path_step == path_len)
>  		result = 1;
> -	else
> +	else if (verbose)
>  		fprintf(stderr, " excluded by device path option\n");
>  
>  done:
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

