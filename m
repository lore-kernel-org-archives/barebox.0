Delivery-date: Mon, 15 Jun 2026 12:01:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ48E-0065zc-1i
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 12:01:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ48D-0006Bc-Og
	for lore@pengutronix.de; Mon, 15 Jun 2026 12:01:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WClpjglm1Fl/TqpWObP4OOPiKkULIy281OTEkBZG3FY=; b=FaynvVXFtAp0ngYwoPi04eAo9K
	Jga7IHaqA/jYzvT818tppIndWSE2ViCSRgxTYLMm8+Kh4V1i7J8keoEmu3/ScgtPNUo5FU/K2TVGD
	zTHkVz6ioc4uk0VmV6bqTU9MyavAZpy3BbP3yFsZI4rl4+kzYOCeqhZMOQ3vqlS1ugK0E1X7u8JIo
	RoiUDXIsNoJf5sbTiEMPaEGpmCFIsMS5vx1L23Xksex4t7b3o5znW2T+TSd8ahuzP5D9Mhqsocpjj
	NoR1frAEygQXoz6BaEwhbvwwJjcIsjaaT3fuA9cmHPku8hFQpY3wRXip8gaiLYrH2AO7hrmiN8ut5
	foHJ6LtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ47r-0000000E1HM-1TGP;
	Mon, 15 Jun 2026 10:01:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ47p-0000000E1GJ-0YOz
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 10:01:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wZ47n-0005yr-Ku; Mon, 15 Jun 2026 12:00:59 +0200
Message-ID: <90b2981c-737b-42b9-916a-1d3ca8be04a2@pengutronix.de>
Date: Mon, 15 Jun 2026 12:00:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20260613051225.3778935-1-johannes.schneider@leica-geosystems.com>
 <AM0PR06MB414868E79F9E8C8128214B70BC192@AM0PR06MB4148.eurprd06.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <AM0PR06MB414868E79F9E8C8128214B70BC192@AM0PR06MB4148.eurprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_030101_172035_1ECEA9BB 
X-CRM114-Status: GOOD (  28.07  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] lib: decompress_unlz4: drop redundant -4 in wrapper call
 to unlz4
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 6/13/26 11:37 AM, SCHNEIDER Johannes wrote:
> Hoi,
> 
> 
> please disregard this patch :-S
> 
> i've since found out that the root cause lies in the way we build lz4 compressed fitimage parts - there a plain lz4 call, with no 4-byte size trailer is used. And this missing trailer is what triggered the "Error: Fit: data corrupted" - which is non fatal anyway, as the system still booted.
> 
> Now i'm wondering why barebox is using this (legacy?) format?

gzip includes the size of the uncompressed data. The kernel
decompressors that barebox imports add that field manually for other
compression algorithms, whose header format lack it.

If you find a way that can accommodate both, we can go with it.

Cheers,
Ahmad

> 
> 
> gruß
> Johannes
> 
> ________________________________________
> From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> Sent: Saturday, June 13, 2026 07:12
> To: barebox@lists.infradead.org
> Cc: SCHNEIDER Johannes
> Subject: [PATCH] lib: decompress_unlz4: drop redundant -4 in wrapper call to unlz4
> 
> decompress_unlz4() passes in_len - 4 to unlz4(), as if the caller had
> already stripped the LZ4 legacy frame magic from the buffer. But unlz4()
> reads the magic itself from buf[0..3] and, in the buffer-input path,
> explicitly accounts for it via:
> 
>         if (!fill) {
>                 inp += 4;
>                 size -= 4;
>         }
> 
> So the magic is subtracted twice from the running size counter. After
> the last chunk is consumed, the counter underflows to -4 instead of 0,
> which trips the "data corrupted" check at the end of the chunk loop:
> 
>         if (!fill) {
>                 size -= chunksize;
>                 if (size == 0)
>                         break;
>                 else if (size < 0) {
>                         error("data corrupted");
>                         goto exit_2;
>                 }
>                 inp += chunksize;
>         }
> 
> The bug is benign in practice — by the time the size check fires, all
> chunks have already been successfully decompressed and flushed, and ret
> holds the 0 returned by the last lz4_decompress_unknownoutputsize()
> call. unlz4() returns 0 and the caller treats the operation as
> successful, but a spurious "data corrupted" line is printed on every
> LZ4 decompression. With pr_fmt set by image-fit.c, FIT-image kernel
> boots show:
> 
>         ERROR: FIT: data corrupted
> 
> right between the configuration line and the cmdline-append line.
> 
> Pass in_len through unchanged. unlz4() handles the magic itself in both
> the input and fill paths.
> 
> Fill-mode callers (e.g. uncompress_fd_to_fd) are unaffected: they pass
> in_len=0, and unlz4() overwrites the initial size on the first fill()
> call.
> 
> Assisted-by: Claude:claude-opus-4-7
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> ---
>  lib/decompress_unlz4.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/lib/decompress_unlz4.c b/lib/decompress_unlz4.c
> index 2bb30e71bb..17bb4e5de7 100644
> --- a/lib/decompress_unlz4.c
> +++ b/lib/decompress_unlz4.c
> @@ -209,6 +209,6 @@ STATIC int decompress_unlz4(unsigned char *buf, long in_len,
>                               void(*error)(char *x)
>         )
>  {
> -       return unlz4(buf, in_len - 4, fill, flush, output, posp, error);
> +       return unlz4(buf, in_len, fill, flush, output, posp, error);
>  }
>  #define decompress decompress_unlz4
> 
> base-commit: 6c70fb327d486376c1f2e37dfff2212cb9eebb1b
> --
> 2.43.0
> 
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



