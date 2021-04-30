Delivery-date: Fri, 30 Apr 2021 11:48:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcPl3-0004ix-Iu
	for lore@lore.pengutronix.de; Fri, 30 Apr 2021 11:48:25 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcPl2-0000Vh-Kd
	for lore@pengutronix.de; Fri, 30 Apr 2021 11:48:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zKBc8wsDP+G2JcPWGBoAm0+zJkY18wFpZC1VsOcSRek=; b=PS1T3dZp/RT5XD6il0dfVpS8/
	WW6ueAv2hsUQhSn+6eZs0aa9oYLcW4Fh3nI3N9jr36Y59LWs1Cw2J8UocdftNJMIehllRBXqIZg+i
	59pAL0HscG54MLbu3TrVWUMuVZ5mI+lU2ivqsS5PdBD0RHnSnKKbXtozevIgRzgXxLKoiZnMmP2AR
	Htj6TrXUDw5G+5GDXBJmUNAxBgC1hQ4Z75AZSt4mD8K0wcvvScb/vbjPh65x9XR6mKuD8vm7I6OzO
	Oyb8IK4AXBTOfxfBRczyyGXaXoi24SSrQMrZoND+R9mo/yuZ372ahGJ1tYvijbLwXWHxihE+iFIZl
	vF2qMijig==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcPkD-007btK-Rw; Fri, 30 Apr 2021 09:47:34 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcPk9-007btF-JX
 for barebox@desiato.infradead.org; Fri, 30 Apr 2021 09:47:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=669ZCTo9vkuTNkoEyxzOV9JSFFlJ/JkUTMCaI32BtKo=; b=hRJALpCe06TJPSCoZcoU2GAhQf
 r4vRLzODlKtk2PE9pZxqsmi349H7Hi+Y63a+Daa27DeCibKwC3++4GEqALrOUBKOFM/ygu4HV9U3q
 e/0F3pvBLA62z0QBNTRXPu5SWozZo5fR3ngmcxfQcCBsz9rvQy4gT8R4GMT776b3DJLOQlMSmLvAs
 dr2qKCckACkscrnZFcpgQGEOz7+wSwgLyg3wImd3i9FeL2iZzQVzWjZ1n0JLCPdyzopFoIATZcBnk
 cTJidBxdtY6mKcb1ao5sANuNKlsP2lKrbMy7418OBk1tqmw40fcIfRmDMTH0Vok5ZVEmwDswckF7x
 l7z5rS6A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcPk7-001Hag-0m
 for barebox@lists.infradead.org; Fri, 30 Apr 2021 09:47:28 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lcPk5-0000SZ-H4; Fri, 30 Apr 2021 11:47:25 +0200
To: Bastian Krause <bst@pengutronix.de>, barebox@lists.infradead.org
References: <20210430091930.30187-1-bst@pengutronix.de>
 <20210430091930.30187-2-bst@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <fbfe039a-d803-e0eb-8ea2-91229a6541e1@pengutronix.de>
Date: Fri, 30 Apr 2021 11:47:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210430091930.30187-2-bst@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_024727_112444_927D6024 
X-CRM114-Status: GOOD (  22.74  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] scripts: imx-usb-loader: print USB VID/PID of
 excluded devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


On 30.04.21 11:19, Bastian Krause wrote:
> On hosts with multiple USB devices connected, multiple "excluded by
> device path option" messages can be observed. Add the USB VID/PID to
> these messages to give them some additional value.
> 
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
>  scripts/imx/imx-usb-loader.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
> index 6f9104e816..765ba61310 100644
> --- a/scripts/imx/imx-usb-loader.c
> +++ b/scripts/imx/imx-usb-loader.c
> @@ -312,10 +312,17 @@ static int device_location_equal(libusb_device *device, const char *location)
>  	};
>  
>  	/* walked the full path, all elements match */
> -	if (path_step == path_len)
> +	if (path_step == path_len) {
>  		result = 1;
> -	else if (verbose)
> +	} else if (verbose) {
> +		struct libusb_device_descriptor desc;
> +
> +		if (!libusb_get_device_descriptor(device, &desc));
> +			fprintf(stderr, "USB device [%04x:%04x]",
> +				desc.idVendor, desc.idProduct);
> +
>  		fprintf(stderr, " excluded by device path option\n");

find_imx_dev already does libusb_get_device_descriptor(), so you could
pass along the desc and print it here instead of asking for it again?

> +	}
>  
>  done:
>  	free(loc);
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

