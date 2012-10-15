Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNldQ-0004yX-Qe
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 14:27:13 +0000
Received: by mail-lb0-f177.google.com with SMTP id gi11so3418980lbb.36
 for <barebox@lists.infradead.org>; Mon, 15 Oct 2012 07:27:09 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 15 Oct 2012 19:57:09 +0530
Message-ID: <CA+pW49qskve7wDMqJe6gZrVX9O1UCOK4cdQXehwK3oLdamsyYQ@mail.gmail.com>
From: Madhu koriginja <madhava.koriginja@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8991333297363571203=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: malloc Out of memory after ubiattach operation
To: barebox@lists.infradead.org

--===============8991333297363571203==
Content-Type: multipart/alternative; boundary=f46d0435bf4e2d091904cc19d518

--f46d0435bf4e2d091904cc19d518
Content-Type: text/plain; charset=ISO-8859-1

After barebox up, I erased the /dev/nand0.rootfs.bb using erase command.
kernel is already present in the /dev/nand0.kernel.
After ubiattach command, if I try the boot I am getting the below error.
Actually my aim is to boot the kernel and it should mount to ubifs, to
simplify the problem and reproduce the same I am just trying the boot after
ubiattach instead of preparing the ubi0 device.
Barebox >/ubiattach /dev/nand0.rootfs
UBI: attaching mtd0 to ubi0
UBI: physical eraseblock size:   1048576 bytes (1024 KiB)
UBI: logical eraseblock size:    1044480 bytes
UBI: smallest flash I/O unit:    4096
UBI: sub-page size:              1024
UBI: VID header offset:          1024 (aligned 1024)
UBI: data offset:                4096
UBI: empty MTD device detected
UBI: create volume table (copy #1)
UBI: create volume table (copy #2)
registering /dev/ubi0
UBI: attached mtd0 to ubi0
UBI: MTD device name:            "nand0.rootfs"
UBI: MTD device size:            16 MiB
UBI: number of good PEBs:        16
UBI: number of bad PEBs:         0
UBI: max. allowed volumes:       128
UBI: wear-leveling threshold:    4096
UBI: number of internal volumes: 1
UBI: number of user volumes:     0
UBI: available PEBs:             10
UBI: total number of reserved PEBs: 6
UBI: number of PEBs reserved for bad PEB handling: 2
UBI: max/mean erase counter: 1/0

Barebox >/ boot
booting kernel of type uimage from /dev/nand0.kernel.bb
bootm /dev/nand0.kernel.bb
requesting xmalloc size: 2456544
ERROR: out of memory

Please somebody suggest me some pointer to solve this issue.

Thanks,
Madhu

--f46d0435bf4e2d091904cc19d518
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>After barebox up, I erased the /dev/<a href=3D"http://nand0.rootfs.bb"=
>nand0.rootfs.bb</a> using erase command. kernel is already present in the =
/dev/nand0.kernel.</div><div>After ubiattach command, if I try the boot I a=
m getting the below error.=A0</div>
<div>Actually my aim is to boot the kernel and it should mount to ubifs, to=
 simplify the problem and reproduce the same I am just trying the boot afte=
r ubiattach instead of preparing the ubi0 device.</div>Barebox &gt;/ubiatta=
ch /dev/nand0.rootfs<div>
<div>UBI: attaching mtd0 to ubi0</div><div>UBI: physical eraseblock size: =
=A0 1048576 bytes (1024 KiB)</div><div>UBI: logical eraseblock size: =A0 =
=A01044480 bytes</div><div>UBI: smallest flash I/O unit: =A0 =A04096</div><=
div>UBI: sub-page size: =A0 =A0 =A0 =A0 =A0 =A0 =A01024</div>
<div>UBI: VID header offset: =A0 =A0 =A0 =A0 =A01024 (aligned 1024)</div><d=
iv>UBI: data offset: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A04096</div><div>UBI: emp=
ty MTD device detected</div><div>UBI: create volume table (copy #1)</div><d=
iv>UBI: create volume table (copy #2)</div>
<div>registering /dev/ubi0</div><div>UBI: attached mtd0 to ubi0</div><div>U=
BI: MTD device name: =A0 =A0 =A0 =A0 =A0 =A0&quot;nand0.rootfs&quot;</div><=
div>UBI: MTD device size: =A0 =A0 =A0 =A0 =A0 =A016 MiB</div><div>UBI: numb=
er of good PEBs: =A0 =A0 =A0 =A016</div>
<div>UBI: number of bad PEBs: =A0 =A0 =A0 =A0 0</div><div>UBI: max. allowed=
 volumes: =A0 =A0 =A0 128</div><div>UBI: wear-leveling threshold: =A0 =A040=
96</div><div>UBI: number of internal volumes: 1</div><div>UBI: number of us=
er volumes: =A0 =A0 0</div>
<div>UBI: available PEBs: =A0 =A0 =A0 =A0 =A0 =A0 10</div><div>UBI: total n=
umber of reserved PEBs: 6</div><div>UBI: number of PEBs reserved for bad PE=
B handling: 2</div><div>UBI: max/mean erase counter: 1/0</div><div><br></di=
v><div><div>
Barebox &gt;/ boot</div><div>booting kernel of type uimage from /dev/<a hre=
f=3D"http://nand0.kernel.bb">nand0.kernel.bb</a></div><div>bootm /dev/<a hr=
ef=3D"http://nand0.kernel.bb">nand0.kernel.bb</a></div><div>requesting xmal=
loc size: 2456544</div>
<div>ERROR: out of memory</div></div><div><br></div><div>Please somebody su=
ggest me some pointer to solve this issue.</div><div><br></div><div>Thanks,=
</div><div>Madhu</div><div><br></div></div>

--f46d0435bf4e2d091904cc19d518--


--===============8991333297363571203==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8991333297363571203==--
