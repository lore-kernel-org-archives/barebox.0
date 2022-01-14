Delivery-date: Fri, 14 Jan 2022 10:01:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8IT5-001tME-58
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 10:01:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8IT3-0004DW-S7
	for lore@pengutronix.de; Fri, 14 Jan 2022 10:01:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QO3xMTH2fB0ZfaML2VblHJBA4EI6zoWaxhyv1IHxhAM=; b=4EEX13g7llAJ8DXddEhJJ9zYtM
	utSQ2XaDZfFUrresoA6axxpOEBC6PbquJznsf5AedEzM/YS+6G21QKD/ZPXcHZz5rXFz8P0aauM3C
	G9HAiVCXQiha66s7Tvi/QfsNat/gm+NvODxoQdzCpoRL3xHHFsUio/+JmIqM++mjhDNHXWPDAKWAD
	kX0MrUKUVDoFzqWOIuISyyhm+v5fKSkmOOBj8cUK95CRAnHb3InciHbc2MsOFwbGXJCyZfn9Yh4WH
	4FsN8mM51xjgeXUcZOW2p3ZIi+RbBMPs6kqeiqocDLFF2rrbIPuc8SOCDO43u3Jd1r7jscm+y/1Dz
	nP6AC2PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8IRq-008PJh-Bw; Fri, 14 Jan 2022 09:00:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8IRl-008PJA-Ll
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 09:00:35 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1n8IRk-00042p-DY; Fri, 14 Jan 2022 10:00:32 +0100
To: Jules Maselbas <jmaselbas@kalray.eu>, barebox@lists.infradead.org
References: <20220110221255.5003-1-jmaselbas@kalray.eu>
 <20220110221255.5003-2-jmaselbas@kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <7fba581c-019e-7e51-29e9-ce75e60e5945@pengutronix.de>
Date: Fri, 14 Jan 2022 10:00:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220110221255.5003-2-jmaselbas@kalray.eu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_010033_751766_5DA19D8D 
X-CRM114-Status: GOOD (  19.09  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/5] filetype: Add QOI format image type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 10.01.22 23:12, Jules Maselbas wrote:
> QOI image format is a "Quite OK" image format, it's simplicity is it's
> strength and could be a good replacement of bmp, maybe even for png.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/filetype.c  | 3 +++
>  include/filetype.h | 1 +
>  2 files changed, 4 insertions(+)
> 
> diff --git a/common/filetype.c b/common/filetype.c
> index 8ffcd6adcd..e5245668e2 100644
> --- a/common/filetype.c
> +++ b/common/filetype.c
> @@ -45,6 +45,7 @@ static const struct filetype_str filetype_str[] = {
>  	[filetype_mbr] = { "MBR sector", "mbr" },
>  	[filetype_bmp] = { "BMP image", "bmp" },
>  	[filetype_png] = { "PNG image", "png" },
> +	[filetype_qoi] = { "QOI image", "qoi" },
>  	[filetype_ext] = { "EXT filesystem", "ext" },
>  	[filetype_gpt] = { "GUID Partition Table", "gpt" },
>  	[filetype_ubifs] = { "UBIFS image", "ubifs" },
> @@ -300,6 +301,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
>  		return filetype_aimage;
>  	if (buf64[0] == le64_to_cpu(0x0a1a0a0d474e5089ull))
>  		return filetype_png;
> +	if (strncmp(buf8, "qoif", 4) == 0)
> +		return filetype_qoi;
>  	if (is_barebox_mips_head(_buf))
>  		return filetype_mips_barebox;
>  	if (buf[0] == be32_to_cpu(0x534F4659))
> diff --git a/include/filetype.h b/include/filetype.h
> index 2640847e1f..8bc179ac08 100644
> --- a/include/filetype.h
> +++ b/include/filetype.h
> @@ -28,6 +28,7 @@ enum filetype {
>  	filetype_mbr,
>  	filetype_bmp,
>  	filetype_png,
> +	filetype_qoi,
>  	filetype_ext,
>  	filetype_gpt,
>  	filetype_ubifs,
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

