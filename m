Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qe2jv-0003Rn-7Q
	for barebox@lists.infradead.org; Tue, 05 Jul 2011 10:20:24 +0000
Received: by wyf23 with SMTP id 23so4897323wyf.36
	for <barebox@lists.infradead.org>; Tue, 05 Jul 2011 03:19:13 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 5 Jul 2011 14:19:13 +0400
Message-ID: <CAA4bVAFxY_fJLbr0OumbyxkBPqnemsq5H2V6OKJ1JGWRGuKuCA@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: barebox PCI support
To: barebox <barebox@lists.infradead.org>

Hi!

Qemu can emulate PCI bus, so i decided to add PCI support for qemu-malta bo=
ard.

I have found that current barebox has no pci support (only one ppc
board has references
to PCI, but there is no common PCI code). Also I found the PCI-related
tasks in the end of TODO file in barebox.git.

Getting PCI support from current linux kernel is not so easy, so, I
got some parts of
lowlevel PCI support from linux-2.6.39 and PCI scan bus function from
very old linux-2.2.

I have disabled any bridging support. Also I didn't get pci resources
(PBARs) reconfiguration code.

My code can register GT64120 PCI controller, scan devices on PCI0 bus
and make chained list of found devices. There is lspci command to show
the chained list.
This is very very draft code.

Please review it or state you consideration on PCI support in barebox.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
