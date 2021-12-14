Delivery-date: Tue, 14 Dec 2021 08:31:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mx2HO-0061pc-TT
	for lore@lore.pengutronix.de; Tue, 14 Dec 2021 08:31:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mx2HN-0005NQ-DF
	for lore@pengutronix.de; Tue, 14 Dec 2021 08:31:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ee4jKBLQ1pFZa+d+BoPeLDzVPKNBsB2w211Vj/xd7s8=; b=39NwYJPAVEjrDG
	gYjDvWTPR0Tz3VLmi6SG1gHbhIs6GMlJkb+Zs9Ne6vCHmU7Xj63cTlbCe1bp7tFV8emW5OEmLbrri
	NDxTPO2KYH0w00/QZOtpkprheTudrpV275D/g7xVK8QmdIRzxyXcZ27K+NrbJKVNZH/GWuOul2ql4
	blKGGZBQ/GdPP5dhiPa8ZwkNJ/3rR0Yg8XpARGmL+PPE2sPkwDudiIWlew/+8iPGZ4vztJpFHAw//
	qBRvhBXp/IEejucl4fuxNygS0YL953uUf+C5E+JbCu4D9ebNSEKvGnKFToAn7HfGOlG7Dn6ShgXYX
	CM93FruLJiqabmjy0oWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mx2FX-00Crog-2P; Tue, 14 Dec 2021 07:29:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mx2E0-00Cr9B-N5
 for barebox@lists.infradead.org; Tue, 14 Dec 2021 07:27:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mx2Dz-0004qs-ED; Tue, 14 Dec 2021 08:27:47 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mx2Dz-0000Oe-5f; Tue, 14 Dec 2021 08:27:47 +0100
Date: Tue, 14 Dec 2021 08:27:47 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211214072747.GM6003@pengutronix.de>
References: <20211209105708.3517684-1-a.fatoum@pengutronix.de>
 <20211213222808.GL6003@pengutronix.de>
 <6780849f-e1f9-fdae-ffb6-02cdde4cdb55@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6780849f-e1f9-fdae-ffb6-02cdde4cdb55@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:27:08 up 3 days, 16:12, 40 users, load average: 0.03, 0.07, 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_232748_801083_385FCD13 
X-CRM114-Status: GOOD (  28.27  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] vsprintf: add support for printing raw buffers as
 hex (%*ph)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Dec 14, 2021 at 07:57:01AM +0100, Ahmad Fatoum wrote:
> On 13.12.21 23:28, Sascha Hauer wrote:
> > On Thu, Dec 09, 2021 at 11:57:06AM +0100, Ahmad Fatoum wrote:
> >> Import from Linux support for printing buffers as a hex string
> >> with a certain separator. For larger buffers consider using
> >> print_hex_dump(). Examples:
> >>
> >>   %*ph	00 01 02  ...  3f
> >>   %*phC	00:01:02: ... :3f
> >>   %*phD	00-01-02- ... -3f
> >>   %*phN	000102 ... 3f
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  lib/Kconfig    |  3 +++
> >>  lib/vsprintf.c | 50 ++++++++++++++++++++++++++++++++++++++++++++++++++
> >>  2 files changed, 53 insertions(+)
> >>
> >> diff --git a/lib/Kconfig b/lib/Kconfig
> >> index 718033e56e64..27e7bea6852f 100644
> >> --- a/lib/Kconfig
> >> +++ b/lib/Kconfig
> >> @@ -166,6 +166,9 @@ config PRINTF_UUID
> >>  config PRINTF_WCHAR
> >>  	bool
> >>  
> >> +config PRINTF_HEXSTR
> >> +	bool
> > 
> > So hexdumps are silently ignored when this option is disabled. Not sure
> > if this should really be configurable, but I think when it is
> > configurable it should be default y to avoid surprises.
> 
> It will be printed as a raw pointer when the option is disabled.
> There's no code in-tree that uses this format specifier yet,
> so I prefer to not make this the default and increase binary size.

Ok for now, but we should revise it once this actually gets used.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

