Delivery-date: Wed, 24 Jan 2024 17:22:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSg1b-00GZOq-1D
	for lore@lore.pengutronix.de;
	Wed, 24 Jan 2024 17:22:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSg1c-0000bd-0x
	for lore@pengutronix.de; Wed, 24 Jan 2024 17:22:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jUqorQp55O6RfpIiNVpau8WCvAp8b6lrTneXV508SsI=; b=L7hgzMtz3OoYK08NgV0tTCZ5qP
	wWcPcykjjannyzk1a9X8M+Q1aNaB2AKFniZBk/vdMEgGxdfDKY9/h8BDqAv9VQvgc3f7E11L+FZD3
	D4Lfk+/Yb/6vIEmtK5Y5EGRRw0NJj3xIL/4zmoIN/Y3eLh+dC0/mjtNp+co4/4QTmpWnPi2rpyuDn
	op/rGeAqIodpYWr6WrK2xcPwdhOQWbWjdCzuXVWolOQQswu/RLg7LQbZT6hrf6/lRi064ihrWZEfW
	2h8D9DSADT/az/03dXjr0c/z0+fosjPKMJQ8yXrgu8UW2iLc2z0Mx9H/glxxhGIu28KrGHZeHZJ3D
	EBE865Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSg0T-004Ayz-2f;
	Wed, 24 Jan 2024 16:21:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSg0Q-004AxL-0Q
	for barebox@lists.infradead.org;
	Wed, 24 Jan 2024 16:21:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rSg0N-0000TX-9j; Wed, 24 Jan 2024 17:21:35 +0100
Message-ID: <2fc3cc09-ca9a-4784-99e2-ba728d6c5bbb@pengutronix.de>
Date: Wed, 24 Jan 2024 17:21:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Bastian Krause <bst@pengutronix.de>, barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>
References: <20240124154728.901305-1-bst@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240124154728.901305-1-bst@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_082138_188008_E43E971F 
X-CRM114-Status: GOOD (  18.83  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/2] Documentation: usb: document bbu fastboot
 partition name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24.01.24 16:47, Bastian Krause wrote:
> After looking this up the nth time in the code base, it's really time to
> document this.
> 
> Also mention that ``fastboot getvar all`` lists the partitions.

Thank you!

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> 
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
> Changes since (implicit) v1:
> - mention partitions in ``fastboot getvar all`` as suggested by Ahmad
> ---
>  Documentation/user/usb.rst | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
> index 95d6dd7e363..dfa53cf199a 100644
> --- a/Documentation/user/usb.rst
> +++ b/Documentation/user/usb.rst
> @@ -168,12 +168,13 @@ The Fastboot gadget supports the following commands:
>  ``fastboot flash`` additionally supports image types UBI and Barebox. For UBI
>  Images and a MTD device as target, ubiformat is called. For a Barebox image
>  with an available barebox update handler for the fastboot exported device, the
> -barebox_update is called.
> +barebox_update is called (exported as ``bbu-<update_handler_name>`` fastboot
> +partition).
>  
>  The barebox Fastboot gadget supports the following non standard extensions:
>  
>  - ``fastboot getvar all``
> -  Shows a list of all variables
> +  Shows a list of all variables, including exported partitions
>  - ``fastboot oem getenv <varname>``
>    Shows a barebox environment variable
>  - ``fastboot oem setenv <varname>=<value>``

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



