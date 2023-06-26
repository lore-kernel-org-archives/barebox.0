Delivery-date: Mon, 26 Jun 2023 12:02:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qDj3W-004KqX-TU
	for lore@lore.pengutronix.de; Mon, 26 Jun 2023 12:02:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qDj3U-0007WS-C3
	for lore@pengutronix.de; Mon, 26 Jun 2023 12:02:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J3u2hXp/4fR8Dd3Fo3UeP5YkGlZqhsDcbccR74/+LnE=; b=CyEaDkHQi8d4nQB+oYX4MZEdJq
	y3dQi6a0PFLp46PRuAqpGLK1vVKkUXbfIVmx8rUCiCo/hmIXopwyQVraVc52qDlGqpisGOIPzqsyq
	JiMQUp4H7S7LjuzqZx9x22UIGrSVkIaqqH3VoL+D/jhdvWu80UCaj+vWVEQF+ZEcEa9jiXdW4SWCq
	726ZwIiQpY8L98w93GvBEWgTqnojT92UvLoPZzRLShxKEV0TSih/c3RPwNttOeQ5f/XytYDF890g+
	RAJLYiqMpbQj4F8Ss2lT0wS/1yYBfTu4sPqZGXTwTe71tSdf/5NvFghUJVgFK+ihjrhN7p4ezcWlP
	d3eZ767g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDj2V-009nUv-0P;
	Mon, 26 Jun 2023 10:01:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDj2S-009nUE-1Q
	for barebox@lists.infradead.org;
	Mon, 26 Jun 2023 10:01:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qDj2R-0007Cf-5g; Mon, 26 Jun 2023 12:01:39 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qDj2Q-0004g2-UF; Mon, 26 Jun 2023 12:01:38 +0200
Date: Mon, 26 Jun 2023 12:01:38 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230626100138.GX18491@pengutronix.de>
References: <20230619143742.1698346-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230619143742.1698346-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230626_030140_474762_90CB8641 
X-CRM114-Status: GOOD (  20.94  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH RFT] blspec: support boot /dev/disk0.rootfs to mean boot
 disk0.rootfs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 19, 2023 at 04:37:42PM +0200, Ahmad Fatoum wrote:
> boot /dev/disk0.rootfs would always fail:
> 
>   Nothing bootable found on '/dev/disk0.rootfs'
>   Nothing bootable found
> 
> boot /mnt/disk0.rootfs and boot disk0.rootfs would however work.
> This can be surprising to users, so just skip over /dev if supplied.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> I am not sure why this wasn't the case before. Any ambiguity in doing it
> this way? Change still needs to be tested.
> ---
>  common/blspec.c | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/common/blspec.c b/common/blspec.c
> index 8c7970da8915..b70332a54c28 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -782,6 +782,9 @@ int blspec_scan_devicename(struct bootentries *bootentries, const char *devname)
>  
>  	pr_debug("%s: %s\n", __func__, devname);
>  
> +	/* Support both boot /dev/disk0.rootfs and boot disk0.rootfs */
> +	devname += str_has_prefix(devname, "/dev/");
> +
>  	device_detect_by_name(devname);
>  
>  	cdev = cdev_by_name(devname);
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


