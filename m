Delivery-date: Thu, 29 Feb 2024 08:42:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfb45-00F0Av-38
	for lore@lore.pengutronix.de;
	Thu, 29 Feb 2024 08:42:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfb45-0001oB-AH
	for lore@pengutronix.de; Thu, 29 Feb 2024 08:42:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kd8fQuurAZE5oLqCBpckwrB6SRILrZlm+T1KHAICWfk=; b=pCNCvPVdUcVBg1v4suplE00Gv3
	jvWEXuw+5qxtM3lLt3c+W/OGvixi0hKbZ7k6pObnPDGonhr4lnZEMpzvQIOwbCq4LNDIFq1EOq9U2
	PcYPy5vSNA4hoA4LPBwJj8Vl2w91rP80VxCBbxNPbT3TiwOu/JuL85soKmHnGWMxDaEDl8GQuwlnK
	a8JId1s3yiGYLtx5KPnuHPPjPC+YBr1XjjrQAWubzx9lhUwMWKwjEiN3izuULKHBL4kuRL2F6UYh4
	MgORNqgRzkvWMC1ja16X+6NjY4c8/cWoNhlskZ5D1qOyMbcmBGhHiAz9oBWHUy0uaaKu0pRyVOim+
	vmQTOcjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfb3M-0000000CWe3-2jZp;
	Thu, 29 Feb 2024 07:42:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfb3J-0000000CWcx-3Eat
	for barebox@lists.infradead.org;
	Thu, 29 Feb 2024 07:42:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rfb3I-0001hH-GT; Thu, 29 Feb 2024 08:42:00 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rfb3I-003Xqh-3j; Thu, 29 Feb 2024 08:42:00 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rfb3I-00DVIp-05;
	Thu, 29 Feb 2024 08:42:00 +0100
Date: Thu, 29 Feb 2024 08:42:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZeA1SB9HodGkk5HO@pengutronix.de>
References: <20240228160304.1588645-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240228160304.1588645-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_234201_840939_F77B845A 
X-CRM114-Status: GOOD (  27.49  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] mtd: don't try to detect UBI in too small flash
 partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On Wed, Feb 28, 2024 at 05:03:04PM +0100, Ahmad Fatoum wrote:
> The detect callback will try to detect an UBI volume inside a partition.
> If that partition happens to be smaller than 512 bytes, detect will fail
> with -EINVAL.

This 512 bytes here is confusing. You are referring to the eraseblock
size which is usually much bigger than 512 bytes.

> 
> Avoid this confusing error by early exiting in this case.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mtd/core.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
> index 97a7996cf68e..34f919b96ea4 100644
> --- a/drivers/mtd/core.c
> +++ b/drivers/mtd/core.c
> @@ -599,6 +599,10 @@ static int mtd_detect(struct device *dev)
>  	enum filetype filetype;
>  	int npebs = mtd_div_by_eb(mtd->size, mtd);
>  
> +	/* No point in looking for UBI on a partition that's smaller than an erase block */
> +	if (!npebs)
> +		return 0;

When this triggers your partitioning is wrong. Partitions should always
align to eraseblock boundaries. While it is possible to have not
eraseblock aligned partitions, you'll be unable to write on these
partitions as you would always erase parts of the neighbour partition.

However, there's a minimal number of eraseblocks that a device must have
to be usable with UBI, see http://www.linux-mtd.infradead.org/doc/ubi.html#L_overhead
So instead of !npebs you can test for npebs < 5.

> +
>  	npebs = max(npebs, 64);

Not your patches fault, but as I just see it: This is wrong. It should
be min(), not max(). The goal of this is to check the first 64
eraseblocks, but not more pebs the device actually has.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


