Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QgtKR-0000w6-6y
	for barebox@lists.infradead.org; Wed, 13 Jul 2011 06:53:56 +0000
Received: by iyn15 with SMTP id 15so6247748iyn.36
	for <barebox@lists.infradead.org>; Tue, 12 Jul 2011 23:53:43 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 13 Jul 2011 12:23:43 +0530
Message-ID: <CAEhpT-VKNYVHHJnz3XKUBOGK3tSqBM=FXwK1ym0uue8ny6dFBA@mail.gmail.com>
From: Calvin Johnson <linux.cj@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0534298345=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: ARM security extension is not available with current barebox
To: barebox@lists.infradead.org

--===============0534298345==
Content-Type: multipart/alternative; boundary=0016e645abae965f3b04a7ede0c1

--0016e645abae965f3b04a7ede0c1
Content-Type: text/plain; charset=ISO-8859-1

Hi,

While trying to compile barebox for ARM processor with TrustZone
security extension, the assembler complained about unsupported ARM
instruction "SMC".
-----------------------------------
 {standard input}: Assembler messages:
{standard input}:12: Error: selected processor does not support ARM mode
`smc #0'
-----------------------------------

On searching online I found the following link which explains the solution.
https://lists.yoctoproject.org/pipermail/poky/2011-May/005939.html


I feel that we may have to bring ARM TrustZone security extension support to
barebox at least as a conditional compilation option, as this may be widely
used in ARM based embedded systems.

In order to resolve my issue, I just had to make a minor change
to arch/arm/Makefile

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 6201a9b..b0bc8b9 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -15,11 +15,12 @@ endif

 comma = ,

+
 # This selects which instruction set is used.
 # Note that GCC does not numerically define an architecture version
 # macro, but instead defines a whole series of macros which makes
 # testing for a specific architecture or later rather impossible.
-arch-$(CONFIG_CPU_32v7)                :=-D__LINUX_ARM_ARCH__=7 $(call
cc-option,-march=armv7-a,-march=armv5t -Wa$(comma)-march=armv7-a)
+arch-$(CONFIG_CPU_32v7)                :=-D__LINUX_ARM_ARCH__=7 $(call
cc-option,-march=armv7-a+sec,-march=armv5t -Wa$(comma)-march=armv7-a+sec)
 arch-$(CONFIG_CPU_32v6)            :=-D__LINUX_ARM_ARCH__=6 $(call
cc-option,-march=armv6,-march=armv5t -Wa$(comma)-march=armv6)
 arch-$(CONFIG_CPU_32v5)                :=-D__LINUX_ARM_ARCH__=5 $(call
cc-option,-march=armv5te,-march=armv4t)
 arch-$(CONFIG_CPU_32v4T)       :=-D__LINUX_ARM_ARCH__=4 -march=armv4t

As I'm new to barebox, I'm not sure whether this change will break
something. It would be good if experts can have look at the link provided
and submit a patch.

Thanks,
Calvin

--0016e645abae965f3b04a7ede0c1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>While trying to compile barebox for ARM processor wi=
th TrustZone security=A0extension, the assembler complained about unsupport=
ed ARM instruction &quot;SMC&quot;.</div><div>-----------------------------=
------</div>
<div>=A0{standard input}: Assembler messages:</div><div>{standard input}:12=
: Error: selected processor does not support ARM mode `smc #0&#39;</div><di=
v>-----------------------------------</div><div><br></div><div>On searching=
 online I found the following link which explains the solution.</div>
<div><a href=3D"https://lists.yoctoproject.org/pipermail/poky/2011-May/0059=
39.html">https://lists.yoctoproject.org/pipermail/poky/2011-May/005939.html=
</a></div><div><br></div><div><br></div><div>I feel that we may have to bri=
ng ARM TrustZone security extension support to barebox at least as a condit=
ional compilation option, as this may be widely used in ARM based embedded =
systems.</div>
<div><br></div><div>In order to resolve my issue, I just had to make a mino=
r change to=A0arch/arm/Makefile</div><div><br></div><div><div>diff --git a/=
arch/arm/Makefile b/arch/arm/Makefile</div><div>index 6201a9b..b0bc8b9 1006=
44</div>
<div>--- a/arch/arm/Makefile</div><div>+++ b/arch/arm/Makefile</div><div>@@=
 -15,11 +15,12 @@ endif</div><div><br></div><div>=A0comma =3D ,</div><div><=
br></div><div>+</div><div>=A0# This selects which instruction set is used.<=
/div>
<div>=A0# Note that GCC does not numerically define an architecture version=
</div><div>=A0# macro, but instead defines a whole series of macros which m=
akes</div><div>=A0# testing for a specific architecture or later rather imp=
ossible.</div>
<div>-arch-$(CONFIG_CPU_32v7) =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0:=3D-D__LINUX_=
ARM_ARCH__=3D7 $(call cc-option,-march=3Darmv7-a,-march=3Darmv5t -Wa$(comma=
)-march=3Darmv7-a)</div><div>+arch-$(CONFIG_CPU_32v7) =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0:=3D-D__LINUX_ARM_ARCH__=3D7 $(call cc-option,-march=3Darmv7-a+s=
ec,-march=3Darmv5t -Wa$(comma)-march=3Darmv7-a+sec)</div>
<div>=A0arch-$(CONFIG_CPU_32v6) =A0 =A0 =A0 =A0 =A0 =A0:=3D-D__LINUX_ARM_AR=
CH__=3D6 $(call cc-option,-march=3Darmv6,-march=3Darmv5t -Wa$(comma)-march=
=3Darmv6)</div><div>=A0arch-$(CONFIG_CPU_32v5) =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0:=3D-D__LINUX_ARM_ARCH__=3D5 $(call cc-option,-march=3Darmv5te,-march=3D=
armv4t)</div>
<div>=A0arch-$(CONFIG_CPU_32v4T) =A0 =A0 =A0 :=3D-D__LINUX_ARM_ARCH__=3D4 -=
march=3Darmv4t</div></div><div><br></div><div>As I&#39;m new to barebox, I&=
#39;m not sure whether this change will break something. It would be good i=
f experts can have look at the link provided and submit a patch.</div>
<div><br></div><div>Thanks,</div><div>Calvin</div><div><br></div>

--0016e645abae965f3b04a7ede0c1--


--===============0534298345==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0534298345==--
