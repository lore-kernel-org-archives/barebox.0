Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vx0-f177.google.com ([209.85.220.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QvN1v-0008C3-0Q
	for barebox@lists.infradead.org; Mon, 22 Aug 2011 05:26:36 +0000
Received: by vxj2 with SMTP id 2so4722051vxj.36
	for <barebox@lists.infradead.org>; Sun, 21 Aug 2011 22:26:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <4E501C1A.5090003@pengutronix.de>
References: <CAK8HZOLNN4pdfbHXq40-Zngz3Dnx6hfUkW3n92jxhOHS0DbOaA@mail.gmail.com>
	<4E501C1A.5090003@pengutronix.de>
Date: Mon, 22 Aug 2011 05:26:30 +0000
Message-ID: <CAK8HZO+b3eRwCawDwnU_CjMPSinuW1d8QcOSBt_7wE15WRa=vg@mail.gmail.com>
From: Nataraj S Narayan <natarajsn@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: tftp or nfs?
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Marc

Is it a tough job to add 'ubiformat' to barebox?  Also a ubifsmount?

I have been getting hell lots of ubi errors in Linux also.

These began when I changed a from Micron Nand to Samsung Nand. We have
been trying to change the 'wait states' in the kernel code. But still
the same issues.

regards

Nataraj

NAND 0device: Manufacturer ID: x2c, Chip ID: 0xda (Micron NAND 256MiB
3,3V 8-bit)

NAND device: Manufacturer ID: 0xec, Chip ID: 0xda (Samsung NAND 256MiB
3,3V 8-bit) AT91 NAND: 8-bit

UBI error: ubi_io_read: error -74 (ECC error) while reading 129024
bytes from PEB 517:2048, read 129024 bytes
usb 1-1: new full speed USB device number 2 using at91_ohci
UBIFS: recovery needed
uncorrectable error :
uncorrectable error :
uncorrectable error :
uncorrectable error :
uncorrectable error :
uncorrectable error :
uncorrectable error :
uncorrectable error :
uncorrectable error :
uncorrectable error :
uncorrectable error :
uncorrectable error :
UBI error: ubi_io_read: error -74 (ECC error) while reading 106496
bytes from PEB 782:2048, read 106496 bytes
UBIFS error (pid 1): ubifs_recover_leb: LEB 225 scanning failed
VFS: Cannot open root device "ubi0:root" or unknown-block(0,0)
On Sat, Aug 20, 2011 at 8:42 PM, Marc Kleine-Budde <mkl@pengutronix.de> wro=
te:
> On 08/20/2011 12:08 PM, Nataraj S Narayan wrote:
>> Unable to download and write a 30Mb ubifs file over tftp. =A0Any other
>> preferred method of writing to ubi volume?
>>
>> Usb mass store doesn't mount.
>>
>> regards
>>
>> Nataraj
>>
>> barebox@Atmel at91sam9263-ek:/ tftp rootfs.ubifs /dev/ubi0.root
>> warning: No MAC address set. Using random address 4A:01:CD:DA:A9:3C
>> phy0: Link is up - 100/Full
>> TFTP from server 192.168.0.110 ('rootfs.ubifs' -> '/dev/ubi0.root')
>> =A0 =A0 =A0 =A0 #################################################UBI err=
or: ubi_io_writs
>> UBI warning: ubi_eba_write_leb: failed to write data to PEB 603189552
>
> your PED (physical erase block) 603189552 seems to have a problem....
> Although the number itself is quite big: 603.189.552.
>
> Boot Linux and reformat the ubi.
>
>> UBI warning: ubi_ro_mode: switch to read-only mode
>> Couldnt or partially wrote data
>> write: Invalid argument
>>
>> tftp failed: error -22
>
> cheers, Marc
>
> --
> Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| Marc Kleine-Budde =
=A0 =A0 =A0 =A0 =A0 |
> Industrial Linux Solutions =A0 =A0 =A0 =A0| Phone: +49-231-2826-924 =A0 =
=A0 |
> Vertretung West/Dortmund =A0 =A0 =A0 =A0 =A0| Fax: =A0 +49-5121-206917-55=
55 |
> Amtsgericht Hildesheim, HRA 2686 =A0| http://www.pengutronix.de =A0 |
>
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
