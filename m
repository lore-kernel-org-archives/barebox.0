Delivery-date: Wed, 05 Jan 2022 13:10:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n557J-00BjKn-EC
	for lore@lore.pengutronix.de; Wed, 05 Jan 2022 13:10:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n557E-0005lR-VB
	for lore@pengutronix.de; Wed, 05 Jan 2022 13:10:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9JZvKRKJ/ViYy6jiDXIuo1tJuf9Rg6mnnxLfyr6mq6E=; b=AxnLXGNL7QIQR/zhAIcTISe7ud
	XUEh7+s1BK0kK571lnqcYDLeIHEAKDAGH2xcRFTFCXsf8lbHisuUSCGIYfOnoyfRzsdOpjEpDI/d+
	ayR2XdRU757pa6v6A7ML88YcWobfxo7Sw4am8ntiWJxUYUc8SD7+3+unBVUxlFUNAX4CsCbV7GZAV
	bK51db3TCVO3U670kGjTMBkaNZaYl2hZcb4HCLHwPaEZ9SLZzfJF3WTpKOoNNPuxLfmcNs4inpHdM
	pEr+74CagCd0hUDMZSuRNZprv5CifK+gVK0qWUPpjTrE+5HNrpvQN4wmuJBItUgKQc/4aWCBNP42S
	DGzBMywA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n555k-00EjeX-PT; Wed, 05 Jan 2022 12:08:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n555f-00Ejdv-Un
 for barebox@lists.infradead.org; Wed, 05 Jan 2022 12:08:29 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1n555d-0005gu-39; Wed, 05 Jan 2022 13:08:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Frank Wunderlich <frank-w@public-files.de>, barebox@lists.infradead.org
References: <trinity-c26cce2b-95ff-45dc-9d60-3a1eebfa088b-1641285545326@3c-app-gmx-bap27>
Message-ID: <5692a978-e5e5-c46d-978e-49438ee28782@pengutronix.de>
Date: Wed, 5 Jan 2022 13:08:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <trinity-c26cce2b-95ff-45dc-9d60-3a1eebfa088b-1641285545326@3c-app-gmx-bap27>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220105_040828_052621_4328D77C 
X-CRM114-Status: GOOD (  17.28  )
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
Subject: Re: barebox - rk3568
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Frank,

On 04.01.22 09:39, Frank Wunderlich wrote:
> Hi,
> 
> i have a prototype rk3568 board (bpi-r2-pro).
> 
> is it possible to flash only barebox instead of uboot? in documentation i found only "creating SD-card", but i dont want to break existing partitions.
> 
> https://www.barebox.org/doc/latest/boards/rockchip.html#rockchip-rk3568
> 
> says it starts from sector 32, my first block for uboot (idblock.bin=spl+raminit) starts at 64, full uboot in partition at 8M.

You probably figured it out by now, but the discrepancy is likely due to differing
block sizes. barebox documentation has `dd bs=1024`, while the default is 512.
boot firmware is a single chunk with barebox, so no separate second stage bootloader
partition.

> As it differs a bit from evb can i add new dts like in uboot?

You can check out the commit adding the EVB or the Pine64 Quartz64:
8d14f8e898b4 ("arm: rockchip: add support for the quartz64 board")

Feel free to send patches for your board along the same lines. :)

Cheers,
Ahmad

> 
> regards Frank
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

