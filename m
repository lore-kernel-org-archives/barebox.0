Delivery-date: Tue, 16 Aug 2022 10:44:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNsBB-000UbA-Bh
	for lore@lore.pengutronix.de; Tue, 16 Aug 2022 10:44:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNsB9-00042m-DC
	for lore@pengutronix.de; Tue, 16 Aug 2022 10:44:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OZ7aNyZLQPXKk2SLL38oiEPyWcfJedb1NHzWVOotF14=; b=wD2iK43ZEBxoJ1F0xfWZnqwTBl
	jjBKG9aN19RDHqauQbRUrvVSYhbc/8lZRKbb7uN6asF+nT8GlTyXmv6dq40sn1qKS6MSu5HMtHr3l
	Of3e/0yS8CTp3SFrKIXADSC5o+nRb/NZe351r43nL5vONOkfQ11NzCCIBg8Xrr1qzprPm+VZ1ogXB
	ET5TOzlyeoVCYD6heTLNgVqeBoHcOEvyTIn/pJAIvyDvnPJdo6Uy5gQ1FqCRz7bqlpFXj2a2otGGO
	yJrntgNIeNbkPZjrhxzGyUUuEVHMSL5Q4r3XjnnyFJOPBYADAJjBDTQyM+4GvDsu4glUB1THvv1Ns
	9POI9Xew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNs9Z-00GukP-QJ; Tue, 16 Aug 2022 08:42:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNs9V-00Guiy-Cs
	for barebox@lists.infradead.org; Tue, 16 Aug 2022 08:42:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oNs9T-0003nj-72; Tue, 16 Aug 2022 10:42:19 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oNs9S-0007Hu-UA; Tue, 16 Aug 2022 10:42:18 +0200
Date: Tue, 16 Aug 2022 10:42:18 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220816084218.GK17485@pengutronix.de>
References: <20220815130955.2332697-1-a.fatoum@pengutronix.de>
 <20220815130955.2332697-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220815130955.2332697-3-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_014221_458063_C866B412 
X-CRM114-Status: GOOD (  23.42  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] firmware: add external firmware PBL support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Aug 15, 2022 at 03:09:55PM +0200, Ahmad Fatoum wrote:
> Normally, barebox embds firmware into the binary referencing it, which
> means that device tree blobs, RAM training code and e.g. TF-A for i.MX8M
> end up in the prebootloader, while, e.g. Freescale FMan microcode ends
> up in barebox proper. The only exception so far was barebox proper:
> When only the PBL fits in on-chip SRAM, barebox proper is chainloaded
> from the boot medium. To avoid TOCTOU attack, it's read fully into DRAM
> after setup and then a SHA256 is calculated and compared against the
> hash embedded in barebox PBL, which in a secure boot system would be
> trusted by virtue of the PBL as a whole being verified beforehand by
> the BootROM.
> 
> Reuse this mechanism to support arbitrary firmware, which is now termed
> external firmware. Such firmware is placed beyond the piggydata (barebox
> proper) and only offset and hash are included in the prebootloader
> image. The new get_builtin_firmware_ext() is used to retrieve this
> external firmware after integrity verification with SHA256.

Does it make sense to use this mechanism for barebox proper as well?

>  #define get_builtin_firmware(name, start, size) \
>  	{							\
>  		extern char _fw_##name##_start[];		\
> @@ -65,4 +78,22 @@ void firmwaremgr_list_handlers(void);
>  		*size = _fw_##name##_end - _fw_##name##_start;	\
>  	}
>  
> +#define get_builtin_firmware_ext(name, base, start, size)		\

base is unused.

It would be nice if users could use the same macro for both internal and
external firmware, but I have no idea how and if this could be
implemented.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


