Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OpKJb-00045v-5N
	for barebox@lists.infradead.org; Sat, 28 Aug 2010 12:15:19 +0000
Received: by wwb24 with SMTP id 24so833838wwb.18
	for <barebox@lists.infradead.org>; Sat, 28 Aug 2010 05:15:17 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 28 Aug 2010 17:45:17 +0530
Message-ID: <AANLkTikVJ7wU7neSsep=OG23tstrv4f=LpQ_YptFu1Cd@mail.gmail.com>
From: Nataraj S Narayan <natarajsn@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1195607123=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Barebox: Nand flash
To: barebox@lists.infradead.org

--===============1195607123==
Content-Type: multipart/alternative; boundary=0016367fba5c36156e048ee12f08

--0016367fba5c36156e048ee12f08
Content-Type: text/plain; charset=ISO-8859-1

Hi

on commit a74a26f25477ec65229a57ca15e0f2c56396c69a

I don't find nand0.rootfs.

9263-EK:/  ls /dev/

/dev/zero           /dev/defaultenv     /dev/mem
/dev/ram0           /dev/nand0          /dev/nand_oob0
/dev/phy0           /dev/self_raw       /dev/self0
/dev/env_raw        /dev/env0


Am I missing anything?


regards

Nataraj

--0016367fba5c36156e048ee12f08
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi<br><br>on commit a74a26f25477ec65229a57ca15e0f2c56396c69a<br><br>I don&#=
39;t find nand0.rootfs.<br><br>9263-EK:/=A0 ls /dev/<br><br>/dev/zero=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 /dev/defaultenv=A0=A0=A0=A0 /dev/mem <br>/dev/ram0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /dev/nand0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /dev/n=
and_oob0 <br>
/dev/phy0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /dev/self_raw=A0=A0=A0=A0=A0=A0 /de=
v/self0 <br>/dev/env_raw=A0=A0=A0=A0=A0=A0=A0 /dev/env0=A0 <br><br><br>Am I=
 missing anything?<br><br><br>regards<br><br>Nataraj<br>

--0016367fba5c36156e048ee12f08--


--===============1195607123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1195607123==--
