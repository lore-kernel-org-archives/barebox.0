Delivery-date: Thu, 08 Dec 2022 15:14:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3Hf5-00Eq32-TI
	for lore@lore.pengutronix.de; Thu, 08 Dec 2022 15:14:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3Hf5-0006cd-8k
	for lore@pengutronix.de; Thu, 08 Dec 2022 15:14:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qrNi8ao2IEqnrROdrwKJyFyyC3CAvoUTG8Pj6FxC5fE=; b=1YDurcOeiz62eQ0mEMtPvzr02Q
	lv+X09bRNllBP7No8MqvnZUIqjoZQNhE3P1Ugnq58iK2OxseV7qW1rkz0xNuuSW+z1GgEI1ZUjdrD
	XIsdpP25UEHVA3WvRnXJNgCFrauhrq5v+z/6rzJcpjXsOZTVPMc3mFRq55et7g6ZcidWeivx0He6r
	5asHJ1wY552iICjDXs+Rae7D3AeSm1zlqUQJrYdWwyaYtXnwVY07S9j3HWP83v6nLFMN61UmKYaO3
	0B7OYY7LSKRTQOiJcgFJpRNZi3YnHOk0HFcATyhVEdjoIOTIygpfr18IVKVdqz1ovIlicOf+NX4KE
	C7Z6hY8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3HdV-001eSO-2j; Thu, 08 Dec 2022 14:12:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3HdP-001e5h-4R
	for barebox@lists.infradead.org; Thu, 08 Dec 2022 14:12:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=irc.pengutronix.de)
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1p3Hd8-0006WW-FW; Thu, 08 Dec 2022 15:12:06 +0100
Message-ID: <53712712eb694f6be6a09746eb569a78f38b8ae5.camel@pengutronix.de>
From: Johannes Zink <j.zink@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List
	 <barebox@lists.infradead.org>
Cc: Johannes Zink <jzi@pengutronix.de>
Date: Thu, 08 Dec 2022 15:12:04 +0100
In-Reply-To: <20221123114245.3258194-1-s.hauer@pengutronix.de>
References: <20221123114245.3258194-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221208_061223_193280_CB5B2D79 
X-CRM114-Status: GOOD (  18.79  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] mtd: peb: return success for reading/writing 0 bytes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, 2022-11-23 at 12:42 +0100, Sascha Hauer wrote:
> Return successfully when mtd_peb_read() or mtd_peb_write() is passed
> a
> zero length so that the callers do not have to handle this case.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Tested-by: Johannes Zink <j.zink@pengutronix.de> (i.MX7 with ubi on
NAND Flash)

> ---
>  drivers/mtd/peb.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mtd/peb.c b/drivers/mtd/peb.c
> index 8443ed86bc..a17d42885e 100644
> --- a/drivers/mtd/peb.c
> +++ b/drivers/mtd/peb.c
> @@ -205,10 +205,12 @@ int mtd_peb_read(struct mtd_info *mtd, void
> *buf, int pnum, int offset,
>                 return -EINVAL;
>         if (offset < 0 || offset + len > mtd->erasesize)
>                 return -EINVAL;
> -       if (len <= 0)
> +       if (len < 0)
>                 return -EINVAL;
>         if (mtd_peb_is_bad(mtd, pnum))
>                 return -EINVAL;
> +       if (!len)
> +               return 0;
>  
>         /* Deliberately corrupt the buffer */
>         *((uint8_t *)buf) ^= 0xFF;
> @@ -388,12 +390,14 @@ int mtd_peb_write(struct mtd_info *mtd, const
> void *buf, int pnum, int offset,
>                 return -EINVAL;
>         if (offset < 0 || offset + len > mtd->erasesize)
>                 return -EINVAL;
> -       if (len <= 0)
> +       if (len < 0)
>                 return -EINVAL;
>         if (len % (mtd->writesize >> mtd->subpage_sft))
>                 return -EINVAL;
>         if (mtd_peb_is_bad(mtd, pnum))
>                 return -EINVAL;
> +       if (!len)
> +               return 0;
>  
>         if (mtd_peb_emulate_write_failure()) {
>                 dev_err(&mtd->dev, "Cannot write %d bytes to PEB
> %d:%d (emulated)\n",

-- 
Pengutronix e.K.                | Johannes Zink                  |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |



