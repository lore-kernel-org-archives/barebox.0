Delivery-date: Tue, 22 Mar 2022 18:36:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWiQX-002mei-51
	for lore@lore.pengutronix.de; Tue, 22 Mar 2022 18:36:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWiQZ-0000yK-J1
	for lore@pengutronix.de; Tue, 22 Mar 2022 18:36:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ZMWnhvI/7ByS0UMUHj0TjFpjhWoA0S+zm3PsYpkSIQ=; b=Dvc51/n0fdIxQV
	4bQCc4eLisXXmRDJrUjv9HkXW9U9zmOfT81Hy1Psni71dPs/XkSYeXWddQxcIov4S0mWXEzOCFHk7
	r5MwNHYxDnGl9kog5Az7s1v23wPlkOi7MrsHynq7QiW+A3OoETBsKiPsZEvA3beRx2uRJxBG4aj3b
	Z9WKbSvQY3/ZEFkchYOv6BLMzxQUXBzcZffGWTxMVeWrKLDS7zc897h6hFUQLTgqE3yPcFZAfZBfa
	QX3RCys/RS48QiF0E8BLGXD3z0LP8kR5tFnPW4GvdlQ9dulyFiuvnC3EGJp0/fDnyHFyJCdR8BVny
	Tr2zOnUeGE6D1Yvt1MJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWiPF-00BkN1-BD; Tue, 22 Mar 2022 17:34:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWiP9-00BkMC-N4
 for barebox@lists.infradead.org; Tue, 22 Mar 2022 17:34:49 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nWiP7-0000iF-Gh; Tue, 22 Mar 2022 18:34:45 +0100
Message-ID: <2620f87b-ec79-7184-cd8a-d29c39938001@pengutronix.de>
Date: Tue, 22 Mar 2022 18:34:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: frank-w@public-files.de, barebox@lists.infradead.org
References: <6FA3446D-797C-4DA1-A2FA-BAC5B213A65A@public-files.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <6FA3446D-797C-4DA1-A2FA-BAC5B213A65A@public-files.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220322_103447_809630_93C25F44 
X-CRM114-Status: GOOD (  22.41  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Board code with 2 dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Frank,

On 22.03.22 18:23, Frank Wunderlich wrote:
> Hi,
> 
> I get information that new hardware revision of bpi-r2 pro has some differences to the version i upstreamed. Is it possible to add a new dts and use same board code?
> 
> How can i choose between the 2 dts on build (kconfig option)?

In any case, don't add a new Kconfig option. The existing one suffices.

> Afaik the name of dtb is hardcoded in lowlevel.c [1]
> 
> Differences are iodomains (not defined in barebox,but linux) and gmac-config (gmacs swapped and different settings).
> 
> Currently i have not yet the new board for testing,but then i want to send patches for linux and barebox.
> 
> [1] https://git.pengutronix.de/cgit/barebox/tree/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c#n24

Is it possible to detect which board is being used?
If so, best practice is to have barebox the same image for both
and detect board type at runtime.
Here's an example doing it in lowlevel.c:
arch/arm/boards/stm32mp15xx-dkx/lowlevel.c

If you need more barebox infrastructure than what's available in the bootloader
to detect board type, you could e.g. rewrite gmac-config in barebox board code
after detection.

If there is no way to dynamically detect which board variant barebox is running
on, just duplicate the entry point in the same file and change just the device
tree. Then extend images/Makefile.rockchip to reference the new entry point
and barebox build will generate an image for each board. See for example:

arch/arm/boards/kontron-samx6i/lowlevel.c


Cheers,
Ahmad

> regards Frank
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

