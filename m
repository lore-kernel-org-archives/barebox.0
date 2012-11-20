Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo1.mail-out.ovh.net ([46.105.35.72]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Taita-0002J7-1Q
 for barebox@lists.infradead.org; Tue, 20 Nov 2012 08:09:27 +0000
Received: from mail174.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 02CDAFF9D68
 for <barebox@lists.infradead.org>; Tue, 20 Nov 2012 09:20:41 +0100 (CET)
Date: Tue, 20 Nov 2012 09:07:26 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121120080726.GJ8327@game.jcrosoft.org>
References: <20121120035412.GC8572@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121120035412.GC8572@greatfirst.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: wrong cfi flash device id
To: barebox <barebox@lists.infradead.org>

On 11:54 Tue 20 Nov     , zzs wrote:
> My board is very similar to at91rm9200ek but using
> a 8MB cfi flash AT49BV642D.
> 
> When barebox started, the flash info as blow:
> 
> # devinfo cfi_flash0
> CFI conformant FLASH (16 x 16)  Size: 8 MB in 135 Sectors
>   AMD Standard command set, Manufacturer ID: 0x1F, Device ID: 0xD6
>   Erase timeout: 8192 ms, write timeout: 256 us
>   Buffer write timeout: 64 us, buffer size: 4 bytes
> 
>   Sector Start Addresses:
>   10000000        10010000        10020000        10030000        10040000
>   10050000        10060000        10070000        10080000        10090000
>   100A0000        100B0000        100C0000        100D0000        100E0000
> 
> Barebox said the device id is 0xD6, But it should be 0x1D6.
> 
> Because of this wrong ID, In function drivers/nor/cfi_flash_amd.c:flash_fixup_atmel()
> the erase region were reversed.
> 
> So I can't erase the first few sectors
> 
> I think it should use read8 or read16 according the portwidth like
> u-boot does.
I check the kernel we need to read the id according the bus width

btw please use a real name zzs is either an english name or a chinese name

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
