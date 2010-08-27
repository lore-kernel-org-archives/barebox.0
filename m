Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OozAB-0006Mb-E4
	for barebox@lists.infradead.org; Fri, 27 Aug 2010 13:40:11 +0000
Received: by wyb38 with SMTP id 38so2109824wyb.36
	for <barebox@lists.infradead.org>; Fri, 27 Aug 2010 06:40:09 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 27 Aug 2010 19:10:08 +0530
Message-ID: <AANLkTimgEO3wqt27v2RKYtSHtmMK-w1FGoLP-dH44SnB@mail.gmail.com>
From: Nataraj S Narayan <natarajsn@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0969938784=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: barebox:Nand flash issue
To: barebox@lists.infradead.org

--===============0969938784==
Content-Type: multipart/alternative; boundary=0016e659f1d8d80564048ece4056

--0016e659f1d8d80564048ece4056
Content-Type: text/plain; charset=ISO-8859-1

Hi

If

CONFIG_NAND=y
CONFIG_NAND_ATMEL=y


barebox breaks and  wont load from dataflash.

I am trying to get UBI working with:-

CONFIG_CMD_UBI=y
CONFIG_UBI=y


I remove NAND flash from config, barebox loads:-
barebox 2010.08.0-00036-ga74a26f (Aug 27 2010 - 18:52:37)

Board: Atmel at91sam9263-ek
Malloc space: 0x23b00000 -> 0x23f00000 (size  4 MB)
Stack space : 0x23af8000 -> 0x23b00000 (size 32 kB)
Open /dev/env0 No such file or directory
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...
no MAC address set for eth0. please enter the one found on your board:
3a:1f:34:08:54:54

Hit any key to stop autoboot:  1

type update_kernel nor [<imagename>] to update kernel into flash
type update_root nor [<imagename>] to update rootfs into flash
type update_barebox_xmodem nor to update barebox into flash

9263-EK:/
9263-EK:/
9263-EK:/

regards

nataraj

--0016e659f1d8d80564048ece4056
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi <br><br>If <br><br>CONFIG_NAND=3Dy<br>CONFIG_NAND_ATMEL=3Dy<br><br><br>b=
arebox breaks and=A0 wont load from dataflash.<br><br>I am trying to get UB=
I working with:-<br><br>CONFIG_CMD_UBI=3Dy<br>CONFIG_UBI=3Dy<br><br><br>I r=
emove NAND flash from config, barebox loads:-<br>
barebox 2010.08.0-00036-ga74a26f (Aug 27 2010 - 18:52:37)<br><br>Board: Atm=
el at91sam9263-ek<br>Malloc space: 0x23b00000 -&gt; 0x23f00000 (size=A0 4 M=
B)<br>Stack space : 0x23af8000 -&gt; 0x23b00000 (size 32 kB)<br>Open /dev/e=
nv0 No such file or directory<br>
no valid environment found on /dev/env0. Using default environment<br>runni=
ng /env/bin/init...<br>no MAC address set for eth0. please enter the one fo=
und on your board: 3a:1f:34:08:54:54<br><br>Hit any key to stop autoboot:=
=A0 1<br>
<br>type update_kernel nor [&lt;imagename&gt;] to update kernel into flash<=
br>type update_root nor [&lt;imagename&gt;] to update rootfs into flash<br>=
type update_barebox_xmodem nor to update barebox into flash<br><br>9263-EK:=
/ <br>
9263-EK:/ <br>9263-EK:/ <br><br>regards<br><br>nataraj<br><br><br><br>

--0016e659f1d8d80564048ece4056--


--===============0969938784==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0969938784==--
