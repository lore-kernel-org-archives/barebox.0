Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtpbg202.qq.com ([184.105.206.29])
 by casper.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1erhP9-0006aH-Lv
 for barebox@lists.infradead.org; Fri, 02 Mar 2018 09:55:12 +0000
From: "duhuanpeng" <548708880@qq.com>
References: <001601d3b17a$a176cbc0$e4646340$@qq.com>
 <20180302073645.az7o7zxeysrafxtw@pengutronix.de>
In-Reply-To: <20180302073645.az7o7zxeysrafxtw@pengutronix.de>
Date: Fri, 2 Mar 2018 17:53:30 +0800
Message-ID: <000f01d3b20c$524d84c0$f6e88e40$@qq.com>+C0D7D46BD8A415C1
MIME-Version: 1.0
Content-Language: zh-cn
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3916745117603278050=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: =?gb2312?B?tPC4tDogZnJlZXNjYWxlLW14MjgtZXZrIHJ1biBmcm9tIHJhbQ==?=
To: 'Sascha Hauer' <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============3916745117603278050==
Content-Type: text/plain;
	charset="gb2312"
Content-Transfer-Encoding: quoted-printable
Content-Language: zh-cn

Hi, this is the output for barebox-freescale-mx28evk-2nd.img

Load to address 0x00000000
- - -
Loading: *
Abort
MX28 U-Boot > tftpboot 0 barebox-freescale-mx28evk-2nd.img
Using FEC0 device
TFTP from server 192.168.12.61; our IP address is 192.168.12.62
Filename 'barebox-freescale-mx28evk-2nd.img'.
Load address: 0x0
Loading: T #################
done
Bytes transferred =3D 237766 (3a0c6 hex)
MX28 U-Boot > go 0
## Starting application at 0x00000000 ...

- - -

Load to address 0x41600000:
- - -
MX28 U-Boot > tftpboot barebox-freescale-mx28evk-2nd.img
Using FEC0 device
TFTP from server 192.168.12.61; our IP address is 192.168.12.62
Filename 'barebox-freescale-mx28evk-2nd.img'.
Load address: 0x41600000
Loading: T #################
done
Bytes transferred =3D 237766 (3a0c6 hex)
MX28 U-Boot > go 0x41600000
## Starting application at 0x41600000 ...

- - - -

This macro is on CONFIG_PBL_RELOCATABLE
#
# memory layout
#
CONFIG_HAVE_PBL_IMAGE=3Dy
CONFIG_HAVE_PBL_MULTI_IMAGES=3Dy
CONFIG_HAVE_IMAGE_COMPRESSION=3Dy
CONFIG_PBL_IMAGE=3Dy
CONFIG_PBL_MULTI_IMAGES=3Dy
CONFIG_PBL_RELOCATABLE=3Dy

-----=D3=CA=BC=FE=D4=AD=BC=FE-----
=B7=A2=BC=FE=C8=CB: Sascha Hauer [mailto:s.hauer@pengutronix.de]=20
=B7=A2=CB=CD=CA=B1=BC=E4: 2018=C4=EA3=D4=C22=C8=D5 15:37
=CA=D5=BC=FE=C8=CB: duhuanpeng
=B3=AD=CB=CD: barebox@lists.infradead.org
=D6=F7=CC=E2: Re: freescale-mx28-evk run from ram

Hi Du Huanpeng,

On Fri, Mar 02, 2018 at 12:30:37AM +0800, duhuanpeng wrote:
> Dear all,
>=20
> Happy Yuanxiao(Lantern) Festival!

Thanks, same to you. Just googled some pictures for the lantern =
Festival, it
must look amazing to stand under that many lanterns ;)

> In System.map
> 00000000 T __image_start
> 00000000 T start
> 00000000 T _stext
> 00000000 T _text
> 00000004 T __bare_init_start
> 00000004 T get_runtime_offset
> 00000014 t linkadr
> 00000018 T __ld_var_base
> 00000018 T __ld_var__text
> 00000020 t ___text
> 00000024 T __ld_var___rel_dyn_start
> 0000002c t ____rel_dyn_start
> 00000030 T __ld_var___rel_dyn_end
> 00000038 t ____rel_dyn_end
> 0000003c T __ld_var___dynsym_start
> 00000044 t ____dynsym_start
> 00000048 T __ld_var___dynsym_end
> 00000050 t ____dynsym_end
> 00000054 T __ld_var___bss_start
> 0000005c t ____bss_start
> 00000060 T __ld_var___bss_stop
> 00000068 t ____bss_stop
>=20
> So, I load barebox.bin to address 0x00000000:

> I assume you use freescale-mx28-evk_defconfig, right?
Yes.

Which image do you start? It seems you are trying to start barebox.bin.
> barebox.bin and barebox-freescale-mx28evk-2nd.img
It should be images/barebox-freescale-mx28evk-2nd.img instead.

The image should be linked to 0x0, that is right. The code is position
independent though and the full barebox relocates itself to the end of =
the
available SDRAM automatically. TEXT_BASE is not relevant here.
The start symbol is still 0x00000000 even I change TEXT_BASE in =
menuconfig.
my board have 64MiB ram. Modified board.=20
Very cheap one, just 33=80. :D
EasyARM-i.MX283A
http://www.zlg.cn/ipc/ipc/product/id/92.html
http://www.zlg.cn/ipc/down/down/id/92.html

This board has a LCD(480*800?), I want to test font support on this =
board.

The sch is here:
https://drive.google.com/open?id=3D1_3xW7nfQ6p9tnkjZEDK9vZiLlUnat25K

There are many pcf fonts here:
https://www.netsarang.com/download/main.html

and maybe use code from freetype?=20
http://www.freetype.org/

Sascha

--=20
Pengutronix e.K.                           |                             =
|
Industrial Linux Solutions                 | http://www.pengutronix.de/  =
|
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    =
|
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|






--===============3916745117603278050==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3916745117603278050==--
