Delivery-date: Mon, 03 Nov 2025 09:52:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFqIQ-00EnV5-0L
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 09:52:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFqIP-0001jo-GG
	for lore@pengutronix.de; Mon, 03 Nov 2025 09:52:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xdXQLpmEKWH7h2UK3tapMP4xZ8gxpSYSj1h5XmY/7D0=; b=M5l4+k5FzonxfOUteJUZjoP3U6
	kE0v6zyv80LPLqiqHh8QBjWOC35s1B8nV+QgjfN5Jddc2eFRXRqozg7yrNDrI/a1oteFkegAtHBjA
	IJJ4BfPuzP5B4J42jj3UL7wdBaInI9DI/ao5zTEAS9duf47/5V2rBlsW3aN2hbkskjxjN/4bi0rxQ
	p0f9KjMx9KQGp2hd53AWaV/im1ANYLE5J3UZ7J+wOB2VHceIi64Tzuk39xiLYNiyqoqjQWdtCODCI
	78dhenovlWJTOD7RboVVrFyJWM11RrzzMZr+lmTd0fEXZclSEi9gggR3NmpmCl/RR5D8MW8GqPiYW
	A1BY0beg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFqHx-00000009T74-1h4T;
	Mon, 03 Nov 2025 08:51:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFqHv-00000009T6h-124a
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 08:51:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vFqHt-0001fA-Kn; Mon, 03 Nov 2025 09:51:41 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vFqHt-006pUT-1T;
	Mon, 03 Nov 2025 09:51:41 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vFqHt-00GbMc-1C;
	Mon, 03 Nov 2025 09:51:41 +0100
Date: Mon, 3 Nov 2025 09:51:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <aQhtHSHzotzjye99@pengutronix.de>
References: <20251029-dmesg-v2-1-c54c7daef91b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251029-dmesg-v2-1-c54c7daef91b@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_005143_283831_79F34FE8 
X-CRM114-Status: GOOD (  29.80  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] commands: dmesg: clear logbuffer fully if not
 requested otherwise
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Oct 29, 2025 at 02:18:27PM +0100, Jonas Rebmann wrote:
> Previously, `dmesg -c` would clear the logbuffer except for the last 10
> lines. This comes with a fair amount of surprise given linux `dmesg -c`
> clears the whole logbuffer.
> 
> Clear the complete logbuffer given `dmesg -c` but with an optional
> argument `dmesg -c [<num>]` to keep <num> lines.
> 
> While at it, add documentation for log_print(), and switch it from
> ctrlc() to ctrlc_non_interruptible(). This ensures that the complete
> execution of the dmesg command has no resched() point so that no other
> thread can intermittently modify the logbuffer, and that no message
> could arrive from another thread during log_print() and be interleaved
> with the dmesg output.
> 
> If loglevels are selected using -l or -p in addition to clearing being
> selected using -c, then messages of any loglevel are cleared.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
> Changes in v2:
> - Switch from ctrlc() to ctrlc_non_interruptible() instead of clearing
>   in log_print() (Thanks, Ahmad)
> - Improve documentation
> - Always clear all loglevels regardless of -l/-p (Thanks, Sascha)
> - Style improvements (Thanks, Ahmad)
> - Link to v1: https://lore.barebox.org/barebox/20251017-dmesg-v1-1-ac9c2fb021f6@pengutronix.de
> ---
>  .../migration-guides/migration-2025.11.0.rst       |  9 ++++++++
>  commands/dmesg.c                                   | 25 ++++++++++++----------
>  common/console_common.c                            | 12 ++++++++++-
>  3 files changed, 34 insertions(+), 12 deletions(-)
> 
> diff --git a/Documentation/migration-guides/migration-2025.11.0.rst b/Documentation/migration-guides/migration-2025.11.0.rst
> index a9c7abb66e..2649923bbc 100644
> --- a/Documentation/migration-guides/migration-2025.11.0.rst
> +++ b/Documentation/migration-guides/migration-2025.11.0.rst
> @@ -18,3 +18,12 @@ Karo TX6X
>  The barebox update handler for this SoM no longer unconditionally updates
>  /dev/mmc3.boot0, but instead it now updates the inactive boot partition
>  on /dev/mmc3 and then sets it as active allowing for power-fail safety.
> +
> +Shell
> +-----
> +
> +* An optional parameter was added to the `-c` option of `dmesg` allowing
> +  configuration of the number of lines to remain in the log buffer after
> +  clearing. When no parameter is provided to `-c`, zero is assumed, and no
> +  lines are retained. Earlier versions always left 10 lines of logs remain in
> +  the log buffer.

Moved this to the migration guide for v2025.12.0. while applying.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


