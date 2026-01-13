Delivery-date: Tue, 13 Jan 2026 23:39:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfn2z-0011et-0M
	for lore@lore.pengutronix.de;
	Tue, 13 Jan 2026 23:39:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfn2y-00084v-4O
	for lore@pengutronix.de; Tue, 13 Jan 2026 23:39:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SlgA8TTZ1eT9FAYC6hKu5nzlEY3CTzUG4TmED7GpbUM=; b=VQ7oemqnjXYWSPvAZKrRbQZ0S0
	cjm8TxtdnVdRUiFnuLZXIINdgvlpfnknkKYq34uN+AYdIAYXfBVHE/sryeLUkGH++WNpPuv/dWVQS
	+jc4arTs1juLg5GfIwBs+Wq+dZMI5KYD7DhIxC9hiR1X5L5N0HE79Ymgn1KaJRxHVyYBeOuC9qM01
	U/Evt84Q9MqP1UDYqM2GyYv2PcvWQPMZMPSddOFP1Zx0TELui3ooqeX+ssM8adOx/W5p+5fRQeIce
	k8cNutHOFMi1KPE1noQhuS7GVw4vbOUlPydRfAHR2n6IETiBMEIVss4HT3AFc7idgEoCFRkZ1rp6Q
	c4nBWlNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfn2L-00000007pvM-2xM2;
	Tue, 13 Jan 2026 22:38:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfn2H-00000007pur-3u8f
	for barebox@lists.infradead.org;
	Tue, 13 Jan 2026 22:38:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vfn2F-0007r1-MJ; Tue, 13 Jan 2026 23:38:47 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vfn2G-000Ub0-0S;
	Tue, 13 Jan 2026 23:38:47 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vfn2F-009yLt-15;
	Tue, 13 Jan 2026 23:38:47 +0100
Date: Tue, 13 Jan 2026 23:38:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	"Claude Sonnet 4.5" <noreply@anthropic.com>
Message-ID: <aWbJd6CoK3_vV-0x@pengutronix.de>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
 <20260108-pbl-load-elf-v3-9-e28c931fc179@pengutronix.de>
 <9cd07445-9fbf-43ab-81bb-85f07b9327b0@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9cd07445-9fbf-43ab-81bb-85f07b9327b0@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_143850_090480_9A35EB8A 
X-CRM114-Status: GOOD (  16.33  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 09/23] elf: create elf_open_binary_into()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jan 12, 2026 at 02:06:37PM +0100, Ahmad Fatoum wrote:
> On 1/8/26 4:50 PM, Sascha Hauer wrote:
> > elf_open_binary() returns a dynamically allocated struct elf_image *. We
> > do not have malloc in the PBL, so for better PBL support create
> > elf_open_binary_into() which takes a struct elf_image * as argument.
> 
> Strictly speaking, we have the <linux/mm/decompress.h> allocator and as
> this runs after decompression, the early malloc area is already
> allocated too, but I don't feel strongly about it.

This is only implemented for arm, mips and riscv. I don't think that
it's worth implementing for the other architectures just to get a single
piece of memory that can easily be statically allocated.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


