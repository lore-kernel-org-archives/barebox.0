Delivery-date: Thu, 27 Oct 2022 11:04:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onyo8-003uhg-DF
	for lore@lore.pengutronix.de; Thu, 27 Oct 2022 11:04:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onyo6-0004jp-SX
	for lore@pengutronix.de; Thu, 27 Oct 2022 11:04:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RaQLX105tuEyKw7UKcvTm+2U/GTfydbCNMDkLAYPb2I=; b=of0LdCUsAUhrmo0r0EEJge5EEc
	iy9QcomDkpySwmyVJQBX8au/mABqehu1/LPFiB5RWujrrl/e+xPHik99W2cnv16g6jJi8HZWo2YWV
	tbgjnUIIuwZ9gATs2s6nT00fWBZ2wNe/nneeuqfSHA6pzy3bT3eu9G1tQPxLO1qTR+Rs35WXcvVaN
	1ZVvU8TKML9E3awQMCLtX17FeA+7bRhsJljAtpXjjrwF9kIRLbz9WFta/exUUB3EQR45IfLx9jet9
	VaAheK8qnj7E4G0taH2OuXTp+aCvctPYSnFJbuFlD7Bl4v2qjrov26zQC0E56cveduooTJ0filND7
	xJp1+cdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onymc-00CWZc-A5; Thu, 27 Oct 2022 09:02:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onymS-00CWWq-E6
	for barebox@lists.infradead.org; Thu, 27 Oct 2022 09:02:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1onymQ-0004Tn-IJ; Thu, 27 Oct 2022 11:02:26 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1onymP-0001AZ-4q; Thu, 27 Oct 2022 11:02:25 +0200
Date: Thu, 27 Oct 2022 11:02:25 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20221027090225.GV6702@pengutronix.de>
References: <20221019091122.1713784-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221019091122.1713784-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_020228_516065_42A9DF79 
X-CRM114-Status: GOOD (  21.20  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] documentation: devicetree: mtd: partition: fix partuuid
 example
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Oct 19, 2022 at 11:11:22AM +0200, Ahmad Fatoum wrote:
> Having flash@0 in the binding example is misleading, because lookup is
> global. Point that out explicitly and modify the example.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  Documentation/devicetree/bindings/mtd/partition.rst | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/devicetree/bindings/mtd/partition.rst b/Documentation/devicetree/bindings/mtd/partition.rst
> index 6db54070a991..627b59eda04b 100644
> --- a/Documentation/devicetree/bindings/mtd/partition.rst
> +++ b/Documentation/devicetree/bindings/mtd/partition.rst
> @@ -4,7 +4,7 @@ Representing flash partitions in devicetree
>  In addition to the upstream binding, another property is added:
>  
>  Optional properties:
> -- ``partuuid`` : The partition UUID for this partition.
> +- ``partuuid`` : The global partition UUID for this partition.
>  
>  Additionally, barebox also supports partitioning the eMMC boot partitions if
>  the partition table node is named appropriately:
> @@ -16,7 +16,7 @@ Examples:
>  
>  .. code-block:: none
>  
> -  flash@0 {
> +  / {
>    	partitions {
>    		compatible = "fixed-partitions";
>    		#address-cells = <1>;
> -- 
> 2.34.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


