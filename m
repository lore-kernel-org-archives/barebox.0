Delivery-date: Mon, 01 Dec 2025 11:43:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ1N2-006n3Y-0c
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 11:43:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ1N1-0008UB-M7
	for lore@pengutronix.de; Mon, 01 Dec 2025 11:43:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Cp2JN4n/IABJJGUpHQN+mARtJ5+AIZnt9soXrhq/Hoo=; b=nn9/SOx+L2Blvhpu7oLCYoQbpG
	hmLRzc76m3UiHXqxp4M4cdW8b3M2ihouXV5ECBd8X/mWWYdp5mXrjHS7V+nVil1yMADyYbFj/zMGH
	8EgHIZNBhOZeLi2p8obXT/TzRmiwrCzNbv4QzA8uh2MzlOWBd9udSItI5mk6pUU8+4kecqOYx+4t9
	AT/IFxyaqxOyLuAiRebKs2ZCSJ9teBJBw36s97Yv183zgn9zSYW1hNFew+R5bDi6q8gtLDZ7zra9g
	ZnMQdv9tM+xQtsx6vAfc4cTgoTrUo6ek50mFs+JdLJFVOe9HrI+JX0YFy8bfwh4hsn3qUhIAi3GoZ
	ikl9Ij9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ1Me-00000003M2h-36PP;
	Mon, 01 Dec 2025 10:42:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ1Mb-00000003M2G-3UJz
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 10:42:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vQ1Ma-0008Qv-6w; Mon, 01 Dec 2025 11:42:36 +0100
Message-ID: <24ac1b78-3363-4566-8e51-bfe7e375458b@pengutronix.de>
Date: Mon, 1 Dec 2025 11:42:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: maudspierings@gocontroll.com, Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251201-imx_usb-v2-0-95ec2a0e8694@gocontroll.com>
 <20251201-imx_usb-v2-3-95ec2a0e8694@gocontroll.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251201-imx_usb-v2-3-95ec2a0e8694@gocontroll.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_024237_899635_2815D350 
X-CRM114-Status: GOOD (  14.12  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 3/3] gitignore: ignore *.exe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 12/1/25 11:26 AM, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maudspierings@gocontroll.com>
> 
> windows scripts produce .exe files, which should not be added. Add it to
> the gitignore.
> 
> Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  .gitignore | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/.gitignore b/.gitignore
> index a235f9f7de..74cb7b0928 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -19,6 +19,7 @@
>  *.dcd
>  *.dcd.S
>  *.elf
> +*.exe
>  *.i
>  *.ko
>  *.lex.c
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



