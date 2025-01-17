Delivery-date: Fri, 17 Jan 2025 09:33:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYhmx-000wSk-1n
	for lore@lore.pengutronix.de;
	Fri, 17 Jan 2025 09:33:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYhmu-0007Oy-Bt
	for lore@pengutronix.de; Fri, 17 Jan 2025 09:33:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0VZJ6k4bM6G5ef4vgqhKVnCECbcks7OB4iUvAxBDqkA=; b=hmEb6aJKEFt79IbwTX/q/Xp7Lz
	qXbP1BtZKOLSkqQfPurJpiZ2VgZMLA7dm4AWiLzGoLRfXu/CdlVEA2LWsyfYSPu32Nf64m7H7Hz4O
	1SgZKpzvOsqfZufzU6ujFvpP+biuTa9KA4eAtN+AfrWEg+/uRc61UJD3iF+5tYyuyqOg4yw2VS3Sk
	qRlPujsKfLUx/wMfruP8FqETGlr/2LmmG4bVflV2w54/e1gpXxSIHcuoXW9+s6/fkM0wR5NvYWSRT
	1WS7MJM9BdR87h4RhhPnj9pVnTETTsYRgFBNJp3igYJT+duTS+1zaCsAUwrVIf1VTB+wRZUBpIWVj
	KulKXWnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYhmW-0000000HLDw-1UsL;
	Fri, 17 Jan 2025 08:32:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYhmT-0000000HLDO-0HnO
	for barebox@lists.infradead.org;
	Fri, 17 Jan 2025 08:32:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tYhmR-0007Ip-JH; Fri, 17 Jan 2025 09:32:39 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tYhmP-000OYu-1z;
	Fri, 17 Jan 2025 09:32:37 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tYhmP-00FeeN-1i;
	Fri, 17 Jan 2025 09:32:37 +0100
Date: Fri, 17 Jan 2025 09:32:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Felix Singer <felixsinger@posteo.net>
Message-ID: <Z4oVpYra9gKbDoGM@pengutronix.de>
References: <20250112083432.320215-1-a.fatoum@pengutronix.de>
 <20250112083432.320215-11-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250112083432.320215-11-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250117_003241_104660_392C25E0 
X-CRM114-Status: GOOD (  14.92  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 10/13] images: add barebox FIT image target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On Sun, Jan 12, 2025 at 09:34:29AM +0100, Ahmad Fatoum wrote:
> +MAKE_FIT := $(srctree)/scripts/make_fit.py
> +
> +# Use this to override the compression algorithm of the DTBs
> +FIT_COMPRESSION ?= none
> +
> +quiet_cmd_fit = FIT     $@
> +      cmd_fit = $(MAKE_FIT) -o $@ --arch $(CONFIG_ARCH_MKIMAGE_NAME) --os linux \
> +		--name 'barebox-$(KERNELRELEASE)' \
> +		$(if $(findstring 1,$(KBUILD_VERBOSE)),-v) \
> +		$(if $(FIT_DECOMPOSE_DTBS),--decompose-dtbs) \
> +		--dtb-compress $(FIT_COMPRESSION) -k $< @$(word 2,$^)

I had to drop this and the following patches from this series.

barebox already has a cmd_fit which you are overwriting with this patch.
The existing FIT target is used for the beagleplay board to build an
image to be started from U-Boot. I suspect we can just replace existing
FIT target with your version.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


