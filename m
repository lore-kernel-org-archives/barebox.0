Delivery-date: Fri, 28 Aug 2026 16:22:08 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzxT5-008BWf-0z
	for lore@lore.pengutronix.de;
	Fri, 28 Aug 2026 16:22:08 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DD095202427
	for <lore@pengutronix.de>; Fri, 28 Aug 2026 16:22:07 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="qZ/JN8H2";
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Cc:To:Subject:
	From:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cfVmMYD42aIlAM7XJr1jhOONAxjcWHf5b6MvVqKoRe8=; b=qZ/JN8H24x4t3W
	K5d958ScWwJ8a4Uh6rkIV+lKIrK+i1+bhTItHTEKTOoSMZ59LSzEid0xuk+EnFRByNMmGWQ3aBUij
	6QVQrpQjJfgfYQUwAxd9Eyx1YHb8d7xu7LE28ghK2Bs8gtTmSvL4SaMLwcQDBAhkXHCPfbG5WyGb9
	j1pidTP72fHU5QL3F9LJ9x/EauQucqDL7T3XCAlvonFVX2mZQSfl3yFJ2aBfFjXmF7qA0lxdSVn+X
	wO+wgW68w3FBorij40tLbvpbDrZvPxRjVqM4YHPNnaKKjOQdAKLXOsdokemtiNlcxRxzlSAfyAWlZ
	HmxCtwZ3fikbLJfXevfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxRy-00000005xyA-13xR;
	Fri, 28 Aug 2026 14:20:58 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxRt-00000005xxG-1IPA
	for barebox@lists.infradead.org;
	Fri, 28 Aug 2026 14:20:56 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 62EFA200F45;
	Fri, 28 Aug 2026 16:20:51 +0200 (CEST)
Message-ID: <fe4f0bca-9946-4398-9c05-20c3f63d1fd0@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [RFC next 2/2] commands: lvm: inspect VGs, activate LVs
To: "Tobias Waldekranz" <tobias@waldekranz.com>
Cc: barebox@lists.infradead.org
In-Reply-To: <20260824183203.3759144-3-tobias@waldekranz.com>
References: <20260824183203.3759144-1-tobias@waldekranz.com>
 <20260824183203.3759144-3-tobias@waldekranz.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Fri, 28 Aug 2026 14:20:50 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_072055_199723_2592139F 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-24 18:31, Tobias Waldekranz wrote: > Provide the
    most rudimentary commands needed to inspect and activate > volume groups
   (VGs) and logical volumes (LVs). > > Signed-off-by: Tobias Waldekra [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-55.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:tobias@waldekranz.com,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 9fgyjst83mhqx9acdfok89tsttkx4aby
X-Rspamd-Queue-Id: DD095202427

On 2026-08-24 18:31, Tobias Waldekranz wrote:
> Provide the most rudimentary commands needed to inspect and activate
> volume groups (VGs) and logical volumes (LVs).
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
>  commands/Kconfig  |  11 ++
>  commands/Makefile |   1 +
>  commands/lvm.c    | 264 ++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 276 insertions(+)
>  create mode 100644 commands/lvm.c
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 08fe544ee1..d7e3bab3f9 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -808,6 +808,17 @@ config CMD_VERITYSETUP
>  	  commands:
>  	        open <data-dev> <name> <hash-dev> <root-hash>
>  
> +config CMD_LVM
> +	tristate
> +	depends on DM_LVM
> +	prompt "lvm"
> +	help
> +	  lvm - inspect and activate LVM2 logical volumes
> +
> +	  commands:
> +	        pvs / vgs / lvs
> +	        activate <vg>/<lv> [<name>]

This is not consistent with the implementation which has "info" and
"activate" as subcommands.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



