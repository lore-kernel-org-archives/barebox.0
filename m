Delivery-date: Sun, 06 Feb 2022 00:21:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGUN8-006qUr-P3
	for lore@lore.pengutronix.de; Sun, 06 Feb 2022 00:21:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGUN7-0001uA-FW
	for lore@pengutronix.de; Sun, 06 Feb 2022 00:21:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CkYkN+RUiLekYbITIi6YmriKETrDQxKNnw+8VRM/1t4=; b=yGtsQHuqPfc5l2
	mo88D/2ilRsJFurL5R/2ZIlSL5t6t8NAiueUQmYcB1G70BqWUWh5IFZyKodsj0+C5RSPQ93VdCC3h
	2xZp/4zDFaK+C2bfq/raDZABDFv7Kle/sDj++aZ+TGGSjz1oDh8hBAxb/Jkgyy6624d7v2Gd/vpjX
	f+NhKGb+A9PSD512b7RD3qT2FTUaxdf1wllYrDnecik26qLU+Wq7c2QtjBpxn1JpsDoQG+DkHL25Y
	wfuqLPlbJ/Lfg3XpAgF3zx7XtZ3ATcE0g+65SgH3Sk273ovkN5HKC/htB7bRXhStQ+cgKKQ7z1zn1
	wAnx+DXQu3ToJ0QXCxPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGULw-007drZ-Nc; Sat, 05 Feb 2022 23:20:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGULs-007dpx-07
 for barebox@lists.infradead.org; Sat, 05 Feb 2022 23:20:21 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nGULn-0001eV-OW; Sun, 06 Feb 2022 00:20:15 +0100
Message-ID: <2163dc49-9cf0-7df9-e559-f99bf2d1f31f@pengutronix.de>
Date: Sun, 6 Feb 2022 00:20:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Frank Wunderlich <frank-w@public-files.de>, barebox@lists.infradead.org
References: <trinity-455847f3-e03d-45aa-be41-64395a88bb28-1644070603514@3c-app-gmx-bs06>
Content-Language: en-US
In-Reply-To: <trinity-455847f3-e03d-45aa-be41-64395a88bb28-1644070603514@3c-app-gmx-bs06>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_152020_080720_1E0F77AE 
X-CRM114-Status: GOOD (  16.25  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: chainload barebox from uboot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 05.02.22 15:16, Frank Wunderlich wrote:
> Hi,
> 
> documentation says that barebox can be loaded from uboot:
> 
> https://www.barebox.org/doc/latest/user/barebox.html#starting-barebox
> 
> i tried the ./barebox.bin and the barebox-rk3568-*.img, both are not working in uboot.
> 
> => fatload mmc 1:2 ${scriptaddr} barebox-rk3568-bpi-r2pro.img
> reading barebox-rk3568-bpi-r2pro.img
> 768000 bytes read in 68 ms (10.8 MiB/s)
> => bootm ${scriptaddr}
> Fdt Ramdisk skip relocation
> Wrong Image Format for bootm command
> ERROR: can't get kernel image!
> 
> => fatload mmc 1:2 ${scriptaddr} barebox.bin
> reading barebox.bin
> 860784 bytes read in 76 ms (10.8 MiB/s)
> => bootm ${scriptaddr}
> Fdt Ramdisk skip relocation
> Wrong Image Format for bootm command
> ERROR: can't get kernel image!
> 
> documation talkes about a "arch/$ARCH/pbl/zbarebox.bin" but i have no such file. Symbol PBL_IMAGE is already set to y
> 
> for testing i used my vendors uboot
> 
> => version
> U-Boot 2017.09 (Nov 21 2021 - 14:25:03 +0100)
> 
> isn't it possible to chainload barebox from uboot or do i miss any config-option to get the right image?

You'll want to use the generic DT 2nd image, which in your case would have a Linux
ARM64 header and be bootable just like a Linux kernel.
See the documentation patches I cc'd you on.

Cheers,
Ahmad

> 
> regards Frank
> 
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

