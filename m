Delivery-date: Fri, 16 Dec 2022 07:42:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p64Qi-005Pa6-MV
	for lore@lore.pengutronix.de; Fri, 16 Dec 2022 07:42:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p64Qi-000572-3y
	for lore@pengutronix.de; Fri, 16 Dec 2022 07:42:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xiV0p1EddlyrljFPXkjudmDeRhuyLgIaNmzo/d4kVW8=; b=jM9jDxEKAPn4Cl4kVEQbydlKUd
	Ayr2BmGcIlZTCptO0sNIw0DorRtO3+qMuKAGZwEPoH5qAm2iZ+1sQjN6LS4RxFefymXkUB254zx8s
	iBEXQ0jRWPJuiJd/N4jnNkYBeLC52qNHKAcB1eotslqiBKCQ9YSlKZnJW8qoOIB1O3ywiF3CUvnZb
	ebgfMXRQ2a+bA91ka8neI5axzB0UkW+whhePaUkNK+IhORloE2+qDSawxx0zr+qJWMaI1B0G6mpMJ
	JLyWzvz3+cX5r80XI/EmunqP9Ie7oEQkVw0343u/3B5xPEuX9kN3H/y9AU8o2N4F4FeHVRovCRsDE
	TECXPYeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p64PS-00DD72-0h; Fri, 16 Dec 2022 06:41:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p64PN-00DD5Y-Pn
	for barebox@lists.infradead.org; Fri, 16 Dec 2022 06:41:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p64PL-00053b-Ud; Fri, 16 Dec 2022 07:41:23 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p64PL-0003sc-MF; Fri, 16 Dec 2022 07:41:23 +0100
Date: Fri, 16 Dec 2022 07:41:23 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221216064123.GF11668@pengutronix.de>
References: <20221214105050.633668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221214105050.633668-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_224125_855257_8CD6C361 
X-CRM114-Status: GOOD (  29.87  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] mci: only write blocks when card out of programming
 mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Dec 14, 2022 at 11:50:50AM +0100, Ahmad Fatoum wrote:
> eMMC Spec v5.1 (JEDEC Standard No. 84-B51) is quite clear that:
> 
>   Due to legacy reasons, a Device may still treat CMD24/25 during
>   prg-state (while busy is active) as a legal or illegal command.
>   A host should not send CMD24/25 while the Device is in the prg
>   state and busy is active.
> 
> So far, we had never evaluated MMC_CMD_SEND_STATUS. This patch
> corrects this and thereby resolves an issue of timed out writes
> with the atmel_mci driver:
> 
>   barebox@SAMA5D4:/ saveenv
>   ERROR: atmel_mci fc000000.mmc@fc000000.of: command/data timeout
>   ERROR: atmel_mci fc000000.mmc@fc000000.of: command/data timeout
> 
> These issues are not new, but were first reported in 2018[0] along
> with a workaround suggesting a delay at the end of atmci_request:
> 
>   if (cmdidx == MMC_CMD_STOP_TRANSMISSION)
> 	mdelay(5)
> 
> Just before the command timing out, we read 0x00c00_0025 from the
> status register, which is
> 
>   CMDRDY | TXRDY | NOTBUSY | XFERDONE | FIFOEMPTY
> 
> which suggests the issue is not at the MCI host side, but rather at
> the card side. With this patch applied and debugging enabled, this
> seems to be confirmed:
> 
>   barebox@SAMA5D4:/ saveenv
>   saving environment
>   mmc1: Ready polling took 0ms
>   mmc1: Ready polling took 4ms
> 
> I compared with AT91Bootstrap[1], U-Boot[2] and Trusted Firmware-A[3]
> and all of them poll MCI status after block writes.
> 
> The sequence imported here is taken from U-Boot, but instead of doing
> it after writes, we do it before them in hope that we need not always
> incur the extra delay.
> 
> I don't have an answer why this was only necessary on the SAMA5D3/4 and
> such issues weren't observed with other drivers. Card was operated
> at 50MHz (SD HS) and it didn't help trying other cards or going down
> to 400kHz. I tested this change also on a Beaglebone Black where an
> environment is also stored into FAT on a SD-Card operated with 50 MHz:
> Ready polling took 0ms for each of the two writes.
> 
> [0]: https://lore.barebox.org/barebox/20181102091156.26476-1-s.hauer@pengutronix.de/
> [1]: https://github.com/linux4sam/at91bootstrap/blob/v4.0.5/driver/mci_media.c#L1187
> [2]: https://github.com/trini/u-boot/blob/v2023.01-rc3/drivers/mmc/mmc_write.c#L181
> [3]: https://github.com/ARM-software/arm-trusted-firmware/blob/v2.8.0/drivers/mmc/mmc.c#L718
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> For next, not master. I intend to test this change across more devices
> in the coming weeks.
> 
> v1 -> v2:
>   - skip mci_poll_until_ready for SPI mode (Sascha)
>   - simplify timeout handling (Sascha)
>   - turn dev_info into dev_dbg
>   - remove comment about debugging message placement
>   - increase timeout from 10ms to 1s

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


