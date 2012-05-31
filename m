Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sa8Hn-0001ol-SR
 for barebox@lists.infradead.org; Thu, 31 May 2012 16:31:44 +0000
Received: by wgbds1 with SMTP id ds1so731812wgb.18
 for <barebox@lists.infradead.org>; Thu, 31 May 2012 09:31:41 -0700 (PDT)
MIME-Version: 1.0
From: =?ISO-8859-1?Q?Dirk_H=F6rner?= <dirker@gmail.com>
Date: Thu, 31 May 2012 18:31:20 +0200
Message-ID: <CAOoHCj8GbWPQRoPq8+dCnrOS-_gttcKa_VOEup-7noOKL-Ljyg@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6673257767328975338=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: MTD NAND updates
To: barebox@lists.infradead.org

--===============6673257767328975338==
Content-Type: multipart/alternative; boundary=0016e6dd894842e2cd04c1579a6b

--0016e6dd894842e2cd04c1579a6b
Content-Type: text/plain; charset=ISO-8859-1

Hi List,

while going through the NAND specific parts of the MTD layer I noticed that
there are quite a few updates available from recent Linux kernel versions:
 * detection of flashes via ONFI
 * improved detection of flashes via extid
 * added device id's in the hard-coded table

I'd like to provide some patches, just a few questions:
 * should I base them on master or next?
 * should I try to cherry-pick updates from the kernel or should I just
merge stuff from the kernel and send patches split into logical parts
(onfi, extid, id additions)?

Thanks,
Dirk

--0016e6dd894842e2cd04c1579a6b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi List,<div><br></div><div>while going through the NAND specific parts of =
the MTD layer I noticed that there are quite a few updates available from r=
ecent Linux kernel versions:</div><div>=A0* detection of flashes via ONFI</=
div>

<div>=A0* improved detection of flashes via extid</div><div>=A0* added devi=
ce id&#39;s in the=A0hard-coded=A0table</div><div><br></div><div>I&#39;d li=
ke to provide some patches, just a few questions:</div><div>=A0* should I b=
ase them on master or next?</div>

<div>=A0* should I try to cherry-pick updates from the kernel or should I j=
ust merge stuff from the kernel and send=A0patches split into logical parts=
 (onfi, extid, id additions)?</div><div><br></div><div>Thanks,</div><div>Di=
rk</div>


--0016e6dd894842e2cd04c1579a6b--


--===============6673257767328975338==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6673257767328975338==--
