Delivery-date: Tue, 10 Jan 2023 20:57:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFKks-0087rb-QD
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 20:57:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFKkq-0006zw-Nf
	for lore@pengutronix.de; Tue, 10 Jan 2023 20:57:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u52Mg1/1Y0hwx2cXMYrxdTYJfjmlPINAmxch809045g=; b=FrOVfQl4HBzZlg+278Aixjqocp
	oRfbCjaWe5mG9rXO5AGnZC3U9EqtaKBLcPenQePt3xHbjNq9kq+RQ7GPEl+/oJXpdIoAGTU1GzKV+
	ddAVPadThw5o+VgDEkto8ZCnWlO+05sBVjqyJHD8ArAjUXHCu6EbufBQgOM3ATWfb0i2ELwCeb7+i
	iVkYILLb5TitFTgLOp0OqWxvHicbqQA2tgBCuBck551KwyklOX0wcxpiVngHXZLecAvwm9bqGDVr5
	FDZEgniLQYugyaPrE1MfiuWNukUo55Ep8VKnIXvlG0Z0SHX2Gp8Zm8CrcJ3u35IMguqVSPAIFfRfu
	gEJlewYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFKjU-008OUm-G5; Tue, 10 Jan 2023 19:56:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFKjJ-008OR9-28
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 19:56:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pFKjG-0006ql-5q; Tue, 10 Jan 2023 20:56:14 +0100
Message-ID: <fca0dd20-a957-e6da-4dad-bd268b8b8953@pengutronix.de>
Date: Tue, 10 Jan 2023 20:56:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Marcin Niestroj <m.niestroj@grinn-global.com>, barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@emb.dev>
References: <20230110193251.2821638-1-m.niestroj@grinn-global.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230110193251.2821638-1-m.niestroj@grinn-global.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_115617_137861_574402B1 
X-CRM114-Status: GOOD (  22.42  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: rpi: parse memory from vc fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 10.01.23 20:32, Marcin Niestroj wrote:
> From: Marcin Niestroj <m.niestroj@emb.dev>
> 
> Currently for RaspberryPi platform there is only one memory bank
> created, based on information fetched over mailbox. This is fine for
> booting Barebox, but unfortunately all the other memory banks are not
> propagated to Linux during boot, thus cannot be utilized. In fact, even
> when using /vc.dtb as device-tree for Linux, all memory nodes in FDT are
> deleted and new ones are created by Barebox by memory fixup mechanism,
> using exising RAM information. As a result RaspberryPi 4 boots Linux
> with 1GB RAM available, instead of 2GB (2 banks, each 1GB).
> 
> At the end of VideoCore FDT parsing, do the same as of_probe_memory() in
> mem_initcall does, but for VideoCore provided devicetree/memory
> information. During Linux boot this information is used for memory fixup
> mechanism and in case of RaspberryPi 4 this results in 2 memory banks
> being propagated:
> 
>   # ls /proc/device-tree/memory*
>   /proc/device-tree/memory@0:
>   device_type  name         reg
> 
>   /proc/device-tree/memory@40000000:
>   device_type  name         reg
> 
> Signed-off-by: Marcin Niestroj <m.niestroj@emb.dev>

Thanks for your patch. I suggest this be applied to master.

I think it may be worthwhile in future to only query the mailbox
interface for memory in PBL (lowlevel.c) for use as early mem and
depend solely on DT in barebox proper.

> ---
>  arch/arm/boards/raspberry-pi/rpi-common.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)

> +		err = of_add_memory(memory, false);
> +		if (err)
> +			ret = err;

No one does anything wither either err or ret, so you can drop that.
Anyways:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> +	}
> +
>  out:
>  	if (root)
>  		of_delete_node(root);

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



