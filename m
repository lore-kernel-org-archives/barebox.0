Delivery-date: Wed, 25 Jun 2025 19:37:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUU3p-00B08L-26
	for lore@lore.pengutronix.de;
	Wed, 25 Jun 2025 19:37:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUU3p-0003Lz-1q
	for lore@pengutronix.de; Wed, 25 Jun 2025 19:37:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9y0VXpvkke7a5k2Ewifv1qbfdzIsExlsDDxflOdNNas=; b=JRPzIwGS8qvXUB/ONAfYDoc7pp
	m/A5QkHajR5io52KHe3F3g/AHLv3IJmH40Z1diqmZt/xFH1x8mX0lONM+TUa5lXmBhw8SLBBUmIYi
	ON6CAHLUOOHmMYK2pmds0qFq9amlkXtVeKM8UN7Kbqo0eypVau7eYK0u6W3YHd4BYVM8mSjsJHvcK
	LQZKEtEertsLUQus3bnOcLrsobPG+ITnbRT3CJj8DjMf9+KqhL2WqC2VYDU8qup62jM7T3crvlVKM
	bJaHuDdYghEtVb5IvqDBYR9qdc5SEjPL0mQy3JMsxcSXmDLOvQ2STI1+8OHroSt3W/jbZ4n41dI+b
	TpHnnc2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUU37-00000009T7d-3a34;
	Wed, 25 Jun 2025 17:36:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUPY0-00000008foh-1McY
	for barebox@lists.infradead.org;
	Wed, 25 Jun 2025 12:48:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uUPXx-0003lh-LE; Wed, 25 Jun 2025 14:48:13 +0200
Message-ID: <860c29af-b414-4141-bef4-69f1a961369a@pengutronix.de>
Date: Wed, 25 Jun 2025 14:48:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Roland Hieber <rhi@pengutronix.de>, barebox@lists.infradead.org
References: <20250625105145.3626715-1-rhi@pengutronix.de>
 <20250625105145.3626715-3-rhi@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250625105145.3626715-3-rhi@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_054816_377220_9CDA35FA 
X-CRM114-Status: GOOD (  22.72  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] doc: user: net: document Fastboot over UDP usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Roland,

On 6/25/25 12:51, Roland Hieber wrote:
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks a lot for the documentation,
Ahmad

> ---
>  Documentation/user/networking.rst | 16 ++++++++++++++++
>  Documentation/user/usb.rst        |  4 ++++
>  2 files changed, 20 insertions(+)
> 
> diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
> index 6997da10dbea..605936c6a895 100644
> --- a/Documentation/user/networking.rst
> +++ b/Documentation/user/networking.rst
> @@ -203,6 +203,22 @@ The netconsole can be used just like any other console. Note, however, that the
>  simple console protocol is UDP based, so there is no guarantee about packet
>  loss.
>  
> +Fastboot over UDP
> +-----------------
> +
> +When built with ``CONFIG_NET_FASTBOOT=y`` and the environment variable
> +``fastboot.net.autostart`` is set to any non-empty value, barebox will
> +listen for fastboot commands on UDP port 5554.
> +You might need to configure a IP address first in order to use fastboot (e.g.
> +via DHCP or statically; see above).
> +
> +Additionally, you have to configure at least the ``fastboot.partitions``
> +variable, see :ref:`usbgadget_variables`.
> +
> +On your development host, use fastboot with the ``-s udp:<IP-address>``
> +parameter, specifying the IP address of your board.
> +See :ref:`fastboot` for more information about Fastboot usage.
> +
>  DSA (Distributed Switch Architecture) Support in Barebox
>  --------------------------------------------------------
>  
> diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
> index 43072be53db7..f233927656bc 100644
> --- a/Documentation/user/usb.rst
> +++ b/Documentation/user/usb.rst
> @@ -153,6 +153,8 @@ barebox can provide a serial console over USB. This can be initialized with the
>  :ref:`command_usbserial` command. Once the host is plugged in it should show a
>  new serial device, on Linux for example ``/dev/ttyACM0``.
>  
> +.. _fastboot:
> +
>  Android Fastboot support
>  ^^^^^^^^^^^^^^^^^^^^^^^^
>  
> @@ -307,6 +309,8 @@ chosen at boot time from other driver or script.
>  To get usbgadget autostart support barebox has to be compiled with
>  CONFIG_USB_GADGET_AUTOSTART enabled.
>  
> +.. _usbgadget_variables:
> +
>  USB Gadget autostart Options
>  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>  

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



