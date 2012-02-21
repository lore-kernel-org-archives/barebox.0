Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rzvuf-0002IQ-H4
 for barebox@lists.infradead.org; Tue, 21 Feb 2012 20:02:18 +0000
Date: Tue, 21 Feb 2012 21:02:05 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120221210205.0733d834@eb-e6520>
In-Reply-To: <CAACwSTKshGv05PfJWJkFTKzhof2q+hjupdh=U3VH2Fbdc-6VBQ@mail.gmail.com>
References: <CAACwSTKshGv05PfJWJkFTKzhof2q+hjupdh=U3VH2Fbdc-6VBQ@mail.gmail.com>
Mime-Version: 1.0
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
Subject: Re: mx53 loco boot procedure
To: George Stefan <stefan.george87@gmail.com>
Cc: barebox@lists.infradead.org

Hi George,

Le Tue, 21 Feb 2012 20:38:24 +0200,
George Stefan <stefan.george87@gmail.com> a =E9crit :

> Hello guys,
> After  dd if=3Dbarebox.bin of=3D/dev/sdb bs=3D512 and dd if=3Darch/arm/bo=
ot/uImage
> of=3D/dev/sdb bs=3D512 seek=3D768 i am getting
> =

> Board: Freescale i.MX53 LOCO registered netconsole as cs1 eth@eth0: got M=
AC
> address from EEPROM: 00:04:9F:01:B4:5B mci@mci0: No partition table found
> Cannot reset the SD/MMC interface Malloc space: 0x7df00000 -> 0x7fefffff
> (size 32 MB) Stack space : 0x7def8000 -> 0x7df00000 (size 32 kB) envfs:
> wrong magic on /dev/env0 no valid environment found on /dev/env0. Using
> default environment running /env/bin/init... Hit any key to stop autoboot:
> 1 phy0: Link is up - 100/Full T DHCP client bound to address
> 128.224.168.167 TFTP from server 128.224.168.11 ('zImage-loco' -> '/image=
')
> =

> Wasn't the board suppose to boot from sd card by default?
> =

it will if you configure it correctly (ie: check env/config and put
the right settings inside to tell it to get the kernel from disk
instead of tftp).

Eric
-- =

http://eukrea.com/en/news/104-2012

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
