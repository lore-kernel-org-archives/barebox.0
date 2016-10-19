Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x233.google.com ([2a00:1450:4010:c07::233])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bwvRD-0003ry-Ls
 for barebox@lists.infradead.org; Wed, 19 Oct 2016 18:18:04 +0000
Received: by mail-lf0-x233.google.com with SMTP id l131so34120305lfl.2
 for <barebox@lists.infradead.org>; Wed, 19 Oct 2016 11:17:42 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <201610190953.41081.jbe@pengutronix.de>
References: <CABvwO2ARpHSzYE6Y3JrfFAQ2jEzw3EXfP36goL6kPogcBbNLKQ@mail.gmail.com>
 <CABvwO2AvfKwc==BhRfw14CzeX4ALwAFp5Zxn1t0MEj2bsn50zQ@mail.gmail.com>
 <CABvwO2A6jNWz7_MOcxxAdJh_fAoV06uA9qk28dKZ5icfV07kQg@mail.gmail.com>
 <201610190953.41081.jbe@pengutronix.de>
From: Javier Fileiv <javier.fileiv@gmail.com>
Date: Wed, 19 Oct 2016 20:17:39 +0200
Message-ID: <CABvwO2BoCQs-XoSNsYG8Uo8+odKcZ6o5dWoFzk_nQjTJGerYLw@mail.gmail.com>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Loading kernel issues
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Juergen,

Here is my power up output, thanks you very much

Terminal ready


barebox 2011.05.0-ptx-2014.11.0 (Oct 13 2016 - 21:53:08)

Board: Mini 2440
NAND device: Manufacturer ID: 0xec, Chip ID: 0xd3 (Samsung NAND 1GiB 3,3V 8-bit)
Bad block table found at page 524224, version 0x01
Bad block table found at page 524160, version 0x01
nand_read_bbt: Bad block at 0x255a0000
dm9000 i/o: 0x20000300, id: 0x90000a46
eth@eth0: got MAC address from EEPROM: 00:00:00:00:00:00
cfi_probe: cfi_flash base: 0x00000000 size: 0x00200000
## Unknown FLASH on Bank at 0x00000000 - Size = 0x00000000 = 0 MB
refclk:    12000 kHz
mpll:     405000 kHz
upll:      48000 kHz
fclk:     405000 kHz
hclk:     101250 kHz
pclk:      50625 kHz
SDRAM1:   CL2@101MHz
Malloc space: 0x33a00000 -> 0x33e00000 (size  4 MB)
Stack space : 0x339f8000 -> 0x33a00000 (size 32 kB)
running /env/bin/init...

2016-10-19 9:53 GMT+02:00 Juergen Borleis <jbe@pengutronix.de>:
> Hi Javier,
>
> On Tuesday 18 October 2016 18:56:03 Javier Fileiv wrote:
>> Trying to autoboot from nand, I set my /env/config file like that (and
>> after that a "saveenv"). Although it doesn't work automaGically! :)
>
> Can you also send the output of barebox from power on up to the point it falls
> into the prompt?
>
> Cheers,
> Juergen
>
> --
> Pengutronix e.K.                              | Juergen Borleis             |
> Industrial Linux Solutions                    | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
