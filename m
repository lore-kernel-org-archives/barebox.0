Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OqJDF-0001Xi-7h
	for barebox@lists.infradead.org; Tue, 31 Aug 2010 05:16:50 +0000
Received: by wwb24 with SMTP id 24so3981914wwb.18
	for <barebox@lists.infradead.org>; Mon, 30 Aug 2010 22:16:47 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 31 Aug 2010 10:46:47 +0530
Message-ID: <AANLkTimX=cnQKO78ejygmv-1m6LzcUfmKO20Cg_waz-9@mail.gmail.com>
From: Nataraj S Narayan <natarajsn@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1195906176=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: barebox :i2c error
To: barebox@lists.infradead.org

--===============1195906176==
Content-Type: multipart/alternative; boundary=0016367fab6511b1b2048f17b017

--0016367fab6511b1b2048f17b017
Content-Type: text/plain; charset=ISO-8859-1

Hi

On commit 3d5d2279c0c5d3a7e83f94d98434c1cf29e35311.

root@debian:/software/barebox# make ARCH=arm
CROSS_COMPILE=/armbin/arm-linux-
make[1]: `arch/arm/include/asm/mach-types.h' is up to date.
  CHK     include/linux/version.h
  CHK     include/linux/utsrelease.h
  SYMLINK include/config.h -> arch/arm/boards/at91sam9263ek//config.h
  CC      drivers/i2c/i2c.o
drivers/i2c/i2c.c:375: error: 'i2c_register_master' undeclared here (not in
a function)
drivers/i2c/i2c.c:375: warning: type defaults to 'int' in declaration of
'i2c_register_master'
make[2]: *** [drivers/i2c/i2c.o] Error 1
make[1]: *** [drivers/i2c] Error 2
make: *** [drivers] Error 2


# grep I2C .config
# CONFIG_CMD_I2C is not set
CONFIG_I2C=y
CONFIG_DRIVER_I2C_MC13892=y
CONFIG_DRIVER_I2C_MC34704=y
CONFIG_DRIVER_I2C_MC9SDZ60=y
CONFIG_DRIVER_I2C_LP3972=y
# CONFIG_DRIVER_I2C_TWL4030 is not set



regards

Nataraj

--0016367fab6511b1b2048f17b017
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi<br><br>On commit 3d5d2279c0c5d3a7e83f94d98434c1cf29e35311.<br><br>root@d=
ebian:/software/barebox# make ARCH=3Darm CROSS_COMPILE=3D/armbin/arm-linux-=
<br>make[1]: `arch/arm/include/asm/mach-types.h&#39; is up to date.<br>=A0 =
CHK=A0=A0=A0=A0 include/linux/version.h<br>
=A0 CHK=A0=A0=A0=A0 include/linux/utsrelease.h<br>=A0 SYMLINK include/confi=
g.h -&gt; arch/arm/boards/at91sam9263ek//config.h<br>=A0 CC=A0=A0=A0=A0=A0 =
drivers/i2c/i2c.o<br>drivers/i2c/i2c.c:375: error: &#39;i2c_register_master=
&#39; undeclared here (not in a function)<br>
drivers/i2c/i2c.c:375: warning: type defaults to &#39;int&#39; in declarati=
on of &#39;i2c_register_master&#39;<br>make[2]: *** [drivers/i2c/i2c.o] Err=
or 1<br>make[1]: *** [drivers/i2c] Error 2<br>make: *** [drivers] Error 2<b=
r>
<br><br># grep I2C .config<br># CONFIG_CMD_I2C is not set<br>CONFIG_I2C=3Dy=
<br>CONFIG_DRIVER_I2C_MC13892=3Dy<br>CONFIG_DRIVER_I2C_MC34704=3Dy<br>CONFI=
G_DRIVER_I2C_MC9SDZ60=3Dy<br>CONFIG_DRIVER_I2C_LP3972=3Dy<br># CONFIG_DRIVE=
R_I2C_TWL4030 is not set<br>
<br><br><br>regards<br><br>Nataraj<br>

--0016367fab6511b1b2048f17b017--


--===============1195906176==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1195906176==--
