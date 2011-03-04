Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvUpI-0000tE-QZ
	for barebox@lists.infradead.org; Fri, 04 Mar 2011 13:13:50 +0000
Date: Fri, 4 Mar 2011 15:13:29 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20110304131329.GD3143@tarshish>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B0104E@SRV-VS06.TELEVIC.COM>
	<20110304083028.GC29521@pengutronix.de>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B0109C@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B0109C@SRV-VS06.TELEVIC.COM>
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
Subject: Re: bootargs
To: Vanalme Filip <F.Vanalme@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Vanalme,

On Fri, Mar 04, 2011 at 01:54:38PM +0100, Vanalme Filip wrote:
> barebox 2010.12.0-00073-gfad11e8-dirty (Mar  3 2011 - 09:28:01)
> 
> Board: Freescale i.MX27 PDK 3Stack
> NAND device: Manufacturer ID: 0xec, Chip ID: 0xaa (Samsung NAND 256MiB 1,8V 8-bit)
> Bad block table found at page 131008, version 0x01
> Bad block table found at page 130944, version 0x01
> PMIC Power
> Enable FEC
> Reset FEC
> Malloc space: 0xa7b00000 -> 0xa7f00000 (size  4 MB)
> Stack space : 0xa7af8000 -> 0xa7b00000 (size 32 kB)
> running /env/bin/init...
> 
> Hit any key to stop autoboot:  3 2 1 0
> loaded zImage from /dev/nand0.kernel.bb with size 1996604
> commandline: console=ttymxc0,115200 ip=dhcp rootfstype=jffs2 root=/dev/nfs nfsroot=10.0.48.80:/tftpboot/rootfs earlyprintk mtdparts=mxc_nand:256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)

[snip]

Removing "rootfstype=jffs2" might help. Just a guess.

baruch

> IP-Config: Got DHCP answer from 0.0.0.0, my address is 10.0.49.70
> IP-Config: Complete:
>      device=eth0, addr=10.0.49.70, mask=255.255.0.0, gw=10.0.127.254,
>      host=10.0.49.70, domain=televic.com, nis-domain=(none),
>      bootserver=0.0.0.0, rootserver=10.0.48.80, rootpath=
> VFS: Unable to mount root fs via NFS, trying floppy.   <======== ??
> List of all partitions:
> 1f00             256 mtdblock0  (driver?)
> 1f01             128 mtdblock1  (driver?)
> 1f02            2048 mtdblock2  (driver?)
> 1f03          259712 mtdblock3  (driver?)
> No filesystem could mount root, tried:  jffs2
> Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-block(2,0)
> 
> 
> I checked the kernel's configuration and I think I have all NFS related items included.
> A showmount -e 10.0.48.80 gives me :
> /tftpboot/rootfs			10.0.0.0/255.255.0.0
> /home/user1/i.MX27/ltib/rootfs	10.0.0.0/255.255.0.0
> 
> So, I guess the mounting point is correct. 
> The bootargs also look OK to me. However, there's still something I miss here.

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
