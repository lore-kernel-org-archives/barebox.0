Delivery-date: Tue, 05 Dec 2023 09:14:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQZ8-003wE5-0x
	for lore@lore.pengutronix.de;
	Tue, 05 Dec 2023 09:14:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQZ8-0005D0-9F
	for lore@pengutronix.de; Tue, 05 Dec 2023 09:14:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c1Qx+jMWU96vVGOrRsq3XJAbkU0ArtGe4uuLi3BL1m8=; b=qfzSE/wsXaRlD48AflzL5YpsQb
	RaJRSfnXPWjH3c4Ajp9FXKAqlslLqdc8Fy/uexqK2dHzqLPztiZF3n4UT04ucGcZqi8t4Hq0holol
	AqPhYkVY8kjZSzfmYfWT8Y4KvQY8CThmxbMfCjteIjWm2HN6NdDbSTP/Qt/RwZ07QUX+c0n/4xXEi
	kBq5lQHo/BJGq6DamscAsm6im5oKyoOXsWK+Z37P3H4jfJvP78PbMlvncigMtZAVEIzBHbjvXZJC8
	EmsQk9Xx+Dbykqyrizh7Rn9AITk1h1ZIPAnr6EVC/PzArSbdC45Q714cX4KSKOV9v2v0A+mGw3QuA
	ac+3ELpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQY1-006brJ-2l;
	Tue, 05 Dec 2023 08:12:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQXy-006bq3-0Z
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 08:12:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQXx-0004pf-1c; Tue, 05 Dec 2023 09:12:49 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQXw-00DhWt-LU; Tue, 05 Dec 2023 09:12:48 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQXw-005Lyq-Im; Tue, 05 Dec 2023 09:12:48 +0100
Date: Tue, 5 Dec 2023 09:12:48 +0100
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231205081248.GQ1057032@pengutronix.de>
References: <20231114133358.3746051-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231114133358.3746051-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_001250_210482_C21687C0 
X-CRM114-Status: GOOD (  26.91  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] scripts: imx-image: don't pad the final binary for
 i.MX8M devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Nov 14, 2023 at 02:33:58PM +0100, Marco Felsch wrote:
> If the padding was required the follwing error may appear:
> 
> | found i.MX8MP USB device [1fc9:0146]
> | No dcd table in this ivt
> | dl_command err=-1, last_trans=-1
> | 4 in err=-4, last_trans=0  00 00 00 00
> 
> The error is triggered since the target request only the required size
> of bytes and move on as soon as all bytes are received while, on the other
> hand, host tools like imx-usb-loader and uuu try to send the complete
> file size.
> 
> The alignment was introduced long time ago by commit 7cb4778e7f49
> ("imx-image: pad generated image to 4k") and may be required for HAB
> boot on older SoCs like i.MX6/7. On these SoCs the CSF data is placed
> behind the whole barebox image including the optional padding. On newer
> SoCs like the i.MX8M* this isn't the case anymore. On these SoCs the CSF
> is placed behind the barebox-pbl (aligned to 0x1000). So the final padding
> isn't required anymore on these SoCs.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  scripts/imx/imx-image.c | 19 ++++++++++++++-----
>  1 file changed, 14 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
> index 1f96b383901f..a5639d696931 100644
> --- a/scripts/imx/imx-image.c
> +++ b/scripts/imx/imx-image.c
> @@ -1100,12 +1100,21 @@ int main(int argc, char *argv[])
>  
>  	xwrite(outfd, infile, insize);
>  
> -	/* pad until next 4k boundary */
> -	now = 4096 - (insize % 4096);
> -	if (data.csf && now) {
> -		memset(buf, 0x5a, now);
> +	/*
> +	 * The alignment may be required on ARMv7 SoCs like i.MX6/7 for HAB
> +	 * boot. On newer SoCs like i.MX8MP/N this cause libusb communication
> +	 * errors while uploading images because these machines request the
> +	 * exact amount of required bytes and move on afterwards while the host
> +	 * tool still try to send the whole (padded) file size.
> +	 */
> +	if (!cpu_is_mx8m(&data)) {
> +		/* pad until next 4k boundary */
> +		now = 4096 - (insize % 4096);
> +		if (data.csf && now) {
> +			memset(buf, 0x5a, now);
>  
> -		xwrite(outfd, buf, now);
> +			xwrite(outfd, buf, now);
> +		}
>  	}
>  
>  	ret = close(outfd);
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


