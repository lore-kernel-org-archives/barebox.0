Delivery-date: Mon, 27 May 2024 14:30:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBZUH-000gAl-1B
	for lore@lore.pengutronix.de;
	Mon, 27 May 2024 14:30:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBZUG-0003GV-PE
	for lore@pengutronix.de; Mon, 27 May 2024 14:30:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:
	Subject:Cc:To:From:Message-Id:Date:Content-Type:Content-Transfer-Encoding:
	Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5GfUaSU8UvBER1SOLH8jk55URirweNdzj3J/vwUkTSk=; b=X3PrKETr3VBgRd2GVDDT3MBMoy
	LUCO+sYeY6f6yDgRhuS2cf0b/QSAUohctkO3tgp/XZ2rMvZEt4+P7S7XLK9O59eYthC+zkb5XW0jI
	yZLRIGF/hW+ii0COizua3hQGr0yUlgtj22moFDrOmvG5qUU7KFs9FI3FV82Gu9Ij1DXK1AA0E1pye
	dPHTg9OddwBNPPJ+HK04qMEGqGnZw8shW49irusTnl4RplowgY0c5HedaFDeAYfvbmiG0Q2Jh+quj
	7zldMecyFDT4kt1RTd5q060KwINiQvDB1d+T+V90kJbUW/1XzvOuCIr4WCUf3L4FeOIdvm5YZkKH9
	oddNbPuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBZTs-0000000EswO-45YP;
	Mon, 27 May 2024 12:29:36 +0000
Received: from xvm-107-148.dc0.ghst.net ([46.226.107.148] helo=zdiv.net)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBZTp-0000000Esu6-0o8Z
	for barebox@lists.infradead.org;
	Mon, 27 May 2024 12:29:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=23;
	t=1716812971;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5GfUaSU8UvBER1SOLH8jk55URirweNdzj3J/vwUkTSk=;
	b=H8J706pJhURn5NglgKb+baFbQ8XfVG1hhwbySK7zKBJHaUjDlX0w7uM5bl5zHE7Wi92PAt
	5iLEiUqf/ba2ITV+HHt4+nqPvkk7J6csz8RCvCIC1alG0ALmRxlXbzAlXmU7OM2zI/+iiR
	Bt+WeV7h4k5QN1g5EW78We18X+/hVMvJITGb5Fg3ewo6zaYFQvOi5POSzhSRNlq9pqZBIm
	sDqXl3Fx0bjXD4YZHzqjAn34ML7aOM8gNGdGfr+97H0VL7A19l2/QJqMfl+krteL17683V
	8SLCJo6f/xp/akBHF9iO00RxQrz2dwV7/1pgk8NOJs33ExIEkWHeHjb7oEPTwg==
Received: from localhost (91-160-75-97.subs.proxad.net [91.160.75.97])
	by zdiv.net (OpenSMTPD) with ESMTPSA id d42ee0a0 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Mon, 27 May 2024 12:29:31 +0000 (UTC)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 27 May 2024 14:29:31 +0200
Message-Id: <D1KFEMZH7ULX.4F80HL9UHOC8@zdiv.net>
From: "Jules Maselbas" <jmaselbas@zdiv.net>
To: "Sascha Hauer" <s.hauer@pengutronix.de>, "Barebox List"
 <barebox@lists.infradead.org>
Cc: "jianqiang wang" <wjq.sec@gmail.com>
X-Mailer: aerc 0.17.0
References: <20240527102723.3504270-1-s.hauer@pengutronix.de>
 <20240527102723.3504270-5-s.hauer@pengutronix.de>
In-Reply-To: <20240527102723.3504270-5-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_052933_518830_2CB4E338 
X-CRM114-Status: GOOD (  14.40  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 4/7] net: liteeth: do not read past the receive
 buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

a bit unrelated, also a nitpick:

On Mon May 27, 2024 at 12:27 PM CEST, Sascha Hauer wrote:
> The driver already discards packets bigger than 2048 bytes, but that is
> already larger than the buffer we read the data into. Limit packet size
> to PKTSIZE instead which matches our receive buffer size.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/net/liteeth.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/liteeth.c b/drivers/net/liteeth.c
> index 1781e26348..0d63e1da16 100644
> --- a/drivers/net/liteeth.c
> +++ b/drivers/net/liteeth.c
> @@ -223,7 +223,7 @@ static int liteeth_eth_rx(struct eth_device *edev)
>  	}
> =20
>  	len =3D litex_read32(priv->base + LITEETH_WRITER_LENGTH);
> -	if (len =3D=3D 0 || len > 2048) {
> +	if (len =3D=3D 0 || len > PKTSIZE) {
>  		len =3D 0;
>  		dev_err(priv->dev, "%s: invalid len %d\n", __func__, len);
the len here is always zero

>  		litex_write8(priv->base + LITEETH_WRITER_EV_PENDING, reg);



