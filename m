Delivery-date: Mon, 16 Jun 2025 20:29:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uREah-0080jz-0i
	for lore@lore.pengutronix.de;
	Mon, 16 Jun 2025 20:29:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uREag-0002x1-FL
	for lore@pengutronix.de; Mon, 16 Jun 2025 20:29:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YOAf4O+ddsJopCEG6E8vWW4y+Df61FEdepPk/dSPqRA=; b=LF9F+bURTXwWAwVqxOtPGz2CRu
	jRuh2U+w7D/pIiCTsnmNDePLYeOSZNwJHAp3QwiD5Ov+vB3iVd/SWEx5m0FEqfqJDzeSSJwiz3iYY
	ZJHymfu/b1oeTkti6GesiL+5AfPdK5lNf2+fIY9sMfwTlfz4nuUZ1XSGUm340Haw/sygelrcU1vEz
	UTYTHpuOKTosD5kKcDmRMkTBzjzFJD7uLt8TMqXV0byXY/HCxdmE9XbtUwQ7zNUgusrYRPBVGdQk9
	uLoKx9cj7ZvTbu1/HrnqWWZ3Kq7V2avu4sYHXVOzA/EYalK/By4xo7JTP8jpqABvnnJ9/BWIWqLzo
	J9gPW2dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uREZv-00000005Dat-3Hc0;
	Mon, 16 Jun 2025 18:29:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRBrM-00000004tsL-0fVs
	for barebox@bombadil.infradead.org;
	Mon, 16 Jun 2025 15:34:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=YOAf4O+ddsJopCEG6E8vWW4y+Df61FEdepPk/dSPqRA=; b=BmrRJaQtxlVqfEQu69vg/w79E1
	otPFqkeyft3ru4OzqC6LUC/zPTS9GMe5/SHgGldUQ9MaOAP9+duFFKnhFPFXbPJJwqB7lCuUYLH8R
	XPXIFRC1FRfTIAhO2rTjaB9r2+d0ru4p1AUjnEuo8W/JmOr8aSatY+co3giwA0v9pGwKQSj0xBwH7
	oOWSQtZLC0w8Cp6AMXXoUxgS1vt431S/LUkyvahlyhw59JtN/xWBIPKrtyJXR8pJBKAvbKBrVqeoX
	c5cwh0QGoaKnrJ4+nebJFfl+kWcJlF6tqCElbfGTMVcj+PySchDrCkFU8E73FpXwN3rr5ulmLslgM
	OgaRLp8g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRBrJ-00000003cg6-2MUv
	for barebox@lists.infradead.org;
	Mon, 16 Jun 2025 15:34:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uRBrI-00073y-9v; Mon, 16 Jun 2025 17:34:52 +0200
Message-ID: <6470c77d-deb7-454b-88b8-39775ba8e423@pengutronix.de>
Date: Mon, 16 Jun 2025 17:34:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Lars Schmidt <l.schmidt@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20250616-bootchooser-lock-v2-0-df1f0d118635@pengutronix.de>
 <20250616-bootchooser-lock-v2-3-df1f0d118635@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250616-bootchooser-lock-v2-3-df1f0d118635@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_163453_870177_7F808C3C 
X-CRM114-Status: GOOD (  23.45  )
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
Subject: Re: [PATCH v2 3/4] Documentation: bootchooser: add information about
 attempts_locked
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 6/16/25 17:06, Lars Schmidt wrote:
> The new attempts_locked variable does have influence on
> remaining_attempts counter.

This commit message feels incomplete.

> 
> While at it, also make mention in the bootstate.dtsi.
> 
> Signed-off-by: Lars Schmidt <l.schmidt@pengutronix.de>

The diff looks fine though:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  Documentation/user/bootchooser.rst | 23 +++++++++++++++++++++++
>  arch/arm/dts/bootstate.dtsi        |  5 +++++
>  2 files changed, 28 insertions(+)
> 
> diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
> index 351e1d14e1ead6ba8d329c03c0bc7ed28b523df0..ab0b6c3fc895226f5aa4590944a2cd675a56d985 100644
> --- a/Documentation/user/bootchooser.rst
> +++ b/Documentation/user/bootchooser.rst
> @@ -77,6 +77,16 @@ no remaining attempts left.
>  To prevent ending up in an unbootable system after a number of failed boot
>  attempts, there is also a built-in mechanism to reset the counters to their defaults,
>  controlled by the ``global.bootchooser.reset_attempts`` variable.
> +Alternatively, counting down the remaining attempts can be disabled by
> +locking bootchooser boot attempts.
> +This is done by defining a (32-bit) ``attempts_locked`` variable in the
> +bootstate and setting its value to ``1`` (usually from userspace).
> +
> +The variable affects all targets, is optional and its absence is
> +interpreted as ``0``, meaning that attempts are decremented normally.
> +
> +The ``attempts_locked`` value does not influence the decision on which target
> +to boot if any, only whether to decrement the attempts when booting.
>  
>  If ``global.bootchooser.retry`` is enabled (set to ``1``), the bootchooser
>  algorithm will iterate through all valid boot targets (and decrease their
> @@ -107,6 +117,19 @@ on the :ref:`reset reason <reset_reason>` (i.e. != WDG) using the
>  This will reset the ``remaining_attempts`` counter of the *last chosen* slot to
>  its default value (``reset_attempts``).
>  
> +Another option is to use ``attempts_locked``. Normally this should be controlled from
> +Linux userspace using the *barebox-state* tool, i.e.::
> +
> +  barebox-state -s  bootstate.attempts_locked=1
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
> diff --git a/arch/arm/dts/bootstate.dtsi b/arch/arm/dts/bootstate.dtsi
> index aa767d4e3b966244b01702bbc2bdcd5c95ef7009..733441fb2697b283dc784b00b012e11ad671bb15 100644
> --- a/arch/arm/dts/bootstate.dtsi
> +++ b/arch/arm/dts/bootstate.dtsi
> @@ -42,4 +42,9 @@ last_chosen@10 {
>  		reg = <0x10 0x4>;
>  		type = "uint32";
>  	};
> +
> +	attempts_locked@14 {
> +		reg = <0x14 0x4>;
> +		type = "uint32";
> +	};
>  };
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



