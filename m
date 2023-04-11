Delivery-date: Tue, 11 Apr 2023 14:31:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmD9u-00HWya-Q0
	for lore@lore.pengutronix.de; Tue, 11 Apr 2023 14:31:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmD9u-0008Cn-C5
	for lore@pengutronix.de; Tue, 11 Apr 2023 14:31:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tqKQlJr6pKUxmWmW1yls21xNNrxRNhmQyOyR679JTvA=; b=SvIQmANuw+U547lOt5XwGAIsrX
	5FN5MzigW//5RZbaVyWhBLjsBF2vAh9/2rQsIxdapnazcC2MmYURtvmAggRz271gpvcSGUUK2rv6y
	q/pOVYlwqeh6FGKWLHidKj+2VZ5yUdJF0rf+gV+z+ttXnRNiEtVY2ksijs78nnixyEGNeopD7xCz0
	AWI2abjd8u/wdtBl2XopnCKaOXCEJbvX3FzMhRJCGjjqffkAw0pvB7j1b+j44kmh2bkg+fjT0tgXs
	9y1ANrmA/ytR0UTsM5F0OcwoNs4+BAA3TcPuGA7Zg9NrNSnK2W8BhZTmGhHuTs7+9ZiNdEYt01tRP
	cUKpVEZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmD8h-00HYJT-0G;
	Tue, 11 Apr 2023 12:30:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmD8e-00HYIy-1V
	for barebox@lists.infradead.org;
	Tue, 11 Apr 2023 12:30:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pmD8c-0007ye-Vo; Tue, 11 Apr 2023 14:30:18 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pmD8c-0008Jr-Km; Tue, 11 Apr 2023 14:30:18 +0200
Date: Tue, 11 Apr 2023 14:30:18 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Johannes Schneider <johannes.schneider@leica-geosystems.com>
Message-ID: <20230411123018.GJ19113@pengutronix.de>
References: <20230411093844.1297004-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230411093844.1297004-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_053020_499869_20D2BD75 
X-CRM114-Status: GOOD (  14.64  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] scripts: imx: make imx-usb-loader compilable for
 MinGW
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 11, 2023 at 11:38:41AM +0200, Ahmad Fatoum wrote:
> While the system flashing Linux is often running Linux itself, it may
> be Windows instead. To support this, let's support building
> imx-usb-loader for Windows.
> 
> Only compiled-tested on Debian 11 with:
> 
>    x86_64-w64-mingw32-gcc (GCC) 10-win32 20210110 (gcc-mingw-w64-x86-64-posix)
>    libusb-1.0.26-binaries.7z  (from Github releases page)
> 
>   CC=${CC:-x86_64-w64-mingw32-gcc}
>   LIBUSB=${LIBUSB:-../libusb-binaries}
>   
>   CPPFLAGS="-isystem $LIBUSB -I scripts/include/ -I include/mach/"
>   LDFLAGS="-L $LIBUSB -lusb-1.0"
>   
>   $CC -c -o imx.o scripts/imx/imx.c $CPPFLAGS
>   $CC -c -o imx-usb-loader.o scripts/imx/imx-usb-loader.c $CPPFLAGS
>   
>   $CC -o imx-usb-loader.exe imx.o imx-usb-loader.o $LDFLAGS
> 
> 
> Ahmad Fatoum (3):
>   imx-usb-loader: don't depend on arpa/inet.h for endianness conversion
>   scripts: compiler.h: add Windows support
>   scripts: common: drop unused mman.h include

Applied, thanks

Sascha

> 
>  scripts/common.c             |  1 -
>  scripts/compiler.h           | 33 ++++++++++++++++++++++++
>  scripts/imx/imx-usb-loader.c | 49 ++++++++++++++++++------------------
>  3 files changed, 57 insertions(+), 26 deletions(-)
> 
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


