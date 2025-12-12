Delivery-date: Fri, 12 Dec 2025 09:33:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTyaY-00Absd-2k
	for lore@lore.pengutronix.de;
	Fri, 12 Dec 2025 09:33:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTyaY-0001mZ-8v
	for lore@pengutronix.de; Fri, 12 Dec 2025 09:33:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XIe6yJC+X1zlGUpnsKtkhECFho8TKp6Q8dKahakPMU0=; b=Pineu/dgj/8CRiWuMMaAa/WwJP
	e1+9VxmSMlulZ011NdW6yMRTdZurPYHmgkHoJiuEWZADvvowUlfA9x59/6ZeWufRleXnFUjzjQxtB
	RR0WvdquZyXy+bClRd3wdgpuvvGu8jruiVUNvP5Dg5BwBNeiXb6ddeie6lSJn0IVBspd0OVK8n7b0
	7aM4+hFTMfIdBtZZamtZOFlqKrtRXFbqa/YVU+TPlA+W505CfoGQhPl4aJC8BWuba6IIr8WzGvZUg
	q+I+iuTS4CCdXIDeSytAGLMdQ/N7YdLR/eKKCp7YL1mjXVpYkIpnVpEipMlE3e2lBWrv4l85+fnyl
	PANBhOlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTyZw-00000000Gyn-04KT;
	Fri, 12 Dec 2025 08:32:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTyZg-00000000Gxv-039i
	for barebox@lists.infradead.org;
	Fri, 12 Dec 2025 08:32:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vTyZc-0001gO-BO; Fri, 12 Dec 2025 09:32:24 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vTyZc-005GT4-0V;
	Fri, 12 Dec 2025 09:32:24 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vTyZc-003EEp-0A;
	Fri, 12 Dec 2025 09:32:24 +0100
Date: Fri, 12 Dec 2025 09:32:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aTvTGOEHKFIVIH5y@pengutronix.de>
References: <20251211210049.3170349-1-a.fatoum@pengutronix.de>
 <20251211210049.3170349-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251211210049.3170349-3-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_003233_843403_2DC5C1C0 
X-CRM114-Status: GOOD (  18.12  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] cdev-alias: add support for
 storage{.removable,.builtin}
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Dec 11, 2025 at 10:00:45PM +0100, Ahmad Fatoum wrote:
> Our current of global.boot.default expanding to bootsource doesn't work
> when booting from boot-only flash.

I wondered what boot-only flash is. Maybe better "flash containing only
the bootloader"

> +Generic Boot Targets
> +^^^^^^^^^^^^^^^^^^^^
> +
> +A single boot target can yield multiple entries, e.g., one for each
> +bootloader spec file detected at runtime as described in the next section.
> +
> +There is also a number of generic default boot targets available, when
> +``CONFIG_BOOT_DEFAULTS`` is enabled. These expands to a single device at most:
> +
> +* ``bootsource``: expands to the device barebox booted from
> +* ``diskuuid.*``: expands to the device with specified ``*`` diskuuid
> +
> +For these targets that expand to a single device, a partition can also be specified,
> +e.g., ``bootsource.esp`` to reference the partition with the ``esp`` partition
> +label within the bootsource.
> +
> +Following target can expand to multiple devices:
> +
> +* ``storage.removable``: expands to built-in storage devices, like USB sticks

s/built-in/removable/

"like USB sticks or SD cards in slots" to better differentiate against
eMMC.

> +* ``storage.builtin``: expands to built-in storage devices, like eMMC
> +* ``storage``: expands to all of the above ``storage.*``

These are explained in the boot command help text. Please add these new
targets there as well.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


