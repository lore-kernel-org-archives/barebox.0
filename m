Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m50-112.126.com ([123.125.50.112])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TaenL-0007en-Fg
 for barebox@lists.infradead.org; Tue, 20 Nov 2012 03:46:46 +0000
Date: Tue, 20 Nov 2012 11:54:12 +0800
From: zzs <zzs213@126.com>
Message-ID: <20121120035412.GC8572@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: wrong cfi flash device id
To: barebox <barebox@lists.infradead.org>

My board is very similar to at91rm9200ek but using
a 8MB cfi flash AT49BV642D.

When barebox started, the flash info as blow:

# devinfo cfi_flash0
CFI conformant FLASH (16 x 16)  Size: 8 MB in 135 Sectors
  AMD Standard command set, Manufacturer ID: 0x1F, Device ID: 0xD6
  Erase timeout: 8192 ms, write timeout: 256 us
  Buffer write timeout: 64 us, buffer size: 4 bytes

  Sector Start Addresses:
  10000000        10010000        10020000        10030000        10040000
  10050000        10060000        10070000        10080000        10090000
  100A0000        100B0000        100C0000        100D0000        100E0000

Barebox said the device id is 0xD6, But it should be 0x1D6.

Because of this wrong ID, In function drivers/nor/cfi_flash_amd.c:flash_fixup_atmel()
the erase region were reversed.

So I can't erase the first few sectors

I think it should use read8 or read16 according the portwidth like
u-boot does.

Am I right?

-- 
Best Regards,
zzs



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
