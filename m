Delivery-date: Mon, 03 May 2021 12:38:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldVyW-0002qx-Iq
	for lore@lore.pengutronix.de; Mon, 03 May 2021 12:38:52 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldVyV-0008OM-Pz
	for lore@pengutronix.de; Mon, 03 May 2021 12:38:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KnrpzArBrfi/UOyI5foTPnf30FwiBECQDZ2qvCXd6h4=; b=jdIrenQvZEzjQRrWx8P5xDolQ
	CW0xjsyojCAX4EyqLkSfjuMsS7eR3WtSX9bhkDHJlpM2PEGKW18irKKa98sWjZxXwq0Sboe/8nras
	gtqirNMxelqwWjrHBUeB3svOp+UwS0D7iIZDcz154fUhgktrNdC+twvyM2YJs/WUrbQCpXY7HrP8y
	8KXId3oXZ+XEkioHxvjHKksm0nHvXUjsDHjMTcLlkJPKJWOxSRaE9zayUKk14QhBvgak4oMiv9KUw
	hCIlmzGzOnQlaaVFlfRfkDQ4qY4MY2dhRU+rwUZZ49Fkr2FfJjipq/eG/Bb1k2f/8VtiJDr5o+SVc
	SAwS5zo9g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldVxU-00DfU1-9r; Mon, 03 May 2021 10:37:48 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldVxH-00DfS3-MT
 for barebox@desiato.infradead.org; Mon, 03 May 2021 10:37:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=EMVrJ8RH3jb+DuWx1Brr9jzSqlzw7CoxUSeRcwLIRIs=; b=g+52JnFUzoEXETB+3PgEUdohg8
 BjBOmvvWFsmUCLpzp2+anMX7EjkCWgtlKVoVsP5qixOPt1hx8EuTOjRm/oESRyy/0fycZXNdzLWpd
 fCi3VEu7YXWEY/IXydSgUzWOwkCYDPOinI9Jc2QGj5FnGofDXjH8SO+R9CYRLssVn6OmRTdBuVLAS
 pVxBRBWoNdFpGP8PhpainrALcsYj0sl3pM4/7E99i91ais22EsUwrAnZBpLTBzGN4gcN1/QlCcWgl
 uxYz57UQl/w5XfBBgglkZiHaOpqbqu7Iccz+HhaocRfkFldRWtbAtKvbZFtKws/pyPBmxUi6fcvYA
 JR9iBIeA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldVxF-002yqX-1R
 for barebox@lists.infradead.org; Mon, 03 May 2021 10:37:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldVxA-0007mx-IW; Mon, 03 May 2021 12:37:28 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldVxA-0006Oj-9A; Mon, 03 May 2021 12:37:28 +0200
Date: Mon, 3 May 2021 12:37:28 +0200
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20210503103728.GU19819@pengutronix.de>
References: <20210430115640.21011-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210430115640.21011-1-bst@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:37:18 up 74 days, 14:01, 100 users,  load average: 0.32, 0.14,
 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_033733_108634_643C0074 
X-CRM114-Status: GOOD (  25.71  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] scripts: imx-usb-loader: print excluded USB
 device message only on verbose
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 30, 2021 at 01:56:39PM +0200, Bastian Krause wrote:
> If a USB device path is specified, it is expected that other devices will
> be ignored. So print that message only on verbose > 0.
> 
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Changes since (implicit) v1:
> - added Ahmad's Reviewed-by
> ---
>  scripts/imx/imx-usb-loader.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
> index e277d29035..6f9104e816 100644
> --- a/scripts/imx/imx-usb-loader.c
> +++ b/scripts/imx/imx-usb-loader.c
> @@ -314,7 +314,7 @@ static int device_location_equal(libusb_device *device, const char *location)
>  	/* walked the full path, all elements match */
>  	if (path_step == path_len)
>  		result = 1;
> -	else
> +	else if (verbose)
>  		fprintf(stderr, " excluded by device path option\n");
>  
>  done:
> -- 
> 2.29.2
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

