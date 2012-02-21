Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f49.google.com ([74.125.83.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rzubb-00061w-95
 for barebox@lists.infradead.org; Tue, 21 Feb 2012 18:38:28 +0000
Received: by eeke50 with SMTP id e50so2809833eek.36
 for <barebox@lists.infradead.org>; Tue, 21 Feb 2012 10:38:24 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 21 Feb 2012 20:38:24 +0200
Message-ID: <CAACwSTKshGv05PfJWJkFTKzhof2q+hjupdh=U3VH2Fbdc-6VBQ@mail.gmail.com>
From: George Stefan <stefan.george87@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3932034391952329407=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: mx53 loco boot procedure
To: barebox@lists.infradead.org

--===============3932034391952329407==
Content-Type: multipart/alternative; boundary=90e6ba5bb8954fd8b804b97db7ee

--90e6ba5bb8954fd8b804b97db7ee
Content-Type: text/plain; charset=ISO-8859-1

Hello guys,
After  dd if=barebox.bin of=/dev/sdb bs=512 and dd if=arch/arm/boot/uImage
of=/dev/sdb bs=512 seek=768 i am getting

Board: Freescale i.MX53 LOCO registered netconsole as cs1 eth@eth0: got MAC
address from EEPROM: 00:04:9F:01:B4:5B mci@mci0: No partition table found
Cannot reset the SD/MMC interface Malloc space: 0x7df00000 -> 0x7fefffff
(size 32 MB) Stack space : 0x7def8000 -> 0x7df00000 (size 32 kB) envfs:
wrong magic on /dev/env0 no valid environment found on /dev/env0. Using
default environment running /env/bin/init... Hit any key to stop autoboot:
1 phy0: Link is up - 100/Full T DHCP client bound to address
128.224.168.167 TFTP from server 128.224.168.11 ('zImage-loco' -> '/image')

Wasn't the board suppose to boot from sd card by default?

Also, i have another question. I want to replace

/* call start_barebox with its absolute address */
        r = (unsigned int)&start_barebox;
        __asm__ __volatile__("mov pc, %0" : : "r"(r));

&start_barebox with the actual address of the uImage practically to skip
all the barebox part and
boot only with the minimal CPU and memory setup. What do you think?
Regards,
George.

--90e6ba5bb8954fd8b804b97db7ee
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello guys,<div>After =A0<span class=3D"Apple-style-span" style=3D"font-fam=
ily:monospace;font-size:13px;line-height:14px;white-space:pre">dd if=3Dbare=
box.bin of=3D/dev/sdb bs=3D512 and </span><span class=3D"Apple-style-span" =
style=3D"font-family:monospace;font-size:13px;line-height:14px;white-space:=
pre">dd if=3Darch/arm/boot/uImage of=3D/dev/sdb bs=3D512 seek=3D768 i am ge=
tting</span></div>
<div><font class=3D"Apple-style-span" face=3D"monospace"><span class=3D"App=
le-style-span" style=3D"line-height:14px;white-space:pre"><br></span></font=
></div><div><font class=3D"Apple-style-span" face=3D"monospace"><span class=
=3D"Apple-style-span" style=3D"line-height:14px;white-space:pre">Board: Fre=
escale i.MX53 LOCO
registered netconsole as cs1
eth@eth0: got MAC address from EEPROM: 00:04:9F:01:B4:5B
mci@mci0: No partition table found
Cannot reset the SD/MMC interface
Malloc space: 0x7df00000 -&gt; 0x7fefffff (size 32 MB)
Stack space : 0x7def8000 -&gt; 0x7df00000 (size 32 kB)
envfs: wrong magic on /dev/env0
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...

Hit any key to stop autoboot:  1
phy0: Link is up - 100/Full
T DHCP client bound to address 128.224.168.167
TFTP from server 128.224.168.11 (&#39;zImage-loco&#39; -&gt; &#39;/image&#3=
9;)</span></font><span class=3D"Apple-style-span" style=3D"font-family:mono=
space;font-size:13px;line-height:14px;white-space:pre">
</span></div><div><span class=3D"Apple-style-span" style=3D"font-family:mon=
ospace;font-size:13px;line-height:14px;white-space:pre"><br></span></div><d=
iv><font class=3D"Apple-style-span" face=3D"monospace"><span class=3D"Apple=
-style-span" style=3D"line-height:14px;white-space:pre">Wasn&#39;t the boar=
d suppose to boot from sd card by default?</span></font></div>
<div><font class=3D"Apple-style-span" face=3D"monospace"><span class=3D"App=
le-style-span" style=3D"line-height:14px;white-space:pre"><br></span></font=
></div><div><font class=3D"Apple-style-span" face=3D"monospace"><span class=
=3D"Apple-style-span" style=3D"line-height:14px;white-space:pre">Also, i ha=
ve another question. I want to replace </span></font></div>
<div><font class=3D"Apple-style-span" face=3D"monospace"><span class=3D"App=
le-style-span" style=3D"line-height:14px;white-space:pre"><div><br></div><d=
iv>/* call start_barebox with its absolute address */</div><div>=A0 =A0 =A0=
 =A0 r =3D (unsigned int)&amp;start_barebox;</div>
<div>=A0 =A0 =A0 =A0 __asm__ __volatile__(&quot;mov pc, %0&quot; : : &quot;=
r&quot;(r));</div><div><br></div><div>&amp;start_barebox with the actual ad=
dress of the uImage practically to skip all the barebox part and </div><div=
>boot only with the minimal CPU and memory setup. What do you think? </div>
<div>Regards,</div><div>George.</div></span></font></div>

--90e6ba5bb8954fd8b804b97db7ee--


--===============3932034391952329407==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3932034391952329407==--
