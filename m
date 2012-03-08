Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f49.google.com ([74.125.83.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S5cNs-0000Nr-Pc
 for barebox@lists.infradead.org; Thu, 08 Mar 2012 12:23:53 +0000
Received: by eekb45 with SMTP id b45so156306eek.36
 for <barebox@lists.infradead.org>; Thu, 08 Mar 2012 04:23:50 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 8 Mar 2012 14:23:50 +0200
Message-ID: <CAACwST+JNsH0Yic-SbuA+6sYCWq-cE=M_nEy+ybgJebKZ4hY1Q@mail.gmail.com>
From: George Stefan <stefan.george87@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4093734961764052616=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: __bss_stop question
To: barebox@lists.infradead.org

--===============4093734961764052616==
Content-Type: multipart/alternative; boundary=0015174beea43cf15e04baba5929

--0015174beea43cf15e04baba5929
Content-Type: text/plain; charset=ISO-8859-1

Hello all,
Is __bss_stop the end of barebox.bin?
Meaning that, if i have i file which i dd it with offset=768
could i refer to it with __bss_stop.
Should i consider also the bareboxenv, meaning that
the end of barebox.bin is __bss_stop + sizeof(bareboxenv)?
PS: board is imx53 loco
Regards,
George!

--0015174beea43cf15e04baba5929
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello all,<div>Is __bss_stop the end of barebox.bin?=A0</div><div>Meaning t=
hat, if i have i file which i dd it with offset=3D768</div><div>could i ref=
er to it with __bss_stop.=A0</div><div>Should i consider also the bareboxen=
v, meaning that</div>
<div>the end of barebox.bin is __bss_stop + sizeof(bareboxenv)?</div><div>P=
S: board is imx53 loco</div><div>Regards,</div><div>George!</div>

--0015174beea43cf15e04baba5929--


--===============4093734961764052616==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4093734961764052616==--
