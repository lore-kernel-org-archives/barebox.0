Delivery-date: Tue, 04 Oct 2022 09:47:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofce5-005Ki8-VD
	for lore@lore.pengutronix.de; Tue, 04 Oct 2022 09:47:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofce4-0004z1-Qb
	for lore@pengutronix.de; Tue, 04 Oct 2022 09:47:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=myfhYOW6ohlPqEvRPyo93r5XTa1otSKhGuXzi90tgoE=; b=GhI9Kpuzu6BE6Uq+SzxNZRg1Q6
	lJ2Wl340MuOXS3ZWqipdJfCa79I+Msiv+uTUmc9Fq3uCibM3vJWWH1RKPkXqy69B/20eTo9AzTevH
	3mGrZQfJokWjv41qouOPdtnpG5lK4ne1U2Q453lxko+4b1L8qY8gizQyZ3FpSAEs1C9DUPUbkpp37
	m8/pHi84Z33kb6DKZqo1jIPvj8r+9BiSvf5QVOjFSkhzB3BnaU/ey2UwFEhH8xGMPf1FCSxFMZbV4
	+Y+0dcXxuTryhn0uJYvlxp4a3K479B2J4wpx2+m76YI1j4QXk/QKUBXndfoT0m3pBLgthDGm5TReo
	gm4lpalg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofcca-008nNX-CO; Tue, 04 Oct 2022 07:45:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofccT-008nKe-Eg
	for barebox@lists.infradead.org; Tue, 04 Oct 2022 07:45:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofccS-0004Wz-6e; Tue, 04 Oct 2022 09:45:36 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofccR-0004or-N4; Tue, 04 Oct 2022 09:45:35 +0200
Date: Tue, 4 Oct 2022 09:45:35 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Hans Christian =?iso-8859-15?Q?L=F8nstad?= <hcl@datarespons.no>
Message-ID: <20221004074535.GF986@pengutronix.de>
References: <20220927173101.1696673-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220927173101.1696673-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_004537_517031_2EC43C6E 
X-CRM114-Status: GOOD (  21.14  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] imx-usb-loader: skip initial SDP_ERROR_STATUS
 query for SDPS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Sep 27, 2022 at 07:31:01PM +0200, Ahmad Fatoum wrote:
> We do an initial do_status() every time, which fails for i.MX8MP and
> i.MX8MN:
> 
>   found i.MX8MP USB device [1fc9:0146]
>   4 in err=-9, last_trans=0  00 00 00 00
>   status failed
> 
> If we instead skip it for SDPS (i.e. hid_endpoint), upload works as
> expected (tested on i.MX8M Nano).
> 
> Reported-by: Hans Christian Lønstad <hcl@datarespons.no>
> Fixes: 23e2203150b6 ("imx-usb-loader: Add i.MX8MP support")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  scripts/imx/imx-usb-loader.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
> index 1242f2dedda5..a98ab0e33f8a 100644
> --- a/scripts/imx/imx-usb-loader.c
> +++ b/scripts/imx/imx-usb-loader.c
> @@ -1628,10 +1628,12 @@ int main(int argc, char *argv[])
>  		goto out;
>  	}
>  
> -	err = do_status();
> -	if (err) {
> -		printf("status failed\n");
> -		goto out;
> +	if (!mach_id->hid_endpoint) {
> +		err = do_status();
> +		if (err) {
> +			printf("status failed\n");
> +			goto out;
> +		}
>  	}
>  
>  	if (initfile) {
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


