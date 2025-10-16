Delivery-date: Thu, 16 Oct 2025 14:58:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v9NYu-008Sot-16
	for lore@lore.pengutronix.de;
	Thu, 16 Oct 2025 14:58:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v9NYt-0005kO-QB
	for lore@pengutronix.de; Thu, 16 Oct 2025 14:58:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BSoeTjCn1aY/bPxNqqP8LrEYz44geGtMK6YrTtSm7Po=; b=dpHteX0b8e7Mu32et4ntOtrvpf
	9P72EY5ogyaM75IbNr1Hpu77+x1orPNlU1BObP4J2xRojadljeJYP3LFyREG6WNY3Ca4+qhiolKL4
	oDI0ysv5Er1i0o+I5jHvhxCGkWVBi7SUWwRDRStcCJEwkd5VHkfpRYYB/4BZfoMpK6Np43KGG9TG7
	rd1TR/vjQsZBHeXxBTtBYFpz4H+XeSD78VGyzn9NwpcQnLmigMnCK6A96ToS7RauAhRsD5vZK8L/2
	nQEKd9pyUu4lE9mZCTtLhYpBlOyvKyyE1tJWnqjljKhRUFSoisEmSUrUhIkoAlOrEfrz/BgCvuJ3i
	+/k5jwjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9NYW-00000004o3h-2z2Z;
	Thu, 16 Oct 2025 12:58:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9NYS-00000004o2y-1uQK
	for barebox@lists.infradead.org;
	Thu, 16 Oct 2025 12:58:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v9NYQ-0005dn-U5; Thu, 16 Oct 2025 14:58:02 +0200
Message-ID: <ba046b46-3106-4ae5-bee4-2a55813d3de3@pengutronix.de>
Date: Thu, 16 Oct 2025 14:58:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: maud_spierings@hotmail.com, Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251015-imx_gpio-v1-0-e57925f906bb@hotmail.com>
 <20251015-imx_gpio-v1-2-e57925f906bb@hotmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251015-imx_gpio-v1-2-e57925f906bb@hotmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_055804_498034_BC3D7D1A 
X-CRM114-Status: GOOD (  13.56  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] Documentation: migration-2025.11.0: add new empty
 file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 10/15/25 8:03 PM, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maud_spierings@hotmail.com>
> 
> Add an empty file to hold any future migration notes.
> 
> Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
> ---
>  Documentation/migration-guides/migration-2025.11.0.rst | 0
>  1 file changed, 0 insertions(+), 0 deletions(-)
> 
> diff --git a/Documentation/migration-guides/migration-2025.11.0.rst b/Documentation/migration-guides/migration-2025.11.0.rst

Sorry, I should have been clearer; I am a bit wary of breaking scripts
or board code that do SION shenanigans, so my suggestion to add a note.

Something like:

i.MX GPIOs
----------

Reading output GPIOs now returns the configured output level instead
of reading back the input register. This aligns us with what Linux
is doing, but may falsify readings of single-ended GPIOs that have
the SION bit configured.

> new file mode 100644
> index 0000000000..e69de29bb2
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



