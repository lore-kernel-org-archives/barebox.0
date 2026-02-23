Delivery-date: Mon, 23 Feb 2026 13:06:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUhO-004pGI-2D
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 13:06:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUhO-0002xW-VH
	for lore@pengutronix.de; Mon, 23 Feb 2026 13:06:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nImDTmrKbO7tk+XXlKgdvw8SvcMUgZJESzHLzuypVg8=; b=SRH5s/AXfnr8ZBvfspgqa/94TG
	bJzkZONJp0jZwviPnLX0SyS0gA8JIz9eq2X8E2gv1QP0CIlvV2bTwK8hibA2xeT80SmN9Y4QVe6hQ
	pCOhfWFqSI2JcvtDv6vt4Nh2ugHMnYLYX3SNuZq37brjVq6/UX+emzwdIlj4E3NYHEhfRsnQKsUNL
	L3KB7IT6dzsirxjaN7fU3903hzEvqde4T8eZn6H59VXuhGWWATnXIyrKJXE08bLp+9Z2EPnFjVngE
	SxpKv5urv5mDQTexnFJS9PxA8NlJ/s0L2BWEkUPrmwg1dlCeZyAgm7nLmc/n3qnJpPLwe7O5TWynl
	/v4dUM1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUgs-00000000FbH-3xtj;
	Mon, 23 Feb 2026 12:05:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUgp-00000000Fau-44Q5
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 12:05:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vuUgo-0002tB-0G; Mon, 23 Feb 2026 13:05:26 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vuUgm-002E0D-1Q;
	Mon, 23 Feb 2026 13:05:25 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1vuUgn-0000000183z-2udi;
	Mon, 23 Feb 2026 13:05:25 +0100
Date: Mon, 23 Feb 2026 13:05:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org, "Claude Opus 4.6" <noreply@anthropic.com>
Message-ID: <aZxChX3LLwJqhLHh@pengutronix.de>
References: <20260223113446.638135-1-a.fatoum@barebox.org>
 <20260223113446.638135-4-a.fatoum@barebox.org>
 <aZw_ESRF71GCfD6Y@pengutronix.de>
 <e9d4562c-b3cc-40e9-899f-f929e25d135f@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e9d4562c-b3cc-40e9-899f-f929e25d135f@barebox.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_040528_030738_134B13CC 
X-CRM114-Status: GOOD (  26.43  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] MAKEALL: error out on options placed after the
 defconfig argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Feb 23, 2026 at 12:52:52PM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> On 2/23/26 12:50 PM, Sascha Hauer wrote:
> > On Mon, Feb 23, 2026 at 12:31:34PM +0100, Ahmad Fatoum wrote:
> >> getopts stops parsing at the first non-option argument, so options
> >> like -k after the defconfig name silently end up as positional
> >> arguments. For bare defconfigs these get misinterpreted as pytest
> >> options and are silently ignored, leading to a build without the
> >> intended configuration.
> >>
> >> Detect this by checking for trailing arguments when any positional
> >> argument is a bare defconfig (not a labgrid .yaml config, where
> >> extra arguments are intentionally forwarded to pytest).
> > 
> > Can't we use getopt for MAKEALL instead of getopts? getopt just does the
> > right thing.
> 
> When using MAKEALL with a labgrid yaml instead of a defconfig, it
> derives the defconfig name and interprets the options after the yaml as
> pytest options, so use of getopt would break that.

You can use -- as final argument which stops getopt parsing.

Sascha

> 
> Cheers,
> Ahmad
> 
> > 
> > Sascha
> > 
> >>
> >> Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> >> ---
> >>  MAKEALL | 9 +++++++++
> >>  1 file changed, 9 insertions(+)
> >>
> >> diff --git a/MAKEALL b/MAKEALL
> >> index c36aed625820..dd0b7f8003cc 100755
> >> --- a/MAKEALL
> >> +++ b/MAKEALL
> >> @@ -440,6 +440,15 @@ else
> >>  
> >>  		configs+=($i)
> >>  	done
> >> +	if [ ${#pytest_opts[@]} -gt 0 ]; then
> >> +		for i in "${configs[@]}"; do
> >> +			if ! [[ $i =~ .yaml$ ]]; then
> >> +				echo "error: unexpected arguments after defconfig: ${pytest_opts[*]}" >&2
> >> +				echo "hint: place all options before the defconfig argument" >&2
> >> +				exit 1
> >> +			fi
> >> +		done
> >> +	fi
> >>  	for i in "${configs[@]}"; do
> >>  		config=$i
> >>  		if [[ $i =~ ^.*/([^/]+)/([^@]*@|)([^.]+).yaml$ ]]; then
> >> -- 
> >> 2.47.3
> >>
> >>
> >>
> > 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


