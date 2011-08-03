Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QoWo5-0005Xc-6g
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 08:28:01 +0000
Received: by wwf22 with SMTP id 22so395254wwf.18
	for <barebox@lists.infradead.org>; Wed, 03 Aug 2011 01:27:56 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 3 Aug 2011 12:27:55 +0400
Message-ID: <CAA4bVAHpjs3Q-+Qx3ym-f4DeQ4HPgFJdai9z2izJETFbp0Y7AQ@mail.gmail.com>
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
Subject: network-related <<very draft>> patches
To: barebox <barebox@lists.infradead.org>

Hi!

Some time ago I have posted the PCI support patches.
Now I working on it improvement.

Although the code for PCI has many hacks and inconsistency, I have some suc=
cess.
I have made PCI address management and succesufully ported 8139too
driver from linux-3.0: it is even possible to run mips barebox under
qemu and get a 600K file by tftp via emulated PCI Realtek 8139
adapter.

I have found that barebox lack some instrument for network debugging
(may be I'am wrong?).

I planning to post today some useful (but <<very draft>>)
network-related patches.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
