Delivery-date: Tue, 23 May 2023 09:31:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1MUi-00AV3B-1z
	for lore@lore.pengutronix.de; Tue, 23 May 2023 09:31:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1MUf-0004ha-ES
	for lore@pengutronix.de; Tue, 23 May 2023 09:31:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WDWJm7F47K5bojONOHqzUYIO7WDmq1ItdMiMVNDqhCw=; b=xODUOiLEN8+Ba3LYDVAkd166it
	5WDDcQSDXSaLKgTifqsqA4ZSYWtCbMTz6+DFo0zrnlHOMA/LiDC8hwmHGQBg/veVCYISRitugJypO
	scGupXmwsmsOR0oX4/7CMxyqn7Dpa2+lji24GBt/xzAReBHM6+TgDYz8RnLRGwoxef8flCmiHgNnj
	3/ILSAqoysMavdrR6H+pOo8TZVtE/54NOGwRUsez4p7WBA5/lukHuJBr7f8W8tfXToB54nX4z5cWM
	xFvm3wixorlWu1cbN4vH5N6gnUwYlLdi2Rj9qgTYIo+mluEQyVk9i14wRkggKF/xXiUPIingypObW
	69tEMOLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1MTF-009E9P-2b;
	Tue, 23 May 2023 07:30:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1MT9-009E7G-2F
	for barebox@lists.infradead.org;
	Tue, 23 May 2023 07:30:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q1MT7-0004B1-Un; Tue, 23 May 2023 09:30:05 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q1MT7-0002g7-1h; Tue, 23 May 2023 09:30:05 +0200
Date: Tue, 23 May 2023 09:30:05 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
	Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20230523073005.GI17518@pengutronix.de>
References: <20230523071621.3796978-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230523071621.3796978-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_003007_737500_422CF06D 
X-CRM114-Status: GOOD (  27.81  )
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
Subject: Re: [PATCH master] imx-usb-loader: Don't try to verify more data
 than contained in the image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 23, 2023 at 09:16:21AM +0200, Ahmad Fatoum wrote:
> On platforms that don't have a 2nd stage (in my case i.MX6 without
> imx6_barebox_start_usb), it usually happens that the transfer limit for
> the first (and only) upload is bigger than the actual file length.
> Then the right thing to do is processing the complete image (minus its
> header), but not more. This was broken by recent refactoring and fixed
> for the transfer case with commit 3cf4bcd86419 ("imx-usb-loader: Don't
> try to transfer more data than contained in the image").
> 
> The same bug persisted in the verification code though, breaking
> imx-usb-loader -c:
> 
> 	verifying file...
> 	mismatch at offset 0x000999c0. expected:
> 	[ hexdump of last bytes of barebox binary ]
> 
> A jump to the binary will then be skipped and subsequent imx-usb-loader
> invocations will have their DCD writes unanswered leading to the
> dreaded:
> 
> 	main dcd length 328
> 	DCD write: sub dcd length: 0x0324, flags: 0x04w3 in err=-7, last_trans=0  00 00 00 00
> 	addr=0x021b001c, val=0x04088032               w4 in err=-7, last_trans=0  00 00 00 00
> 	!!perform_dcd returned -7
> 	4 in err=-7, last_trans=0  00 00 00 00
> 
> Applying the same fix as in 3cf4bcd86419 fixes this issue as well.
> 
> Fixes: 3367ebc55ebe ("scripts: imx-usb-loader: simplify code flow for file size calculations")
> Cc: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> Reported-by: Roland Hieber <r.hieber@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Applied, thanks

Sascha

> ---
>  scripts/imx/imx-usb-loader.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
> index 5f9c7ff3a458..676f077c2557 100644
> --- a/scripts/imx/imx-usb-loader.c
> +++ b/scripts/imx/imx-usb-loader.c
> @@ -1415,7 +1415,7 @@ static int do_irom_download(struct usb_work *curr, int verify)
>  	if (verify) {
>  		printf("verifying file...\n");
>  
> -		ret = verify_memory(image, firststage_len, header_addr);
> +		ret = verify_memory(image, min(fsize, firststage_len), header_addr);
>  		if (ret < 0) {
>  			printf("verifying failed\n");
>  			goto cleanup;
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


