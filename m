Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gy0-f177.google.com ([209.85.160.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOpjr-0002a7-9Q
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 12:30:00 +0000
Received: by ghbf11 with SMTP id f11so1360478ghb.36
 for <barebox@lists.infradead.org>; Mon, 30 Apr 2012 05:29:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120427142310.GG17184@pengutronix.de>
References: <CAD9ZU8CNj+DEft7R9LqEGx5GgQ3X1BMA=YcWbLjXmwuUrcLfKQ@mail.gmail.com>
 <20120427142310.GG17184@pengutronix.de>
Date: Mon, 30 Apr 2012 14:29:55 +0200
Message-ID: <CAD9ZU8Cbsa0L5rgBudy7ADwgrxNrrsRPf_qx=PdrQCRJvvmrxA@mail.gmail.com>
From: Gabriel Tisan <gabriel.tisan@gmail.com>
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
Subject: Re: imx35_nand driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>> Hi !
>>
>> I try to upgrade a custom board from an old version(2009) of barebox
>> to a new one.
>>
>> But I have some problems when the nand driver is
>> loading(imx35_add_nand(&nand_info)
>>
>> After I boot with the old barebox, I use tftp to load the new version
>> of barebox in ram and at run I get this on console :
>>
>> NAND device: Manufacturer ID: 0x2c, Chip ID: 0xdc (Micron NAND 512MiB
>> 3,3V 8-bit)
>> Bad block table not found for chip 0
>> Bad block table not found for chip 0
>> Scanning device for bad blocks
>> Bad eraseblock 0 at 0x00000000
>> Bad eraseblock 1 at 0x00020000
>> Bad eraseblock 2 at 0x00040000
>> ................
>>
>> It seems that it could not find the bad block tables, although on the
>> old barebox they are found.
>>
>> Has someone an idea what I could try to go forward ?
>
> Not a good idea. Some things to check:
>
> have you played with the nand clock in your board setup (IMX_CCM_BASE +
> CCM_PDR4)?
No. I have almost the same board setup like freescale-mx35-3-stack

> do you pass hw_ecc = 1 to the nand driver? I think this was the same
> back in 2009, but I don't really know.
Yes. I use this :
struct imx_nand_platform_data nand_info = {
	.hw_ecc		= 1,
	.flash_bbt	= 1,
};

bbt_pattern has also not changed from 2009.

However thanks !

Gabriel

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
