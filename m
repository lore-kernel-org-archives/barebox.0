Delivery-date: Mon, 16 Jun 2025 14:05:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR8aq-007uZm-2k
	for lore@lore.pengutronix.de;
	Mon, 16 Jun 2025 14:05:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR8aq-0002zD-7v
	for lore@pengutronix.de; Mon, 16 Jun 2025 14:05:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hQCCc7VUgXwn5PcHVH5ZyXCMr07v2fXBYfUkwTpKveY=; b=cZhTEGnuoj1/w2DZx0cMGkHVLt
	AHwds7H4IBFTmi9FdhJykJkVl1c5aNiR6XKR1PmnBw9cT/I/FeXzq44Meq/LFs05QEi0FB0HGbNHx
	mzxMHbaiCimVuJaq54vU6UUF75oNd7ujgr1BDb75Nb6kHMSbSgHolBIxOmaSluYhWRTD1LJxGF2Xt
	hUbFZjJVmUmPRSDQiPYhBOMbfkzSBnSYfg2oltRA8zZuXARhcKJsryuIsiRXS18rsqD2nVQMTNDBf
	VGBCHYlrJvSJFff9PJZaDanyoMCPr57cU3RPbJ0gCP4nv+ls0GNR6JSq6d8omJcaJWcPPMwTGo1lQ
	tZWvNyrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR8aO-00000004Iv0-1iWd;
	Mon, 16 Jun 2025 12:05:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR7QQ-000000047s8-1A7T
	for barebox@lists.infradead.org;
	Mon, 16 Jun 2025 10:50:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uR7QP-0007jZ-4q; Mon, 16 Jun 2025 12:50:49 +0200
Message-ID: <2cfc5998-f204-4661-82c2-5738d08584bb@pengutronix.de>
Date: Mon, 16 Jun 2025 12:50:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Lars Schmidt <l.schmidt@pengutronix.de>, barebox@lists.infradead.org
References: <20250613140805.1229525-1-l.schmidt@pengutronix.de>
 <20250613140805.1229525-4-l.schmidt@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250613140805.1229525-4-l.schmidt@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_035050_337624_DECA9CC8 
X-CRM114-Status: GOOD (  20.25  )
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
Subject: Re: [PATCH 3/4] Documentation: bootchooser: add information about
 slots_locked
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 6/13/25 16:08, Lars Schmidt wrote:
> The new slots_locked variable does have influence on
> remaining_attempt counter.
> 
> Signed-off-by: Lars Schmidt <l.schmidt@pengutronix.de>
> ---
>  Documentation/user/bootchooser.rst | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
> index 351e1d14e1..306443270a 100644
> --- a/Documentation/user/bootchooser.rst
> +++ b/Documentation/user/bootchooser.rst
> @@ -77,6 +77,16 @@ no remaining attempts left.
>  To prevent ending up in an unbootable system after a number of failed boot
>  attempts, there is also a built-in mechanism to reset the counters to their defaults,
>  controlled by the ``global.bootchooser.reset_attempts`` variable.
> +Alternatively, counting down the remaining attempts can be disabled by
> +locking the bootchooser slots.

bootchooser boot attempts

> +This is done by defining a (32-bit) ``slots_locked`` variable in the

attempts_locked.

> +bootstate and setting its value to ``1`` (usually from userspace).
> +
> +The variable affects all slots, is optional and its absence is

all targets

> +interpreted as ``0``, meaning that attempts are decremented normally.
> +
> +The ``slots_locked`` value does not influence the decision on which slot

attempts_locked

> +to boot if any, only whether to decrement the attempts when booting.
>  
>  If ``global.bootchooser.retry`` is enabled (set to ``1``), the bootchooser
>  algorithm will iterate through all valid boot targets (and decrease their
> @@ -107,6 +117,19 @@ on the :ref:`reset reason <reset_reason>` (i.e. != WDG) using the
>  This will reset the ``remaining_attempts`` counter of the *last chosen* slot to
>  its default value (``reset_attempts``).
>  
> +Another option is to use ``slots_locked``.

attempted_locked

> +Normally this should be controlled from Linux userspace using the *barebox-state* tool, i.e.::
> +
> +  barebox-state -s  bootstate.slots_locked=1

attempts_locked

> +
> +It can also be locked via the :ref:`bootchooser command <command_bootchooser>`::
> +
> +  bootchooser -l
> +
> +or unlocked::
> +
> +  bootchooser -L
> +
>  
>  .. _dt-utils: https://git.pengutronix.de/cgit/tools/dt-utils
>  

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



