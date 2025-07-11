Delivery-date: Fri, 11 Jul 2025 14:54:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uaDGi-00GOYP-0W
	for lore@lore.pengutronix.de;
	Fri, 11 Jul 2025 14:54:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uaDGh-0000kO-K3
	for lore@pengutronix.de; Fri, 11 Jul 2025 14:54:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mk1PHYPwdU7Nf9sXcVB8dVMUX4Wzaw2cylmbS+2GkD8=; b=sSMq3sGG5dxiVU8l4VtGUbQodg
	g+Cj9CMsMx85Zjh0DEg4GOOcPZONiBSlb3C+UX4Nky+pJhjeJp2ErcOx/pBBJSz7js4dlqda1taZe
	U7Ph8pa8cZcmdX97c8KGaZViWDi3x2cvFRk1flXd4k9KltMpqqGX0A6P2ewMZq5A9CeTsv1xZW9XW
	IA4NQe6AvnzwnfheRPQ44wNj4U+pSmEzmb3j8XYspXe8IIktB+4GKj1du+9X/jCpoSOI+aTZDvhmU
	FibQMQ0mJehyzNF5qf9jTYEzWgx4fnthFEAElu3xF4nznmpC9QRCesVYlbIhNvzYQWY376M6uEPly
	jc+w1DCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaDGK-0000000EnQQ-0i6I;
	Fri, 11 Jul 2025 12:54:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaDGH-0000000EnPP-1S5N
	for barebox@lists.infradead.org;
	Fri, 11 Jul 2025 12:53:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uaDGG-0000Kl-71; Fri, 11 Jul 2025 14:53:56 +0200
Message-ID: <d1138387-0c4c-4e4e-a96a-eab2faba2039@pengutronix.de>
Date: Fri, 11 Jul 2025 14:53:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bo Sun <bo@mboxify.com>, barebox@lists.infradead.org
References: <20250711122729.108015-1-bo@mboxify.com>
 <20250711122729.108015-2-bo@mboxify.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250711122729.108015-2-bo@mboxify.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_055357_389327_C385C041 
X-CRM114-Status: GOOD (  14.64  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] miitool: clarify help text for default behavior and
 -s option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 7/11/25 14:27, Bo Sun wrote:
> The -s option description was misleading about default behavior.
> Clarify that miitool without options shows all PHYs, and -s requires
> a device argument.
> 
> Signed-off-by: Bo Sun <bo@mboxify.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  commands/miitool.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/commands/miitool.c b/commands/miitool.c
> index 0121fdc542..0c70b51ad3 100644
> --- a/commands/miitool.c
> +++ b/commands/miitool.c
> @@ -344,9 +344,11 @@ BAREBOX_CMD_HELP_TEXT("Media Independent Interface (MII) unit as well as allowin
>  BAREBOX_CMD_HELP_TEXT("register dummy PHY devices for raw MDIO access. Most fast ethernet")
>  BAREBOX_CMD_HELP_TEXT("adapters use an MII to autonegotiate link speed and duplex setting.")
>  BAREBOX_CMD_HELP_TEXT("")
> +BAREBOX_CMD_HELP_TEXT("When run without options, shows status of all PHYs.")
> +BAREBOX_CMD_HELP_TEXT("")
>  BAREBOX_CMD_HELP_TEXT("Options:")
>  BAREBOX_CMD_HELP_OPT("-v", "increase verbosity")
> -BAREBOX_CMD_HELP_OPT("-s <devpath/devname>", "show PHY status (not providing PHY prints status of all)")
> +BAREBOX_CMD_HELP_OPT("-s <devpath/devname>", "show PHY status for specified device")
>  BAREBOX_CMD_HELP_OPT("-r <busno>:<adr>", "register a PHY")
>  BAREBOX_CMD_HELP_END
>  
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



