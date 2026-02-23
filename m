Delivery-date: Mon, 23 Feb 2026 09:49:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRd4-004loV-2q
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 09:49:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRd5-0005DC-2p
	for lore@pengutronix.de; Mon, 23 Feb 2026 09:49:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RIrNoHxTto3Ysl9UlaWx2KEDwBUmm6A8r80jBQ1elIw=; b=4py1oq9CSs4dRY80ZCyTXaWa9w
	08/SYY9JVPhHcm/ThCEN3ujTLmlBAQ2HswlCkBO1m12KmQJhsCZK4ONzUlYuP1poxQeWof57va5to
	zSzJOSfoqWOvADXWG9mdkrxmMUr3NchJYE7CUWhSesyzULb9HEMpupTco//wcYzcrmWhY4Bfa7LzO
	SbO6XFUmeCZTQ7gYIReYHGOLvaXobkZumcQXcr6A+XbFG3skYAanzJVcSzsRYLUtl3wu3tSyGWF5u
	ay3zg9DOm76S3D7KA4Kqme5r41tLc6E9pfmhgQG/THMXXjin6tOGoDX/4epna+BuvQ/mudGJAusKd
	j9ipqtvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuRcW-0000000HRRM-1qGD;
	Mon, 23 Feb 2026 08:48:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuRcT-0000000HRR1-3bxW
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 08:48:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vuRcS-0005A3-6B; Mon, 23 Feb 2026 09:48:44 +0100
Message-ID: <89717258-4910-4b80-a727-e15bf55286fb@pengutronix.de>
Date: Mon, 23 Feb 2026 09:48:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Enrico_J=C3=B6rns?= <ejo@pengutronix.de>,
 barebox@lists.infradead.org
References: <20260220085130.1326621-1-ejo@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260220085130.1326621-1-ejo@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_004845_958342_A836C0C4 
X-CRM114-Status: GOOD (  24.51  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] Documentation: bootchooser: fix grammar and wording
 for 'attempts_locked'
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 2/20/26 9:50 AM, Enrico Jörns wrote:
> * 'variable in the bootstate' is undefined -> replace
> * fix and rephrase 'use case' sentence
> * fix and rephrase 'trade-off' sentence
> * Add missing period after 'avoid this behavior'
> * Avoid unclear 'to boot if any'
> * fix typo, remove excess whitespace
> 
> Signed-off-by: Enrico Jörns <ejo@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  Documentation/user/bootchooser.rst | 26 ++++++++++++++------------
>  1 file changed, 14 insertions(+), 12 deletions(-)
> 
> diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
> index 360305e92e..b38bae2c23 100644
> --- a/Documentation/user/bootchooser.rst
> +++ b/Documentation/user/bootchooser.rst
> @@ -88,21 +88,23 @@ variable.
>  
>  Alternatively, counting down the remaining attempts can be disabled by
>  locking bootchooser boot attempts.
> -This is done by defining a (32-bit) ``attempts_locked`` variable in the
> -bootstate and setting its value to ``1`` (usually from userspace).
> +This is done by defining a (32-bit) ``attempts_locked`` run-time variable and
> +setting its value to ``1`` (usually from userspace).
>  
> -In scenarios where the system is rebootet too frequently (after the ``remaining_attempts``
> -counter is decremented, but before it got incremented again after a successful boot) and falls
> -back to the other boot target, the ``attempts_locked`` variable can be used to avoid this behavior
> +In scenarios where the system is rebooted too frequently (after the ``remaining_attempts``
> +counter is decremented, but before it got incremented again after a successful boot), it can unintentionally fall
> +back to the other boot target.
> +The ``attempts_locked`` variable can be used to avoid this behavior.
>  Bootchooser is prevented from decrementing the ``remaining_attempts`` counter and falling back
> -to the other target. It comes with the trade-off that a slot, that becomes broken
> -over time, it won't be detected anymore and will be booted indefinitely.
> +to the other target. It comes with the trade-off that a slot that becomes broken
> +over time will no longer be detected as such and will be booted indefinitely.
>  
>  The variable affects all targets, is optional and its absence is
>  interpreted as ``0``, meaning that attempts are decremented normally.
>  
> -The ``attempts_locked`` value does not influence the decision on which target
> -to boot if any, only whether to decrement the attempts when booting.
> +The ``attempts_locked`` variable does not influence which boot target is
> +selected, only whether its ``remaining_attempts`` counter is decremented when
> +booting.
>  
>  If :ref:`global.bootchooser.retry <magicvar_global_bootchooser_retry>`
>  is enabled (set to ``1``), the bootchooser
> @@ -134,12 +136,12 @@ on the :ref:`reset reason <reset_reason>` (i.e. != WDG) using the
>  This will reset the ``remaining_attempts`` counter of the *last chosen* slot to
>  its default value (``reset_attempts``).
>  
> -Another option is to use ``attempts_locked``. Normally this should be controlled from
> +An additional option is to use ``attempts_locked``. Normally this should be controlled from
>  Linux userspace using the *barebox-state* tool, i.e.::
>  
> -  barebox-state -s  bootstate.attempts_locked=1
> +  barebox-state -s bootstate.attempts_locked=1
>  
> -It can also be locked via the :ref:`bootchooser command <command_bootchooser>`::
> +It can also be locked from barebox via the :ref:`bootchooser command <command_bootchooser>`::
>  
>    bootchooser -l
>  

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



