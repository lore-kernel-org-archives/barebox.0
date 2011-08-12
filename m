Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vx0-f177.google.com ([209.85.220.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qrrwf-0001pr-5m
	for barebox@lists.infradead.org; Fri, 12 Aug 2011 13:38:42 +0000
Received: by vxj2 with SMTP id 2so2902062vxj.36
	for <barebox@lists.infradead.org>; Fri, 12 Aug 2011 06:38:37 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAK8HZO+mfyaj9CPUB+nOzppz_+=o5xzpgsDOofV=1jF9rcR2yQ@mail.gmail.com>
References: <CAK8HZO+mfyaj9CPUB+nOzppz_+=o5xzpgsDOofV=1jF9rcR2yQ@mail.gmail.com>
Date: Fri, 12 Aug 2011 13:38:37 +0000
Message-ID: <CAK8HZOL36gu_PNR6OFuqsFb+LD==9igWYOPFT9+T4GUwxLNtyA@mail.gmail.com>
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
Subject: Re: at91sam9263ek, few issues
To: barebox@lists.infradead.org

Hi

Changed nand_chip_delay =3D50 from 20 in
./drivers/mtd/nand/atmel_nand.c, and presently getting:-

barebox@Atmel at91sam9263-ek:/ ubiattach /dev/nand0.root
UBI: attaching mtd0 to ubi0
UBI: physical eraseblock size:   131072 bytes (128 KiB)
UBI: logical eraseblock size:    126976 bytes
UBI: smallest flash I/O unit:    2048
UBI: VID header offset:          2048 (aligned 2048)
UBI: data offset:                4096
registering /dev/ubi0
UBI: attached mtd0 to ubi0
UBI: MTD device name:            "nand0.root"
UBI: MTD device size:            254 MiB
UBI: number of good PEBs:        2028
UBI: number of bad PEBs:         5
UBI: max. allowed volumes:       128
UBI: wear-leveling threshold:    4096
UBI: number of internal volumes: 1
UBI: number of user volumes:     0
UBI: available PEBs:             2004
UBI: total number of reserved PEBs: 24
UBI: number of PEBs reserved for bad PEB handling: 20
UBI: max/mean erase counter: 1/1

But further giving a

barebox@Atmel at91sam9263-ek:/ tftp rootfs1.ubif /dev/ubi0
TFTP from server 192.168.0.110 ('rootfs1.ubif' -> '/dev/ubi0')
        write: No space left on device

tftp failed: error -28

Btw , which is the irc channel of Barebox?

regards

Nataraj

On Fri, Aug 12, 2011 at 6:45 AM, Nataraj S Narayan <natarajsn@gmail.com> wr=
ote:
> Hi
>
> The following is the gist of issues seen, =A0namely
>
> =A01. unable to saveenv
> =A02. =A0ubiattach issue.
>
> I am using NAND device: Manufacturer ID: 0xec, Chip ID: 0xda (Samsung
> NAND 256MiB 3,3V 8-bit).
>
> Please help
>
> regards
>
> Nataraj
>
> barebox@Atmel at91sam9263-ek:/ =A0eth0.serverip=3D192.168.0.110
> barebox@Atmel at91sam9263-ek:/ eth0.ipaddr=3D192.168.0.105
>
> barebox@Atmel at91sam9263-ek:/ saveenv
> saving environment
> could not open /dev/env0: Read-only file system
>
> barebox@Atmel at91sam9263-ek:/ printenv
> locals:
> ip=3Ddhcp
> kernel_loc=3Dtftp
> rootfs_loc=3Dnet
> rootfs_type=3Dubifs
> rootfsimage=3Droot.ubifs
> kernelimage_type=3Duimage
> kernelimage=3DuImage
> nand_device=3Datmel_nand
> nand_parts=3D256k(barebox)ro,128k(bareboxenv),1536k(kernel),-(root)
> rootfs_mtdblock_nand=3D3
> autoboot_timeout=3D3
> bootargs=3Dconsole=3DttyS0,115200
> PS1=3D\e[1;32mbarebox@\e[1;31m\h:\w\e[0m
> globals:
> PATH=3D/env/bin
>
>
>
>
> barebox@Atmel at91sam9263-ek:/ ubiattach dev/nand0.root
> UBI: attaching mtd0 to ubi0
> UBI: physical eraseblock size: =A0 131072 bytes (128 KiB)
> UBI: logical eraseblock size: =A0 =A0126976 bytes
> UBI: smallest flash I/O unit: =A0 =A02048
> UBI: VID header offset: =A0 =A0 =A0 =A0 =A02048 (aligned 2048)
> UBI: data offset: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A04096
> UBI error: ubi_io_read: error -74 while reading 64 bytes from PEB 0:0,
> read 64 bytes
> UBI error: ubi_io_read: error -74 while reading 64 bytes from PEB
> 476:0, read 64 bytes
> UBI error: ubi_io_read: error -74 while reading 64 bytes from PEB
> 489:0, read 64 bytes
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
