Delivery-date: Tue, 17 Jun 2025 10:49:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRS0L-008DJ8-0a
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 10:49:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRS0K-000772-KH
	for lore@pengutronix.de; Tue, 17 Jun 2025 10:49:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Cez1S1i/trnzBD5afCGK7N/JuMaY+G1A5Fq/pdpliEk=; b=ZzI4tfO3TVYjVXERzhi9uVBAfZ
	T7XnBmhvCzinB2dN/ldJSTsBIMVisAyMD1lgRE6XJYW7GfttLQI8wTZ7G8Q8GUJL6lj5j0jWXwefO
	/nyzp8b35AFgPCN6HAJ+bzmGHFn7+sSgJWGWTCiQQU+EVSiremgVZ0ARvf1sU7bafKyMP/n6KBG1e
	A9ujgXtJzmAdUatTZ6dNO7sqUykAKUBgnDjuhtM55ggD5Y58fO4Foqn2jZjLqIzvvUlLoE1t7BdkK
	tbWQgh3BblngiEhcjphLxgzCNHnhd7RLpo/EebOT73UWyeezmincB+qJvRo72cONBUcAWKTH3ar8+
	HJ/c6PaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRzs-00000006e7I-01bo;
	Tue, 17 Jun 2025 08:48:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRtK-00000006d1p-2FFx
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 08:42:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uRRtJ-00059n-7a; Tue, 17 Jun 2025 10:42:01 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uRRtJ-003wcm-0A;
	Tue, 17 Jun 2025 10:42:01 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uRRtI-001OOZ-33;
	Tue, 17 Jun 2025 10:42:00 +0200
Date: Tue, 17 Jun 2025 10:42:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Lars Schmidt <l.schmidt@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aFEqWBIvAqatnZKx@pengutronix.de>
References: <20250616-bootchooser-lock-v2-0-df1f0d118635@pengutronix.de>
 <20250616-bootchooser-lock-v2-3-df1f0d118635@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250616-bootchooser-lock-v2-3-df1f0d118635@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_014202_577225_D5801EE5 
X-CRM114-Status: GOOD (  22.96  )
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

On Mon, Jun 16, 2025 at 05:06:56PM +0200, Lars Schmidt wrote:
> The new attempts_locked variable does have influence on
> remaining_attempts counter.
> 
> While at it, also make mention in the bootstate.dtsi.
> 
> Signed-off-by: Lars Schmidt <l.schmidt@pengutronix.de>
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

This describes what it does, but not what it's good for. Could you add a
few sentences about it?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


