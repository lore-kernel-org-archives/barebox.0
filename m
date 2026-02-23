Delivery-date: Mon, 23 Feb 2026 09:50:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRe5-004lpY-20
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 09:50:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRe5-0005JY-Pu
	for lore@pengutronix.de; Mon, 23 Feb 2026 09:50:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mYmWe83TvMg9ujpFnXh3oERYzBXROOv8aw40fRUNFBY=; b=Rd/RqWHUhn7yTkwiZET8uY/vlG
	xjCVO+ImHPolVP6hBPORIiiJE316yMgP+AxlcB/cjEFZ7+xmFLo4Ngr2yU7M+pR0opgP5ohl79I5G
	CEuvUXojE4+stu4eyutaOOVbztcgyNlmtRkb0DCUKrpBSq98Y7YerkMQwU9t38laFoHeO7DIvF9jv
	KhMZDTymkIiKiTueEA+mTHs+affMgPlxcK3TIXMT9CZj4T/+xC4lyad97BbzRSpzHl4/du0ErBOcv
	fv83816rjh6gmbjTZxpRxpBCG2sNemEEe7ATWl7GRExPPmzVXZSvzLphc1x/6qZ8FjW/CU6WoDNKQ
	0sIGXFUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuRdf-0000000HRXD-1nEO;
	Mon, 23 Feb 2026 08:49:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuRdc-0000000HRWi-1VRE
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 08:49:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vuRda-0005GV-KL; Mon, 23 Feb 2026 09:49:54 +0100
Message-ID: <79cfdfd0-9e8f-4326-893e-a484064e468c@pengutronix.de>
Date: Mon, 23 Feb 2026 09:49:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Enrico_J=C3=B6rns?= <ejo@pengutronix.de>,
 barebox@lists.infradead.org
References: <20260220085130.1326621-1-ejo@pengutronix.de>
 <20260220085130.1326621-2-ejo@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260220085130.1326621-2-ejo@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_004956_442479_7F290873 
X-CRM114-Status: GOOD (  25.39  )
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
Subject: Re: [PATCH 2/2] Documentation: bootchooser: move attempts locking to
 own section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2/20/26 9:50 AM, Enrico Jörns wrote:
> Boot attempts locking is useful in specific scenarios, but is specialized
> enough that it should not obscure the default bootchooser flow description.
> 
> Give only brief hints in the main algorithm section and move the full
> description to a distinct section with its own anchor. Sharpen the
> wording throughout.
> 
> Signed-off-by: Enrico Jörns <ejo@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  Documentation/user/bootchooser.rst | 58 +++++++++++++++---------------
>  1 file changed, 29 insertions(+), 29 deletions(-)
> 
> diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
> index b38bae2c23..669ebf0a47 100644
> --- a/Documentation/user/bootchooser.rst
> +++ b/Documentation/user/bootchooser.rst
> @@ -83,28 +83,8 @@ attempts, there is also a built-in mechanism to reset the counters to their defa
>  controlled by the
>  :ref:`global.bootchooser.reset_attempts <magicvar_global_bootchooser_reset_attempts>`
>  variable.
> -
> -.. _bootchooser,attempts_lock:
> -
> -Alternatively, counting down the remaining attempts can be disabled by
> -locking bootchooser boot attempts.
> -This is done by defining a (32-bit) ``attempts_locked`` run-time variable and
> -setting its value to ``1`` (usually from userspace).
> -
> -In scenarios where the system is rebooted too frequently (after the ``remaining_attempts``
> -counter is decremented, but before it got incremented again after a successful boot), it can unintentionally fall
> -back to the other boot target.
> -The ``attempts_locked`` variable can be used to avoid this behavior.
> -Bootchooser is prevented from decrementing the ``remaining_attempts`` counter and falling back
> -to the other target. It comes with the trade-off that a slot that becomes broken
> -over time will no longer be detected as such and will be booted indefinitely.
> -
> -The variable affects all targets, is optional and its absence is
> -interpreted as ``0``, meaning that attempts are decremented normally.
> -
> -The ``attempts_locked`` variable does not influence which boot target is
> -selected, only whether its ``remaining_attempts`` counter is decremented when
> -booting.
> +Alternatively, the remaining attempts counters can be frozen globally by
> +enabling :ref:`boot attempts locking <bootchooser,attempts_lock>`.
>  
>  If :ref:`global.bootchooser.retry <magicvar_global_bootchooser_retry>`
>  is enabled (set to ``1``), the bootchooser
> @@ -136,18 +116,38 @@ on the :ref:`reset reason <reset_reason>` (i.e. != WDG) using the
>  This will reset the ``remaining_attempts`` counter of the *last chosen* slot to
>  its default value (``reset_attempts``).
>  
> -An additional option is to use ``attempts_locked``. Normally this should be controlled from
> -Linux userspace using the *barebox-state* tool, i.e.::
> +An additional option is to use :ref:`boot attempts locking <bootchooser,attempts_lock>`
> +to fully disable automatic fallback.
>  
> -  barebox-state -s bootstate.attempts_locked=1
> +.. _bootchooser,attempts_lock:
> +
> +Boot Attempts Locking
> +#####################
> +
> +In scenarios where the system is rebooted too frequently (after the ``remaining_attempts``
> +counter is decremented, but before it is incremented again after a successful boot), it can unintentionally fall
> +back to the other boot target.
> +This can be avoided by enabling boot attempt locking.
> +If enabled, bootchooser is prevented from decrementing the ``remaining_attempts`` counter and falling back
> +to the other target. This comes with the trade-off that a slot that becomes broken
> +over time will no longer be detected as such and will be booted indefinitely.
> +
> +Attempts locking can be controlled by an optional (32-bit) ``attempts_locked`` run-time variable.
> +Setting its value to ``1`` enables locking for all
> +boot targets; setting it to ``0`` disables locking.
>  
> -It can also be locked from barebox via the :ref:`bootchooser command <command_bootchooser>`::
> +The ``attempts_locked`` variable does not influence which boot target is
> +selected, only whether the ``remaining_attempts`` counter is decremented on each boot.
>  
> -  bootchooser -l
> +To enable boot attempts locking from Linux userspace using the *barebox-state*
> +tool, run::
> +
> +  barebox-state -s bootstate.attempts_locked=1
>  
> -or unlocked::
> +It can also be controlled from barebox via the :ref:`bootchooser command <command_bootchooser>`::
>  
> -  bootchooser -L
> +  bootchooser -l # lock
> +  bootchooser -L # unlock
>  
>  
>  .. _dt-utils: https://git.pengutronix.de/cgit/tools/dt-utils

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



