Delivery-date: Mon, 01 Mar 2021 16:58:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGkw3-0004x8-UP
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 16:58:15 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGkw2-0000wr-RH
	for lore@pengutronix.de; Mon, 01 Mar 2021 16:58:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n3JhSN/AyPF4A/D/dGwcRk72ZM1ex0dhyAGUGifTp/0=; b=d9725VaJVXG0Yir/SS0s/pWZIc
	L8o/SFTnkaVObp0nSAB4S2v4pX0U12gu0uIrpaWEKNyoaIteri+uvLZLuhbNlFyCNo8G0zZSTalJa
	QOlR86ddlA7cVZQhus39nkrlFxyaMU+PjzS6KeqpkUcj1JXzuCCoaneZ2dlR/VNlBJqQ+zYuiMXgA
	gVYcBuisHxnRpmz5wHn0SZvoWlx1NjdxY2l1ecY0eMvcX4XQgmhp688vpjEciBB7/j/X0ICbLD8I6
	PpFyThYsfOcIcPTFMLIcDe8kr5+J+0LHMmK3NucTiIbq/CFDezryjJCyuqaVgfZ0NvpePAejZItXn
	QS2BRWgg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGkv6-0006qF-Cu; Mon, 01 Mar 2021 15:57:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGkv2-0006pl-0N
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 15:57:14 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lGkv0-0000r9-Je; Mon, 01 Mar 2021 16:57:10 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20210301110743.12812-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <1408bdfc-55f9-ed69-5cb2-2d839668f8a6@pengutronix.de>
Date: Mon, 1 Mar 2021 16:57:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210301110743.12812-1-a.fatoum@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_105712_072310_45E9A544 
X-CRM114-Status: GOOD (  24.59  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: storage: increase init retry count to support
 lengthy HDD spin up
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 01.03.21 12:07, Ahmad Fatoum wrote:
> Some USB disks take notoriously long to spin up. They are seen by a bus
> scan, but they report ready only after a few seconds have passed. This
> is not a problem if vbus is enabled early on, so devices have had a
> chance to spin up. If vbus is first enabled as part of the usb scan,
> not enough time might have passed for the USB disk to be usable.
> 
> This issue was observed on an i.MX6QP with following topology:
> 
>   usb: USB: scanning bus for devices...
>   usb: 5 USB Device(s) found
>     1 ID 0000:0000
>     |  u-boot EHCI Host Controller
>     |
>     +-2 ID 0424:2517
>     |
>     +-5 ID 1058:2621
>     |    Western Digital Elements 2621
>     ...
> 
> Unplugging and replugging the USB disk and doing a second usb scan
> made the unit ready test succeed. By increasing the retry count
> during initialization, this workaround is no longer necessary.

Please dismiss for now. This doesn't always work, even for my HDD.



> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/usb/storage/usb.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
> index b417640186a2..7b0aecd757b0 100644
> --- a/drivers/usb/storage/usb.c
> +++ b/drivers/usb/storage/usb.c
> @@ -141,7 +141,7 @@ exit:
>  	return ret;
>  }
>  
> -static int usb_stor_test_unit_ready(struct us_blk_dev *usb_blkdev)
> +static int usb_stor_test_unit_ready(struct us_blk_dev *usb_blkdev, int retries)
>  {
>  	u8 cmd[6];
>  	int ret;
> @@ -150,7 +150,7 @@ static int usb_stor_test_unit_ready(struct us_blk_dev *usb_blkdev)
>  	cmd[0] = SCSI_TST_U_RDY;
>  
>  	ret = usb_stor_transport(usb_blkdev, cmd, sizeof(cmd), NULL, 0,
> -				 10, 100);
> +				 retries, 100);
>  	if (ret < 0)
>  		return -ENODEV;
>  
> @@ -282,7 +282,7 @@ static int usb_stor_blk_io(struct block_device *disk_dev,
>  
>  	/* ensure unit ready */
>  	dev_dbg(dev, "Testing for unit ready\n");
> -	if (usb_stor_test_unit_ready(pblk_dev)) {
> +	if (usb_stor_test_unit_ready(pblk_dev, 10)) {
>  		dev_dbg(dev, "Device NOT ready\n");
>  		return -EIO;
>  	}
> @@ -365,7 +365,8 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
>  	/* ensure unit ready */
>  	dev_dbg(dev, "Testing for unit ready\n");
>  
> -	result = usb_stor_test_unit_ready(pblk_dev);
> +	/* retry a bit longer than usual as some HDDs take longer to spin up */
> +	result = usb_stor_test_unit_ready(pblk_dev, 60);
>  	if (result) {
>  		dev_dbg(dev, "Device NOT ready\n");
>  		return result;
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

