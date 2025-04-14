Delivery-date: Mon, 14 Apr 2025 16:54:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4LCS-000gBn-1n
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 16:54:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4LCR-0006kT-Vy
	for lore@pengutronix.de; Mon, 14 Apr 2025 16:54:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ev6Y2F2xD1U3yoR84ULaYeM/5QOnKbuXHk74B/jKr9c=; b=Xk8HEx4CN0S86pJzLxfiWrxuOr
	0pTm11s5T7OObuC5Dp2eXkeg7R9EBTy77DJHMCp2KSw/edsqdSAxG3AHYqIdzMF/n/IEP5gLt64Kz
	UPswtsmJIIbdvVeZ4iXrjSQu9iilsumjlKcylTw+KW7AFvo770pTB0HlIw05pok8zXHvZOzrvKNDB
	o0lTGOBCoNzpNnJMOgUHdaBoJSVbr5iJuLdPy59FEGNC+4oxcHuj5v+LYpWxULqB+ggYiepG15iI5
	gbUb9wBXCy4Fz10WjMoB0u2oKVIMvDqocgAMCqfQ84toN/+oXWr2oeoHMbblNOxmgpLcUfYCj/sql
	oO/PIhQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4LBr-00000002UgF-2kFA;
	Mon, 14 Apr 2025 14:53:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4L8J-00000002Tlk-41GD
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 14:50:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u4L8I-00059W-AF; Mon, 14 Apr 2025 16:49:58 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u4L8I-000GdU-0Q;
	Mon, 14 Apr 2025 16:49:58 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u4L8I-000Kn0-03;
	Mon, 14 Apr 2025 16:49:58 +0200
Date: Mon, 14 Apr 2025 16:49:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z_0glf7ptAh3RtAF@pengutronix.de>
References: <20250411074045.2019372-1-a.fatoum@pengutronix.de>
 <20250411074045.2019372-5-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250411074045.2019372-5-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_074959_992862_4204BC5F 
X-CRM114-Status: GOOD (  15.67  )
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
Subject: Re: [PATCH 04/10] common: add barebox TLV support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Apr 11, 2025 at 09:40:39AM +0200, Ahmad Fatoum wrote:
> barebox TLV is a scheme for storing factory data on non-volatile
> storage. Unlike state, it's meant to be read-only and if content
> is limited to already specified tags, it can be extended later on,
> without modifying the bootloader binary.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> +struct tlv_mapping barebox_tlv_v1_mappings[] = {
> +	{ 0x0002, tlv_format_str, "device-hardware-release" },
> +	{ 0x0003, tlv_format_dec, "factory-timestamp" },

The numbers in the examples suggest that the format is in epoch time,
but shouldn't this be documented?

> +	{ 0x0004, tlv_handle_serial, "device-serial-number"},
> +	{ 0x0005, tlv_format_dec, "modification" },
> +	{ 0x0006, tlv_format_str, "featureset" },

I think things like "device-hardware-release", "modification" and "featureset"
need (better) documentation, at least when they are supposed to be generic.

> +	{ 0x0007, tlv_format_str, "pcba-serial-number"},
> +	{ 0x0008, tlv_format_str, "pcba-hardware-release"},

Assuming 'pcb' is for printed circuit board, what is 'a'?

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


