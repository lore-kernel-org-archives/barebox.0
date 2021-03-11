Delivery-date: Thu, 11 Mar 2021 09:54:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKH5i-0002mK-38
	for lore@lore.pengutronix.de; Thu, 11 Mar 2021 09:54:46 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKH5c-0001Cc-Ue
	for lore@pengutronix.de; Thu, 11 Mar 2021 09:54:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lTkVYuiVoABfb+d9vHIpFD8WLhuMoujqKLbnHtBC/6w=; b=BmnBdyYyKbgCD13X+OqMOH2y/
	lzYodFwy0fyN3D65peR3fNCCtuBEfmb+IuJ6FVjhFmqGrc0+qRi7Pnpw4w0B3Hzpm+vZwCe5t3zdI
	wigcHk7Hv5zD15Zwa+NY1Bis3223ZjH3d5++j7u4H0abRAsPpgUWd/K7Sf0c2mK1qmeQo+AP59WbL
	X/LebjAzaKTzRqI85xlt4GFte5kYCMBA0CuZN68UA9pIR0Y0XHbafp8HezImo97E+epsbAVFDMWBy
	OIOMapVLSVMFD5zvDI+NveGw1q3h/VGNNPfddcLClmemoZYbbmZvnkAHR/Oon17Pc/Wc20M9CZLXX
	ihujlXMIw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKH4R-008haL-Gr; Thu, 11 Mar 2021 08:53:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKH4M-008hZy-1h
 for barebox@lists.infradead.org; Thu, 11 Mar 2021 08:53:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lKH4L-0000uo-FS; Thu, 11 Mar 2021 09:53:21 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lKH4K-0001yb-Vp; Thu, 11 Mar 2021 09:53:20 +0100
Date: Thu, 11 Mar 2021 09:53:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210311085320.GA23724@pengutronix.de>
References: <20210305200422.927-1-user@vserver64>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210305200422.927-1-user@vserver64>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:49:16 up 21 days, 12:13, 81 users,  load average: 0.00, 0.03, 0.07
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210311_085322_149612_82473DFA 
X-CRM114-Status: GOOD (  22.49  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts: imx-image: fix iMX35 header generation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 05, 2021 at 08:04:22PM +0000, Alexander Kurz wrote:
> From: Alexander Kurz <akurz@blala.de>
> 
> Two header copies exist in the iMX35 image.
> When writing the barebox_header, also write it to the second copy.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  scripts/imx/imx-image.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Applied, thanks

It was likely me who broke this, Sorry for that.

Sascha

> diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
> index f5e89d07a..6cbee1d9b 100644
> --- a/scripts/imx/imx-image.c
> +++ b/scripts/imx/imx-image.c
> @@ -984,8 +984,11 @@ int main(int argc, char *argv[])
>  		xwrite(outfd, buf, header_len);
>  	}
>  
> -	if (add_barebox_header)
> +	if (add_barebox_header) {
>  		pwrite(outfd, bb_header, sizeof_bb_header, 0);
> +		if (data.cpu_type == IMX_CPU_IMX35)
> +			pwrite(outfd, bb_header, sizeof_bb_header, header_len);
> +	}
>  
>  	xwrite(outfd, infile, insize);
>  
> -- 
> 2.20.1
> 
> 
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

