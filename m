Delivery-date: Mon, 07 Aug 2023 08:33:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qStoT-00AhLB-K5
	for lore@lore.pengutronix.de; Mon, 07 Aug 2023 08:33:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qStoR-0002QP-QB
	for lore@pengutronix.de; Mon, 07 Aug 2023 08:33:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2itTf4mXCzxt4RM9MCXQiSNMDsNhU9J2T62PrFOLtzM=; b=C3LDK00+Gq5R5B0aiPv7WBXpHB
	rJDe72DT1XIgg41Grh2mmQh3fJypJuFLrSJC4rqGFp2xuTA0Z8geNHB4xK/hU4CyArWG8F9/ulYfg
	PIScgxc8vLwGre5KMy+FsuCemYyAjGHCUbxAL1yK/IjallNR6aNuLNUj7Ta1tktKcPyXIeYcvDuIo
	PY/YsYQylJPM3hp+wXHMwDCFF2VClHGQ01ZaNQ48afKONEb3ZmNWE1yOaiyeeUbZTq8o9vSgNeSiN
	hueaWF68shdTi6mabfekiKZX+0C66fpXIlmDa793RVGMWPn+azgDvBMH4O8B2U+WzRvrjwwGL80+p
	okqCvwAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qStmy-00GH3H-22;
	Mon, 07 Aug 2023 06:32:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qStmv-00GH2W-0o
	for barebox@lists.infradead.org;
	Mon, 07 Aug 2023 06:32:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qStmq-0002My-QJ; Mon, 07 Aug 2023 08:32:16 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qStmq-0003nk-H2; Mon, 07 Aug 2023 08:32:16 +0200
Date: Mon, 7 Aug 2023 08:32:16 +0200
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230807063216.GH26314@pengutronix.de>
References: <20230804094650.2094025-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230804094650.2094025-1-rhi@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230806_233221_310785_B0C22026 
X-CRM114-Status: GOOD (  17.00  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] Convert License Identifiers to SPDX 3.0 for files
 originating from LiMon
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Aug 04, 2023 at 11:46:51AM +0200, Roland Hieber wrote:
> The respective U-Boot commit was ported to Barebox in commit
> 0b5d36d77b6022bd1f40 (2023-07-27, Sascha Hauer: "Add SPDX License
> identifier for files originating from LiMon"), but the U-Boot change was
> already made in 2014, and the SPDX specification was updated since then
> and deprecated the "GPL-2.0" identifier in favour of "GPL-2.0-only".
> Update the license identifiers to SPDX 3.0 specification, which we also
> use everywhere else in the Barebox code.
> 
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  include/net.h | 2 +-
>  net/dhcp.c    | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


