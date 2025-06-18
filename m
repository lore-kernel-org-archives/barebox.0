Delivery-date: Wed, 18 Jun 2025 10:19:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRo14-008YEY-1x
	for lore@lore.pengutronix.de;
	Wed, 18 Jun 2025 10:19:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRo13-0004Xn-Re
	for lore@pengutronix.de; Wed, 18 Jun 2025 10:19:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pt3//VWCipFOgP8/uN5LuxZoLvgkHYdHk2smsB0RquI=; b=qggVxoB3NeA3cUesAkVCRzzyw9
	aQPmUozAGbebX8NxaMllORo2LMLDkQQ0LcZHJcuQCyzW3xNW3WeG2RpZrXUskv4z8cpGh6ZYGr2E8
	Te7fR5AFb7MOJprJas5d/dE/qZSVvKUr9HG1ycGg1vtv2Cm4S7YFj7SY9godVnVL8FdwhZXbiMefQ
	fZ+nyU/dcjcbC80uOI3F27AfPQxWnw4fYF9xyKxXGfSpDuepM+QlAYjJul2JZnmbMm1dD3M2WS/co
	EX8sjTrZH9C+pwJ79aMFKrzPyZtshPuKRKfxa7BdjOBOrmh8Q+LMSzNLQfF2jTzruQjulz421mD7u
	89brUTXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRo0R-00000009O9e-2UD7;
	Wed, 18 Jun 2025 08:18:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRnyT-00000009Nu9-2cl3
	for barebox@lists.infradead.org;
	Wed, 18 Jun 2025 08:16:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uRnyS-0001OP-Co; Wed, 18 Jun 2025 10:16:48 +0200
Message-ID: <23c64cf8-dabe-4468-b9d5-888dab62186e@pengutronix.de>
Date: Wed, 18 Jun 2025 10:16:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Lars Schmidt <l.schmidt@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20250616-bootchooser-lock-v2-0-df1f0d118635@pengutronix.de>
 <20250616-bootchooser-lock-v2-4-df1f0d118635@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250616-bootchooser-lock-v2-4-df1f0d118635@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_011649_667560_83A4FF35 
X-CRM114-Status: GOOD (  19.25  )
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
Subject: Re: [PATCH v2 4/4] Documentation: migration-2025.08.0: add
 information about attempts_locked
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 6/16/25 17:06, Lars Schmidt wrote:
> Document the newly added feature.

The migration guide is just pointing out things to be aware of when
updating and is not the documentation per se.

No need to resend just for that, but if you are going to resend anyway,
you may want to adjust the commit message here.

> 
> Signed-off-by: Lars Schmidt <l.schmidt@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

> ---
>  Documentation/migration-guides/migration-2025.08.0.rst | 5 +++++
>  Documentation/user/bootchooser.rst                     | 3 +++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/Documentation/migration-guides/migration-2025.08.0.rst b/Documentation/migration-guides/migration-2025.08.0.rst
> index d13d5c770d5e7688e0299184b0b8b938db160fca..da60132e7d8c784b08a43c8032ee7e4dc7cb7991 100644
> --- a/Documentation/migration-guides/migration-2025.08.0.rst
> +++ b/Documentation/migration-guides/migration-2025.08.0.rst
> @@ -1,3 +1,8 @@
>  Release v2025.08.0
>  ==================
>  
> +Bootchooser
> +-----------
> +
> +Bootchooser now interprets a top-level ``attempts_locked`` variable.
> +For more information, see :ref:`attempts lock feature <bootchooser,attempts_lock>`
> diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
> index ab0b6c3fc895226f5aa4590944a2cd675a56d985..d123e8d34e63fcfb6a725cbe1aeca40a7dbbeb87 100644
> --- a/Documentation/user/bootchooser.rst
> +++ b/Documentation/user/bootchooser.rst
> @@ -77,6 +77,9 @@ no remaining attempts left.
>  To prevent ending up in an unbootable system after a number of failed boot
>  attempts, there is also a built-in mechanism to reset the counters to their defaults,
>  controlled by the ``global.bootchooser.reset_attempts`` variable.
> +
> +.. _bootchooser,attempts_lock:
> +
>  Alternatively, counting down the remaining attempts can be disabled by
>  locking bootchooser boot attempts.
>  This is done by defining a (32-bit) ``attempts_locked`` variable in the
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



