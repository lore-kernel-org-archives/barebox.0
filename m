Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OoqYE-0004w7-FG
	for barebox@lists.infradead.org; Fri, 27 Aug 2010 04:28:27 +0000
Received: by wyb38 with SMTP id 38so1551100wyb.36
	for <barebox@lists.infradead.org>; Thu, 26 Aug 2010 21:28:25 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 27 Aug 2010 09:58:24 +0530
Message-ID: <AANLkTi=fu9YB-Te21U5TBTdVD=BKfpYHxjAW2m7mX1K8@mail.gmail.com>
From: Nataraj S Narayan <natarajsn@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0442119351=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Barebox: unprotect dataflash
To: barebox@lists.infradead.org

--===============0442119351==
Content-Type: multipart/alternative; boundary=0016e659f1d8adbf7d048ec68baf

--0016e659f1d8adbf7d048ec68baf
Content-Type: text/plain; charset=ISO-8859-1

Hi

I am on barebox 2010.05.0-00446-g02f7dfe-dirty (Aug 23 2010 - 10:05:28).


I need to store the Env onto dataflash. While using u-boot, the env is
written to  0x4000 in the dataflash.

Which of this could be the  Data-flash device?



9263-EK:/ ls -l /dev/
/dev/zero                /dev/defaultenv          /dev/mem
/dev/ram0                /dev/nand0               /dev/nand_oob0
/dev/phy0                /dev/nor0                /dev/self
/dev/env0                /dev/nor0.barebox        /dev/nor0.bareboxenv
/dev/nor0.kernel         /dev/nor0.root

9263-EK:/ ls -l /dev/defaultenv
drwxrwxrwx          0 .
drwxrwxrwx          0 ..
drwxrwxrwx          0 dev
drwxrwxrwx          0 env
-rwxrwxrwx          0 uImage


Tried on /dev/defaultenv to get this , and stalls:-

9263-EK:/ unprotect  /dev/defaultenv
9263-EK:/ saveenv
saving environment
cfi_protect: unprotect 0xf1851002 (size 131072)


regards

Nataraj

--0016e659f1d8adbf7d048ec68baf
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi<br><br>I am on barebox 2010.05.0-00446-g02f7dfe-dirty (Aug 23 2010 - 10:=
05:28).<br><br><br>I need to store the Env onto dataflash. While using u-bo=
ot, the env is written to=A0 0x4000 in the dataflash.<br><br>Which of this =
could be the=A0 Data-flash device?<br>
<br><br><br>9263-EK:/ ls -l /dev/<br>/dev/zero=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 /dev/defaultenv=A0=A0=A0=A0=A0=A0=A0=A0=A0 /dev/mem <br>=
/dev/ram0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /dev/nand0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /dev/nand_oob0 <br>/dev/phy0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /dev/nor0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 /dev/self <br>
/dev/env0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /dev/nor0.barebox=A0=
=A0=A0=A0=A0=A0=A0 /dev/nor0.bareboxenv <br>/dev/nor0.kernel=A0=A0=A0=A0=A0=
=A0=A0=A0 /dev/nor0.root=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br><br>9263-EK:/ ls=
 -l /dev/defaultenv <br>drwxrwxrwx=A0=A0=A0=A0=A0=A0=A0=A0=A0 0 .<br>drwxrw=
xrwx=A0=A0=A0=A0=A0=A0=A0=A0=A0 0 ..<br>
drwxrwxrwx=A0=A0=A0=A0=A0=A0=A0=A0=A0 0 dev<br>drwxrwxrwx=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 0 env<br>-rwxrwxrwx=A0=A0=A0=A0=A0=A0=A0=A0=A0 0 uImage<br><br><b=
r>Tried on /dev/defaultenv to get this , and stalls:-<br><br>9263-EK:/ unpr=
otect=A0 /dev/defaultenv <br>9263-EK:/ saveenv <br>saving environment<br>
cfi_protect: unprotect 0xf1851002 (size 131072)<br><br><br>regards<br><br>N=
ataraj<br>

--0016e659f1d8adbf7d048ec68baf--


--===============0442119351==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0442119351==--
