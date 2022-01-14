Delivery-date: Fri, 14 Jan 2022 11:29:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8Jpq-001xLC-H9
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 11:29:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8Jpp-0007af-4c
	for lore@pengutronix.de; Fri, 14 Jan 2022 11:29:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wS5iwtZaiEmu5b8xztXS/nrBtaD4NbgVVYLzh5AmRGs=; b=445hVXp7803d4zx2tdKwKp5eTn
	AkrL2TYlLwvGHur6rLw/xtD9DHIQ1r1PPPEG8Gu5Z/aclrp3Jb9prCBRWPCqzEZdyWboNcbUFODoB
	w0xfFXhA2WA/sZEWSpxCqab7oHZh5i9o7vv4+P5h9bcqPR8espHU8smhaishpdvH9tO6U2tGADCb3
	FGwZmKKiTVxhKbMjGi0DlT+at4HSXU06AuMLOQ7eUyy/TcW9WbVFFe+X/cVoYGTk8MO+UYPaP4s8C
	Qno9LzOVcH5S9vVAHv5bAV139SayD9x40xvceW1zW4OeZIBLIGWdCVae+KsRySuIo67o1KSkNvJPK
	p+QFG2eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8JoX-008iFb-3V; Fri, 14 Jan 2022 10:28:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8JoS-008iE4-3V
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 10:28:05 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1n8JoQ-0007Ps-Rm; Fri, 14 Jan 2022 11:28:02 +0100
To: Jules Maselbas <jmaselbas@kalray.eu>, barebox@lists.infradead.org
References: <20220110221255.5003-1-jmaselbas@kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <81e99997-3fe7-9f4f-03f9-ff1cc4ed800d@pengutronix.de>
Date: Fri, 14 Jan 2022 11:28:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220110221255.5003-1-jmaselbas@kalray.eu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_022804_185694_08EA793D 
X-CRM114-Status: GOOD (  18.95  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] Add support for QOI image format
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 10.01.22 23:12, Jules Maselbas wrote:
> Ho ho ho,
> 
> I had some fun past weeks playing with the QOI image format[1] and I've
> added it's support to barebox. I also made the builtin barebox logo image
> format selectable, with bmp, png, and qoi...
> 
> I am not sure if this be of a great interest to barebox anyway here it is.

If it hits a sweet spot between size and speed, it may be interesting.
Optimally, you wouldn't need a boot splash, but for cases where you have one,
you don't want to delay the boot process any longer. I guess it currently
looks like this:

  CPU usage: png > qoi > bmp
  IO  usage: bmp > qoi > png

So there's a case to be made for its inclusion.

> 
> [1] https://qoiformat.org/
> 
> ---
> 
> Jules Maselbas (5):
>   filetype: Add QOI format image type
>   gui: Add qoi image format
>   scripts: Add qoiconv to convert png to qoi
>   logo: Enable image format selection for the logo
>   logo: Add choice for the QOI image format option
> 
>  common/filetype.c   |    3 +
>  include/filetype.h  |    1 +
>  lib/gui/Kconfig     |    5 +
>  lib/gui/Makefile    |    1 +
>  lib/gui/qoi.c       |   94 +
>  lib/gui/qoi.h       |  671 ++++
>  lib/logo/Kconfig    |   27 +-
>  lib/logo/Makefile   |   55 +-
>  lib/logo/logo.c     |   10 +-
>  scripts/Kconfig     |    5 +
>  scripts/Makefile    |    1 +
>  scripts/qoiconv.c   |   91 +
>  scripts/stb_image.h | 7756 +++++++++++++++++++++++++++++++++++++++++++
>  13 files changed, 8705 insertions(+), 15 deletions(-)
>  create mode 100644 lib/gui/qoi.c
>  create mode 100644 lib/gui/qoi.h
>  create mode 100644 scripts/qoiconv.c
>  create mode 100644 scripts/stb_image.h
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

