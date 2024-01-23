Delivery-date: Tue, 23 Jan 2024 15:39:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSHva-00Dcut-0V
	for lore@lore.pengutronix.de;
	Tue, 23 Jan 2024 15:39:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSHva-0006MJ-Ro
	for lore@pengutronix.de; Tue, 23 Jan 2024 15:39:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7elyaMdM87zUCNj4UBQHS+lf28aqW+ws+KsDNyhZFkE=; b=GQUTWHqY12RQjpkYwrjaEM+OVX
	zqO4n94HNsLu4br0nBsJkMs/LDYA8IaPdGZQbHNzLwEY3YUyUvdwwCuAjXUSOCax/j081dLpB5xZ3
	rkuOuIPkAk+nyjEBkKABj0BWiesKQbSUqYwVq2VQY7oX0jqK60eeuKmk+fRka0tk4tMYQENrfhZWz
	b+/jL4dhMylzJNdxJtiv4CRFhHK1psSdBObX39+uXV37RukNzZ781PiiEzreuTbwNkoESa+biimVt
	NBKASrOIiBZ3lFbaffzKyrOB4iUFTdIApUvHjimVo2RgDE98b0lHDcfu4PrYPN2Xmyq7SJ09kdZLQ
	DuPGqB6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSHuM-00GqGe-05;
	Tue, 23 Jan 2024 14:37:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSHuI-00GqG0-2U
	for barebox@lists.infradead.org;
	Tue, 23 Jan 2024 14:37:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rSHuC-0006Ge-Al; Tue, 23 Jan 2024 15:37:36 +0100
Message-ID: <b0ec7073-9ba0-4d57-be27-1e63ceb0fb55@pengutronix.de>
Date: Tue, 23 Jan 2024 15:37:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Bastian Krause <bst@pengutronix.de>, barebox@lists.infradead.org
References: <20240123131433.3825978-1-bst@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240123131433.3825978-1-bst@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_063742_810903_BC821FC9 
X-CRM114-Status: GOOD (  17.56  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] Documentation: usb: document bbu fastboot partition name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Bastian,


On 23.01.24 14:14, Bastian Krause wrote:
> After looking this up the nth time in the code base, it's really time to
> document this.
> 
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
>  Documentation/user/usb.rst | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
> index 95d6dd7e363..92fe1234645 100644
> --- a/Documentation/user/usb.rst
> +++ b/Documentation/user/usb.rst
> @@ -168,7 +168,8 @@ The Fastboot gadget supports the following commands:
>  ``fastboot flash`` additionally supports image types UBI and Barebox. For UBI
>  Images and a MTD device as target, ubiformat is called. For a Barebox image
>  with an available barebox update handler for the fastboot exported device, the
> -barebox_update is called.
> +barebox_update is called (exported as ``bbu-<update_handler_name>`` fastboot
> +partition).

You can list all exported partitions with


  fastboot devices -l

Maybe include that in your patch too? (Don't give a man a fish...)

Cheers,
Ahmad

>  
>  The barebox Fastboot gadget supports the following non standard extensions:
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



