Delivery-date: Mon, 16 Jun 2025 14:05:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR8at-007ua7-1o
	for lore@lore.pengutronix.de;
	Mon, 16 Jun 2025 14:05:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR8as-00039s-Vs
	for lore@pengutronix.de; Mon, 16 Jun 2025 14:05:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=slgtemtTqmQjgQMAvEXqnVGebu3fkriENRHoJqAVst8=; b=BnM2dGsxyq03Hx2+PtbB2mrwKt
	v4smxSCltBxWMJaZLJwgBBtP0RZy0xbBfkV0yPcI8WKIrj/fq+TBNBp5MOrbG35+d1NnBohjDlkkO
	gnc+C+X4kPHptuJyTplc4OctL2G9OP1h24fSPOMgBrwPWFNXwJpn+mY6vYuFbs2neimNaMQxL1btn
	G7DYKzYHdYPLWVHe6rbue/KY4xnnNNcEyvO9R62lyd2q0Tj7HXfTXLcm/Rmvdwn14FdkugI+vKfl5
	IC0q6O8DdsacebIwWzxHe6ThTpjfDc4Yo3wrKGWiFRD+sY4BjFWm0yhhMS8SFFu4VQM6uxlh/bhY5
	8WZ4rfvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR8aO-00000004IvO-401B;
	Mon, 16 Jun 2025 12:05:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR7RU-0000000482D-22yN
	for barebox@lists.infradead.org;
	Mon, 16 Jun 2025 10:51:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uR7RT-00015N-BD; Mon, 16 Jun 2025 12:51:55 +0200
Message-ID: <6b7cc008-14e9-4910-b3b3-a08a9ce8be83@pengutronix.de>
Date: Mon, 16 Jun 2025 12:51:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Lars Schmidt <l.schmidt@pengutronix.de>, barebox@lists.infradead.org
References: <20250613140805.1229525-1-l.schmidt@pengutronix.de>
 <20250613140805.1229525-5-l.schmidt@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250613140805.1229525-5-l.schmidt@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_035156_530517_F69A53DB 
X-CRM114-Status: GOOD (  18.32  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/4] Documentation: migration-2025.07.0: add information
 about slots_locked
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 6/13/25 16:08, Lars Schmidt wrote:

commit message please

> Signed-off-by: Lars Schmidt <l.schmidt@pengutronix.de>
> ---
>  Documentation/migration-guides/index.rst               | 1 +
>  Documentation/migration-guides/migration-2025.07.0.rst | 8 ++++++++
>  Documentation/user/bootchooser.rst                     | 3 +++

s/slots/attempts/g below

>  3 files changed, 12 insertions(+)
>  create mode 100644 Documentation/migration-guides/migration-2025.07.0.rst
> 
> diff --git a/Documentation/migration-guides/index.rst b/Documentation/migration-guides/index.rst
> index 182654847f..4bba061476 100644
> --- a/Documentation/migration-guides/index.rst
> +++ b/Documentation/migration-guides/index.rst
> @@ -12,3 +12,4 @@ cause build errors are generally out-of-scope for these documents.
>  
>     migration-2025.05.0
>     migration-2025.06.0
> +   migration-2025.07.0
> \ No newline at end of file
> diff --git a/Documentation/migration-guides/migration-2025.07.0.rst b/Documentation/migration-guides/migration-2025.07.0.rst
> new file mode 100644
> index 0000000000..c18743a633
> --- /dev/null
> +++ b/Documentation/migration-guides/migration-2025.07.0.rst
> @@ -0,0 +1,8 @@
> +Release v2025.07.0
> +==================
> +
> +Bootchooser
> +-----------
> +
> +Bootchooser now interprets a top-level ``slots_locked`` variable.
> +For more information, see :ref:`slot locking feature <bootchooser,slots_lock>`
> diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
> index 306443270a..f767dc77e8 100644
> --- a/Documentation/user/bootchooser.rst
> +++ b/Documentation/user/bootchooser.rst
> @@ -77,6 +77,9 @@ no remaining attempts left.
>  To prevent ending up in an unbootable system after a number of failed boot
>  attempts, there is also a built-in mechanism to reset the counters to their defaults,
>  controlled by the ``global.bootchooser.reset_attempts`` variable.
> +
> +.. _bootchooser,slots_lock:
> +
>  Alternatively, counting down the remaining attempts can be disabled by
>  locking the bootchooser slots.
>  This is done by defining a (32-bit) ``slots_locked`` variable in the

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



