Delivery-date: Tue, 30 Apr 2024 07:46:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1gKC-009a8p-1q
	for lore@lore.pengutronix.de;
	Tue, 30 Apr 2024 07:46:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1gKB-0007dl-TW
	for lore@pengutronix.de; Tue, 30 Apr 2024 07:46:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xToPrDXJamg4DS3Zt8hehch/AYlx06dkiRrpNDYcDQQ=; b=25eU8SXxAAwGkXE226NKe0u59a
	qlYZQGSZ2roUi+Jpt+7GksehS3h3UEcxTP2UAl/f9aV7tNtbS6dwM2SmNNp1wm/j6aBW/bJ4x+z3c
	A0CUa0ECuSwCVFSFH8MWcNjMFOgHAOzBWo0kkQzDJ+W8POcA9XAxprMZYjfIDdiUHvkD1SxFd5TMf
	kqsPD8y1CeWG84x0Qeb/p+EfTkLtfljRXusI8wMLZ8AYRFeHJkttLRcDYU9O519GrE0DbbOib3nbK
	nm6JuHDr+k1X+mbDZlxVMouskjSJ3q8Od2cW8BnBb2C5G+bO4bRM19G5wv0ryfzpMlSC09xkvI4ZS
	EfUcUzPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1gJn-00000005BCL-0ijv;
	Tue, 30 Apr 2024 05:46:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1gJj-00000005BBo-48AP
	for barebox@lists.infradead.org;
	Tue, 30 Apr 2024 05:46:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1s1gJh-0007Wu-8S; Tue, 30 Apr 2024 07:46:13 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1s1gJg-00F6p1-PH; Tue, 30 Apr 2024 07:46:12 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1s1gJg-0046qJ-2F;
	Tue, 30 Apr 2024 07:46:12 +0200
Date: Tue, 30 Apr 2024 07:46:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Cc: barebox@lists.infradead.org,
	Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <ZjCFpHc3NFq7Lx2V@pengutronix.de>
References: <20240423173531.518304-2-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240423173531.518304-2-uwe@kleine-koenig.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240429_224616_053596_5A640555 
X-CRM114-Status: GOOD (  30.04  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mtd: nand-imx: Improve comment about vendor BBM and
 address verschwurbelung
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Apr 23, 2024 at 07:35:32PM +0200, Uwe Kleine-König wrote:
> From: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> 
> To better describe why the BBM is at offset 2000 describe the full
> misinterpretation^Wmapping of the NAND memory that the i.MX hardware
> implements.
> 
> Also adapt the comment to reality: A BBT is created automatically since
> commit 2ad441bb7e78 ("mtd: nand-imx: Create BBT automatically when
> necessary") which was included in v2020.03.0.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/mtd/nand/nand_imx.c | 30 +++++++++++++++++++++---------
>  1 file changed, 21 insertions(+), 9 deletions(-)

As the driver has been abandoned in favour for the Kernel driver I can't
apply this one.

Sascha

> 
> diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
> index 23b9c52e0f76..77655daa4efe 100644
> --- a/drivers/mtd/nand/nand_imx.c
> +++ b/drivers/mtd/nand/nand_imx.c
> @@ -1139,20 +1139,32 @@ static int __init mxcnd_probe_dt(struct imx_nand_host *host)
>   * 512b data + 16b OOB +
>   * 512b data + 16b OOB
>   *
> + * So the mapping between original NAND addressing (as intended by the chip
> + * vendor) and interpretation when accessed via the i.MX NAND controller is as
> + * follows:
> + *
> + *       original       |        i.MX
> + * ---------------------+---------------------
> + * data 0x0000 - 0x0200 | data 0x0000 - 0x0200
> + * data 0x0200 - 0x0210 | oob  0x0000 - 0x0010
> + * data 0x0210 - 0x0410 | data 0x0200 - 0x0400
> + * data 0x0410 - 0x0420 | oob  0x0010 - 0x0020
> + * data 0x0420 - 0x0620 | data 0x0400 - 0x0600
> + * data 0x0620 - 0x0630 | oob  0x0020 - 0x0030
> + * data 0x0630 - 0x0800 | data 0x0600 - 0x07d0
> + * oob  0x0000 - 0x0030 | data 0x07d0 - 0x0800
> + * oob  0x0030 - 0x0040 | oob  0x0030 - 0x0040
> + *
>   * This means that the factory provided bad block marker ends up
> - * in the page data at offset 2000 instead of in the OOB data.
> + * in the page data at offset 2000 = 0x7d0 instead of in the OOB data.
>   *
> - * To preserve the factory bad block information we take the following
> - * strategy:
> - *
> - * - If the NAND driver detects that no flash BBT is present on 2k NAND
> - *   chips it will not create one because it would do so based on the wrong
> - *   BBM position
> - * - This command is used to create a flash BBT then.
> + * If the NAND driver detects that no flash BBT is present on a 2k NAND
> + * chip it will create one automatically in the assumption that the NAND is
> + * pristine (that is completely erased with only vendor BBMs in the OOB) to
> + * preserve factory bad block information.
>   *
>   * From this point on we can forget about the BBMs and rely completely
>   * on the flash BBT.
> - *
>   */
>  static int checkbad(struct nand_chip *chip, loff_t ofs)
>  {
> 
> base-commit: f40319c8e157c90117d32aed1dae5549a723c63e
> -- 
> 2.43.0
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


