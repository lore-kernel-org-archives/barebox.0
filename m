Delivery-date: Wed, 15 Dec 2021 12:22:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxSMU-007FaV-06
	for lore@lore.pengutronix.de; Wed, 15 Dec 2021 12:22:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxSMS-0006fW-82
	for lore@pengutronix.de; Wed, 15 Dec 2021 12:22:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JaKEUVJyDTgez54nh08HWSe3ES9mwK0RDbN/7iOeG9M=; b=ddKOAZhjIKTWsA30pyolamD22c
	sRTDnv3DqXIc8rZ1EXXdvD4Nkbv3YLqFTKwv5b5OU4wNUp3VgVrCzC5B5/7FeG2iNwxGU2plHjSXl
	Qn2IDPkM17s6JQ/rip7TdAVTjoLHlqZYUKQbhbZNfZ2plL0PnndHp6nQNNM0aWETGgre9WU903A3g
	nhAKA90jMB68B5nUcCYg3jSZfXwmgUB2rCur1Xsf8LHFk+jlZRUgZU3HEkhnqBGSiUIJ4WryoEgrx
	2Fir8lAZg5zokKZOQhDmX2TaIDBHf0o43cK0lZ7FmbxW9jmxw1qsYO53oDj2oEHUS0+Kk1YA0etcm
	1LgD1Akw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxSKn-000VU3-MC; Wed, 15 Dec 2021 11:20:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxS8A-000PJm-8r
 for barebox@lists.infradead.org; Wed, 15 Dec 2021 11:07:31 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mxS89-0004V2-2B; Wed, 15 Dec 2021 12:07:29 +0100
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <95d50bc1-9073-9f69-5237-c7f4bd97b1e6@pengutronix.de>
Date: Wed, 15 Dec 2021 12:07:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211213210905.3399551-1-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_030730_370589_45E25088 
X-CRM114-Status: GOOD (  19.91  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 00/25] EFI improvements
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 13.12.21 22:08, Sascha Hauer wrote:
> This series contains several improvements for barebox running on EFI.
> Most patches are around the efi-stdio driver in which handling of ansi
> escape sequences is greatly improved. With this series efi-stdio is now
> able to parse and handle the escape sequences barebox issues itself
> properly.
> The EFI SNP network driver suffered from packet loss on some machines
> because other protocols were polling for packets as well. This is also
> fixed with this series.

Very nice. :-)

> 
> Sascha
> 
> Sascha Hauer (25):
>   efi-devicepath: Make efi_device_path argument const
>   efi: move device-path defines and types to header file
>   efi: Implement device_path_to_subtype()
>   efi: Do not register IPv[46] devices
>   console: Fix message colours
>   efi-stdio: remove unnecessary check
>   efi-stdio: rename to efi_process_escape
>   efi-stdio: return bytes actually consumed
>   efi-stdio: fix escape sequence end detection
>   efi-stdio: improve escape sequence parsing
>   efi-stdio: Fix out of bounds error in puts
>   efi-stdio: Fix tab printing
>   efi-stdio: Implement efi_console_putc() using efi_console_puts()
>   efi-stdio: Fix '\b' handling
>   efi-stdio: implement input buffering with a kfifo
>   efi-stdio: limit set_cursor to screen size boundaries
>   efi-stdio: implement getting the cursor position
>   efi-stdio: Implement setting cursor visibility
>   efi-stdio: Support different text modes
>   edit: improve screen size detection
>   edit: Improve behaviour on efi-stdio console
>   edit: send escape sequence only for smartscroll
>   net: efi-snp: Check for carrier before sending
>   efi: add efi_device hook to be called before an image is started
>   net: efi-snp: Open protocol exclusively
> 
>  commands/edit.c            | 107 ++++++++--
>  common/console_common.c    |  12 +-
>  common/efi-devicepath.c    | 405 ++-----------------------------------
>  common/efi/efi-image.c     |   4 +
>  drivers/efi/efi-device.c   |  42 +++-
>  drivers/net/efi-snp.c      |  59 +++++-
>  drivers/serial/efi-stdio.c | 362 +++++++++++++++++++++------------
>  include/efi.h              |   1 +
>  include/efi/device-path.h  | 388 +++++++++++++++++++++++++++++++++++
>  include/efi/efi-device.h   |   5 +
>  10 files changed, 840 insertions(+), 545 deletions(-)
>  create mode 100644 include/efi/device-path.h
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

