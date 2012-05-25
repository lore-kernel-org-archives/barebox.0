Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SY0Iv-0000vo-PL
 for barebox@lists.infradead.org; Fri, 25 May 2012 19:36:07 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 29648BF0CA
 for <barebox@lists.infradead.org>; Fri, 25 May 2012 21:35:55 +0200 (CEST)
MIME-Version: 1.0
In-Reply-To: 
References: 
From: =?ISO-8859-1?Q?J=FCrgen_Kilb?= <J.Kilb@phytec.de>
Message-ID: <OFFE55D117.F033B5DE-ONC1257A09.006BA85C-C1257A09.006BA869@phytec.de>
Date: Fri, 25 May 2012 21:35:54 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: NAND defect Block handling
To: barebox@lists.infradead.org

Hi,
I discovered a problem which I thought would be handled in a different way..
During "tftp 250Mbyte_Testimage.bin /dev/nand0.rootfs.bb" an I/O error occu=
rred
and tftp stopped downloading/writing the file to the nand0.rootfs.bb partit=
ion.

=3D=3D=3D
...###################################write: I/O error

tftp failed: error -5
=3D=3D=3D

As far as I debugged the problem, a block erase error occurred. I thought t=
he
normal behavior should be, mark the defect block as bad and continue with =

the next block.

What is the best way to handle such problems?

- implement such a behavior if the destination is a *.bb device
- add a nand_write command
- add a global option to mark a bad nand block


greetings,
J=FCrgen

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
