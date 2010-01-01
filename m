Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [217.70.178.89] (helo=slow3-v.mail.gandi.net)
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NQo1v-0001ZD-Fd
	for barebox@lists.infradead.org; Fri, 01 Jan 2010 20:23:31 +0000
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net
	[217.70.183.193])
	by slow3-v.mail.gandi.net (Postfix) with ESMTP id 24134420D9
	for <barebox@lists.infradead.org>; Fri,  1 Jan 2010 20:53:05 +0100 (CET)
Received: from d4rwin.no-ip.org (115.Red-88-27-18.staticIP.rima-tde.net
	[88.27.18.115])
	by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id C372C2552F5
	for <barebox@lists.infradead.org>; Fri,  1 Jan 2010 20:52:34 +0100 (CET)
Date: Fri, 1 Jan 2010 20:48:22 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100101194822.GR5093@darwin>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: confusion about relocation (ARM)
To: barebox@lists.infradead.org

hi,

i'm trying to run barebox on an EP93xx (ARM) board, but don't get
beyond the invocation of some initcalls from start_barebox(). at the
moment i have no JTAG for debugging and rely on LEDs for hints whats
going on. my suspicion is that the stack or SDRAM isn't set up
correctly.

a comment in start_barebox() says 'We are running from RAM now', so i
deduced SDRAM must work. but after having a look at start-arm.S i'm a
little bit confused. as far as i understand the barebox code is copied
to RAM in copy_loop(). what i don't see is where the program counter
is set to the address in RAM?

any insights?

-- =

Matthias Kaehlcke
Embedded Linux Developer
Barcelona

    Me lo contaron y lo olvid=E9, lo vi y lo entend=ED, lo hice y lo aprend=
=ED
                              (Confucio)
                                                                 .''`.
    using free software / Debian GNU/Linux | http://debian.org  : :'  :
                                                                `. `'`
gpg --keyserver pgp.mit.edu --recv-keys 47D8E5D4                  `-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
