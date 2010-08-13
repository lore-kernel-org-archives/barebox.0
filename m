Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OjvxH-0005wh-7E
	for barebox@lists.infradead.org; Fri, 13 Aug 2010 15:14:04 +0000
Received: by ywe9 with SMTP id 9so1190782ywe.36
	for <barebox@lists.infradead.org>; Fri, 13 Aug 2010 08:13:57 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 13 Aug 2010 20:43:56 +0530
Message-ID: <AANLkTi=amyyUu9Nom7sUTx=XqQuyP_-iCb4wczanoBO9@mail.gmail.com>
From: kuldeep ghan <ghankp@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1767724033=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Barebox changes for reducing DDR size
To: barebox@lists.infradead.org

--===============1767724033==
Content-Type: multipart/alternative; boundary=0016e645b9868d1e6b048db5ee5d

--0016e645b9868d1e6b048db5ee5d
Content-Type: text/plain; charset=ISO-8859-1

Hi,
        I am using PCM038 based custom board with changes in Memory
configuration. I want to know what all changes i have to do in barebox
source if I am reducing the size of DDR to 64 MB.
I have two 32MB DDR chips interfaced on CSD0 and CSD1. I am able to boot the
board with changes in pcm038 and lowlevel_init.S. I see that both the DDRs
are initialized properly and able to write and read to DDR address space.
         Ping to command is failing with these changes.  And I am not sure
about the changes required for stack size and malloc size.

Thanks,
Ghan Kuldeep

--0016e645b9868d1e6b048db5ee5d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi, <br>=A0=A0=A0=A0=A0=A0=A0 I am using PCM038 based custom board with cha=
nges in Memory configuration. I want to know what all changes i have to do =
in barebox source if I am reducing the size of DDR to 64 MB. <br>I have two=
 32MB DDR chips interfaced on CSD0 and CSD1. I am able to boot the board wi=
th changes in pcm038 and lowlevel_init.S. I see that both the DDRs are init=
ialized properly and able to write and read to DDR address space. <br>
=A0=A0=A0=A0=A0=A0=A0=A0 Ping to command is failing with these changes.=A0 =
And I am not sure about the changes required for stack size and malloc size=
.<br><br>Thanks,<br>Ghan Kuldeep<br><br>

--0016e645b9868d1e6b048db5ee5d--


--===============1767724033==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1767724033==--
