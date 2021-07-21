Delivery-date: Wed, 21 Jul 2021 10:05:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m67EC-0003QL-7Z
	for lore@lore.pengutronix.de; Wed, 21 Jul 2021 10:05:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m67EA-0003mc-Qz
	for lore@pengutronix.de; Wed, 21 Jul 2021 10:05:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YQAUwinNOLF5f8ZIxYSZ93kJzTHBN2Xh0QUIP/FIK9g=; b=hil7KWXhx1JCXsUSM7VXr7/0JH
	1LJ1pQ+bx0Hahj29LwrfJSiYj0cEWHr/QOh5W/seS71EpKHa29f3ndv08YUKheSDDZ0h2mLPyKbsX
	WUzf5Xj/pGEBcv1HUI/nsna2+crpVvau/67f1dkykyIsQeQjwnvoODCcS/6ajzilN59z/bcrj81ZB
	y9tX+QQolOVZMckQmjX5Zw9RE+oGoHBLIwx4aGMdGtO+RAfP29aSvfmAx/VCJw0wJjLbZS3VIUGMx
	1v5QKnnyqY+h8+WkCrWFa0lCmhlTuZwlyhtMaZaEw+0fsMK+WnBK8Gi/NcHVQcSfqgBU/d+UiuIuH
	wleRLOag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m67Cl-00Eooo-Aq; Wed, 21 Jul 2021 08:03:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m67Cg-00Eonc-78
 for barebox@lists.infradead.org; Wed, 21 Jul 2021 08:03:43 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1m67Ca-0003gS-Pk; Wed, 21 Jul 2021 10:03:36 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
References: <20210721075051.393141-1-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <577c9a3b-ccf2-f52a-03cd-311bd95e28fb@pengutronix.de>
Date: Wed, 21 Jul 2021 10:03:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210721075051.393141-1-r.czerwinski@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210721_010342_311031_0816F5EE 
X-CRM114-Status: GOOD (  24.96  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fastboot: handle error from file_list_parse()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Rouven,

On 21.07.21 09:50, Rouven Czerwinski wrote:
> In case an invalid file list is passed to file_list_parse(), it will
> return an error, i.e. by passing "/dev/mmc1(emmc) /dev/mmc1.1(root)",
> the error here being that the entries are not comma separated and
> file_list_parse will try to parse ' ' as a flag. The fastboot code
> didn't handle this, leading to the following error:
> 
>   ERROR: file_list: Unknown flag ' '
>   ERROR: file_list: parse error
>   unable to handle paging request at address 0xfffffff2
>   pc : [<8fe26a20>]    lr : [<8fe0f965>]
>   sp : 8ffeff50  ip : 8ffef714  fp : 00079bda
>   r10: 001b9ff8  r9 : 8fea7eec  r8 : 00000001
>   r7 : 00000000  r6 : 00000001  r5 : 00000000  r4 : 8813eab0
>   r3 : ffffffea  r2 : 00020000  r1 : 00000001  r0 : 8813eab0
>   Flags: nzCv  IRQs off  FIQs off  Mode SVC_32
>   WARNING: [<8fe26a20>] (usb_multi_count_functions+0xc/0x2a) from [<8fe0f965>] (usbgadget_register+0x79/0xf4)
>   WARNING: [<8fe0f965>] (usbgadget_register+0x79/0xf4) from [<8fe0fa13>] (usbgadget_autostart_set+0x33/0x4c)
>   WARNING: [<8fe0fa13>] (usbgadget_autostart_set+0x33/0x4c) from [<8fe4d437>] (param_int_set+0x4b/0xb0)
>   WARNING: [<8fe4d437>] (param_int_set+0x4b/0xb0) from [<8fe4d899>] (dev_set_param+0x4d/0x64)
>   WARNING: [<8fe4d899>] (dev_set_param+0x4d/0x64) from [<8fe066f1>] (globalvar_add_bool+0x49/0x54)
>   WARNING: [<8fe066f1>] (globalvar_add_bool+0x49/0x54) from [<8fe0f8dd>] (usbgadget_autostart_init+0x15/0x24)
>   WARNING: [<8fe0f8dd>] (usbgadget_autostart_init+0x15/0x24) from [<8fe01081>] (start_barebox+0x35/0x6c)
>   WARNING: [<8fe01081>] (start_barebox+0x35/0x6c) from [<8fe62ed9>] (barebox_non_pbl_start+0x121/0x164)
>   WARNING: [<8fe62ed9>] (barebox_non_pbl_start+0x121/0x164) from [<8fe00005>] (__bare_init_start+0x1/0xc)
> 
>   WARNING: [<8fe64e3d>] (unwind_backtrace+0x1/0x78) from [<8fe01385>] (panic+0x1d/0x34)
>   WARNING: [<8fe01385>] (panic+0x1d/0x34) from [<8fe62723>] (do_exception+0xf/0x14)
>   WARNING: [<8fe62723>] (do_exception+0xf/0x14) from [<8fe62791>] (do_data_abort+0x21/0x34)
>   WARNING: [<8fe62791>] (do_data_abort+0x21/0x34) from [<8fe624d4>] (do_abort_6+0x48/0x54)
> 
> Add the proper error handling and notify the user with a proper error message.

get_dfu_function() suffers from the same issue. There is already a parse function in
common/usbgadget.c that warns and returns NULL. Could you move that somewhere
central and use it for both fastboot and dfu?

Thanks,
Ahmad 

> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  common/fastboot.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/common/fastboot.c b/common/fastboot.c
> index 75f6691b08..d53a1cd228 100644
> --- a/common/fastboot.c
> +++ b/common/fastboot.c
> @@ -918,8 +918,14 @@ bool get_fastboot_bbu(void)
>  
>  struct file_list *get_fastboot_partitions(void)
>  {
> -	if (fastboot_partitions && *fastboot_partitions)
> -		return file_list_parse(fastboot_partitions);
> +	struct file_list *list;
> +	if (fastboot_partitions && *fastboot_partitions) {
> +		list = file_list_parse(fastboot_partitions);
> +		if (IS_ERR(list)) {
> +			pr_err("parsing failure: '%s', returning NULL\n", fastboot_partitions);
> +			return NULL;
> +		}
> +	}
>  	if (!system_partitions_empty())
>  		return system_partitions_get();
>  	return NULL;
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

