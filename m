Delivery-date: Mon, 07 Feb 2022 10:55:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH0kY-008910-Eq
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 10:55:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH0kW-0004h1-NT
	for lore@pengutronix.de; Mon, 07 Feb 2022 10:55:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5FtCgT9obGbfjWOQpLKxSJamcTFIk4TCiqjsDrk3fhw=; b=DrhY5QKwzJ77Q8
	YrdTICG8UERKuwpZailylh01dbziTFZP+ZN0VMY0d6U2T+QcGF4nwodKVXteqPA3ur0dC7v91YxFi
	aMtvbbnbNfVlEAdUFs/1FOed8MC+Fr21S/1fOcTv9g3y98pm3i8sSHgzt17KNYscxCxjwu9ESsQHo
	3HMwHB4zvd8mMNU0mgZfOpdfnrMmd4SgRWZrE3w8D2XbZ0rb3dLvYqu1/iP4AXV2+pPmMcXYjaHXI
	8TaRZu2TQtowphzwJ3MBb4PELLHSqQlSldjYE9O9gQ9EDfcLQZZC2ip/l6hcvGd+6gkWP9uJZSyXZ
	HAtlQMdarkHTYKN/g6Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH0jK-009g9T-1S; Mon, 07 Feb 2022 09:54:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH0gq-009ezb-ID
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 09:52:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nH0gp-0003aQ-9z; Mon, 07 Feb 2022 10:52:07 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nH0gp-0007D1-0f; Mon, 07 Feb 2022 10:52:07 +0100
Date: Mon, 7 Feb 2022 10:52:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Cc: Michael Olbrich <mol@pengutronix.de>
Message-ID: <20220207095206.GH18637@pengutronix.de>
References: <20220207094953.949868-1-s.hauer@pengutronix.de>
 <20220207094953.949868-8-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220207094953.949868-8-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:50:57 up 58 days, 18:36, 81 users,  load average: 0.09, 0.22, 0.39
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_015208_647011_DCBD23B6 
X-CRM114-Status: GOOD (  35.09  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 8/8] misc: Add storage-by-uuid driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Feb 07, 2022 at 10:49:53AM +0100, Sascha Hauer wrote:
> This adds a driver which matches to a "barebox,storage-by-uuid"
> compatible node. The driver looks for a storage device matching the
> given UUID and when found registers a new cdev for the device.
> 
> This driver solved a very specific problem. On EFI the storage devices
> are not connected to any device tree node. barebox-state however expects
> a node to use as its backend. The obvious solution would be to create
> a partition with a specific partuuid and use that for state, in our
> special usecase though the storage device is partitioned with a MBR
> which doesn't have any space left to create a new partition. As this
> driver parses the of partition binding we can use that to create
> a partition in an unallocated are of the disk which is then used for
> state.
> 
> This driver has the problem that it depends on storage devices which
> are not described in the device tree. This means it cannot work with
> deep probe. This is not a problem on EFI though. It's a special purpose
> driver, it's not recommended for general use.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/misc/Kconfig           |  23 ++++
>  drivers/misc/Makefile          |   1 +
>  drivers/misc/storage-by-uuid.c | 199 +++++++++++++++++++++++++++++++++
>  3 files changed, 223 insertions(+)
>  create mode 100644 drivers/misc/storage-by-uuid.c
> 
> diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
> index 5ab0506cd9..78c9c193d8 100644
> --- a/drivers/misc/Kconfig
> +++ b/drivers/misc/Kconfig
> @@ -47,4 +47,27 @@ config STARFIVE_PWRSEQ
>  	  be accessed over /dev/mem or used from kernels which still depend
>  	  on bootloader for initialization.
>  
> +static struct of_device_id storage_by_uuid_dt_ids[] = {
> +	{
> +		.compatible = "barebox,storage-by-uuid",
> +	}, {

NAK. Don't add new device tree bindings without adding documentation to
Documentation/devicetree/bindings/ :(

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

