Delivery-date: Mon, 01 Nov 2021 11:30:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhUZy-00017Y-Dc
	for lore@lore.pengutronix.de; Mon, 01 Nov 2021 11:30:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhUZx-0008H6-Fp
	for lore@pengutronix.de; Mon, 01 Nov 2021 11:30:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CkvdHNmgb8EQNwbn/qOUChlTfPKOkyDwpCYBLxZiEWY=; b=h0NemCEePW/DSr8ncjZvsubSRp
	vtcOGcBilFJfqcbaSfHTV4oILISyo1bcMdwX2lESizOLLjqSHSh/cuKLSpqxKS0XeTJEIPLZAFT3k
	992llOef7RboPw0SeSh09qD5X88H0/yo9zzMBrLzT0nLklOymjpPvPgpVyejxDfd4iDW+EvJozN2o
	r3hqvnRZCDiv8oBOziaGfNJ8KBY5XNz7uTTAdQadZBYBadNokCRPDe8ATT0PDGuYpbljVyJ9G9Xbl
	MzVBfxY5ooUA9OpMc3AX7dPa27cdsUet3uC0Bd17kHbFSfJz8Pnuti4HFodQaOzFBlEH8wIpPMpRM
	KmaL6dyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhUYl-00Fwmn-1s; Mon, 01 Nov 2021 10:28:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhUYg-00Fwlz-3N
 for barebox@lists.infradead.org; Mon, 01 Nov 2021 10:28:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mhUYe-00086g-TK; Mon, 01 Nov 2021 11:28:52 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mhUYe-0006Lb-Ka; Mon, 01 Nov 2021 11:28:52 +0100
Date: Mon, 1 Nov 2021 11:28:52 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211101102852.GT25698@pengutronix.de>
References: <20211030175446.2274194-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211030175446.2274194-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:28:44 up 256 days, 13:52, 136 users,  load average: 0.17, 0.17,
 0.22
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211101_032854_167090_2AFB41A9 
X-CRM114-Status: GOOD (  26.01  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] misc: acpi-test: bump down debug message on remove
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Oct 30, 2021 at 07:54:43PM +0200, Ahmad Fatoum wrote:
> The ACPI test driver is meant to serve as template for adding more
> useful drivers. Printing a message in remove isn't a pattern that should
> be copied, so bump the level down.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/misc/acpi-test.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/misc/acpi-test.c b/drivers/misc/acpi-test.c
> index 1d6814ebcf27..784c80cc5b8b 100644
> --- a/drivers/misc/acpi-test.c
> +++ b/drivers/misc/acpi-test.c
> @@ -47,7 +47,7 @@ static int acpi_test_probe(struct device_d *dev)
>  
>  static void acpi_test_remove(struct device_d *dev)
>  {
> -	dev_info(dev, "FADT driver removed\n");
> +	dev_dbg(dev, "FADT driver removed\n");
>  }
>  
>  static struct acpi_driver acpi_test_driver = {
> -- 
> 2.30.2
> 
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

