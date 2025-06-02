Delivery-date: Mon, 02 Jun 2025 11:36:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM1aR-002uZ8-04
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 11:36:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM1aQ-0005Hf-Ej
	for lore@pengutronix.de; Mon, 02 Jun 2025 11:36:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=023ykS0H9k9HEbaVQthOqqiRHaglOK5CY0x1NNTI774=; b=k2f9Sw7AHIWvdJpFvzWUKgWndZ
	2t63874nLhsEld7z2Mfig0m4t19WrLO3JkGhnLoTYd18iZv6wDF0rARnAsw1FVk19lDNnpziLqY1F
	bBPwxqOvDephZyZIdZB238NR3PzrJjBPWntPl1rIR+YhkMI8hLJlK5adk9XRYS4hMNcIViqj1I5hY
	/Ndzy/Z23aiJOtrb0cJvDxoVyFl3drlwyLHxVm/X/goDiGPCVK8D8ZfOX6+OGO9jJt25s1Ul/qYeV
	whi9Q6q2DyRj6Eio6sd7TVkOno0M5xJ659SIKJaHbmDfHuOaCCqzG6R74u/+Aq53V66b2q5/XXKkQ
	tCSnIH8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM1Zv-0000000755g-0Un7;
	Mon, 02 Jun 2025 09:35:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM1YI-000000074uy-3wo3
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 09:33:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uM1YH-0004e6-LA; Mon, 02 Jun 2025 11:33:53 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uM1YH-001QmN-1W;
	Mon, 02 Jun 2025 11:33:53 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uM1YH-006amQ-18;
	Mon, 02 Jun 2025 11:33:53 +0200
Date: Mon, 2 Jun 2025 11:33:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aD1wAcoFucaHQ-OY@pengutronix.de>
References: <20250530114106.1009454-1-o.rempel@pengutronix.de>
 <20250530114106.1009454-3-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250530114106.1009454-3-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_023354_985772_49B24D8D 
X-CRM114-Status: GOOD (  19.76  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 2/7] nvmem: rmem: add write and protect support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, May 30, 2025 at 01:41:01PM +0200, Oleksij Rempel wrote:
> Add reg_write and reg_protect operations to the rmem NVMEM driver.
> This makes rmem devices writable (they were previously read-only via the
> NVMEM interface due to lacking reg_write) and allows specific regions
> to be marked read-only.
> 
> The primary motivation is to improve testing of NVMEM consumer code that
> handles write protection, by enabling rmem to emulate such hardware,
> particularly in sandbox environments.

This is some quite complex code with lots of possibilities to introduce
bugs. nvmem devices are rather small and your motivation is debugging,
so I suggest to invest 1/8 of the nvmem device in memory and use a
bitmap instead of lists of ranges.

> +/**
> + * rmem_ranges_overlap - Check if two memory ranges overlap.
> + * @offset1: Starting offset of the first range.
> + * @len1:    Length of the first range.
> + * @offset2: Starting offset of the second range.
> + * @len2:    Length of the second range.
> + *
> + * Compares two memory ranges, defined by their starting offsets and
> + * lengths, to determine if they have any common region. Ranges with
> + * zero length are considered non-overlapping.
> + *
> + * The ranges are treated as inclusive, i.e., a range starting at @offset
> + * with length @len covers all bytes from @offset to @offset + @len - 1.
> + *
> + * Return: True if the ranges overlap, false otherwise.
> + */
> +static bool rmem_ranges_overlap(unsigned int offset1, size_t len1,
> +				unsigned int offset2, size_t len2)
> +{

We already have region_overlap_size() for this.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


