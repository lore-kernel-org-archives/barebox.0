Delivery-date: Thu, 04 Jan 2024 10:11:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLJlU-003Ktf-0C
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 10:11:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLJlT-0000iT-0Z
	for lore@pengutronix.de; Thu, 04 Jan 2024 10:11:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5u+q+gaWFhn6SAFtq6JiKm64pb9donIbqWqbR9ZGKh8=; b=0rF1Q0N50yQXJV38eUwmLX0ztV
	WfsQH7VeI+ZyjnWpdFd22VQGjO2PvlWznl6dNcfbrS97MZiitJj1HALum8rbZIUYERLS844ERGDn6
	yFbEXDc5B/fbw+4Qa4mblwuXLDMCvl7iai0GSR89+dUnVcvlZaZAmIFdK7KRTtElZV3le2iAQQew8
	3qyA3Uics6TEWJ/KKVh7sl8UG3M4dR0+LrrTFZVs1DYBlypy1x8DRKG1xpubcNSHDLIdFIWAEdzHA
	ZMxFOH5mJuz+s3sPzsFzjhTFqroh0zWcVfa/jSKZlB5QpGuQ6TN/3ffgLpzzD9E5+qfXtkE7qpJNp
	xUkJsqCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLJkR-00DKAl-0D;
	Thu, 04 Jan 2024 09:10:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLJkO-00DK8Y-0G
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 09:10:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLJkM-0000T2-TH; Thu, 04 Jan 2024 10:10:38 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLJkM-000JP0-Gx; Thu, 04 Jan 2024 10:10:38 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLJkM-00ABq5-Eg; Thu, 04 Jan 2024 10:10:38 +0100
Date: Thu, 4 Jan 2024 10:10:38 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240104091038.GM1318922@pengutronix.de>
References: <20240103101748.2629927-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240103101748.2629927-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_011040_119746_CEAB3F2A 
X-CRM114-Status: GOOD (  16.36  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/2] compiler: fix clang and address sanitizer coexistance
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jan 03, 2024 at 11:17:46AM +0100, Ahmad Fatoum wrote:
> When built with clang + AddressSanitizer, global variables end up with
> a redzone that can break linker list elements.
> 
> As clang isn't officially supported (yet), this can go into next.
> 
> Ahmad Fatoum (2):
>   compiler: define __ll_elem for linker list elements
>   treewide: mark linker list elements with  __ll_elem

Applied, thanks

Sascha

> 
>  drivers/clk/clk.c              |  3 +-
>  include/command.h              |  4 +--
>  include/deep-probe.h           |  3 +-
>  include/image-metadata.h       |  4 +--
>  include/init.h                 | 60 +++++++++++++++++-----------------
>  include/linux/clk.h            |  2 +-
>  include/linux/compiler_types.h |  6 ++++
>  include/linux/export.h         | 11 +++----
>  include/linux/pci.h            |  4 +--
>  include/magicvar.h             |  7 ++--
>  include/ratp_bb.h              |  3 +-
>  11 files changed, 57 insertions(+), 50 deletions(-)
> 
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


