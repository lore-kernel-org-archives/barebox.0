Delivery-date: Tue, 11 Apr 2023 15:15:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmDqf-00HYnY-Tu
	for lore@lore.pengutronix.de; Tue, 11 Apr 2023 15:15:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmDqf-0006yz-R6
	for lore@pengutronix.de; Tue, 11 Apr 2023 15:15:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ceJlX16UGdvylC7g5XZ+CbBRin96fBho0RPZ/UDQfyo=; b=2rJYJnLlIKh/pYrLvK6jEYuDZO
	eRmsf4ym2kYRfhAPLgronidY1p5K1xiMd95s9WLh8gOExHnbcsNuc8msTlnZfr9ufDa3y4fgh9/md
	3BEoh9pGEUOb6IwIYtCSQhPwT+IugOJPCmREUgICIer8QjNXu1hpbAe+OZb305d9e6mOuVqpqoaU6
	8CaYri3NVkQJBBLAlqVkItJhLgqo0Xt+MT+Js+9XA0UJXvvehYeq4Fg+kmgeHgfzTmVFa4G4GNb+B
	7ba1C8WPzu5Zb/077KxnGYwXiQgzJX4mZ06BLeqETLBKgLcyeaZmY3XzwvxLla+5o4IkS7vOpo1DG
	5GauIghA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDpc-0005IN-2w;
	Tue, 11 Apr 2023 13:14:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDpZ-0005HM-0F
	for barebox@lists.infradead.org;
	Tue, 11 Apr 2023 13:14:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pmDpX-0006bB-QW; Tue, 11 Apr 2023 15:14:39 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pmDpX-0002hS-Ix; Tue, 11 Apr 2023 15:14:39 +0200
Date: Tue, 11 Apr 2023 15:14:39 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230411131439.GQ19113@pengutronix.de>
References: <20230327131218.247157-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230327131218.247157-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_061441_109951_6287ECDD 
X-CRM114-Status: GOOD (  22.79  )
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
Subject: Re: [PATCH] Documentation: barebox environment: recommend a
 partition type GUID for GPT partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 27, 2023 at 03:12:18PM +0200, Marco Felsch wrote:
> The partition type GUID was generated randomly. Having a defined GUID
> should reduce the risk of collisions in the future.
> 
> The GUID and a phandle reference to the storage medium could be used as
> replacement for device-path if the medium supports GPT.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  .../devicetree/bindings/barebox/barebox,environment.rst        | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/devicetree/bindings/barebox/barebox,environment.rst b/Documentation/devicetree/bindings/barebox/barebox,environment.rst
> index 8a57bf1add..40239f424a 100644
> --- a/Documentation/devicetree/bindings/barebox/barebox,environment.rst
> +++ b/Documentation/devicetree/bindings/barebox/barebox,environment.rst
> @@ -23,6 +23,9 @@ the path to the environment. Supported values for <type>:
>    be the label for MTD partitions, the number for DOS
>    partitions (beginning with 0) or the name for GPT partitions.
>  
> +If the *environmnet* is located in a GPT partition, use
> +``6C3737F2-07F8-45D1-AD45-15D260AAB24D`` as partition type GUID.
> +
>  The file-path is the name of a file located in a FAT filesystem on the
>  device named in device-path.  This filesystem will be mounted and the
>  environment loaded from the file's location in the directory tree.
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


