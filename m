Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qe2Ec-0002tr-Db
	for barebox@lists.infradead.org; Tue, 05 Jul 2011 09:48:03 +0000
Received: by wyf23 with SMTP id 23so4877116wyf.36
	for <barebox@lists.infradead.org>; Tue, 05 Jul 2011 02:47:10 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 5 Jul 2011 13:47:10 +0400
Message-ID: <CAA4bVAFm647J0G_gHR-MgmNbneBsLdFVvKYJt+1WgO2saqm_hg@mail.gmail.com>
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
Subject: barebox MIPS start code considerations
To: barebox <barebox@lists.infradead.org>

Hi!

Here is my barebox MIPS start code considerations.
If you get the time would you please review this text.


Barebox normally must be linked to RAM region, cached region KSEG0 is prefe=
rred.
This make possible to run fast (because cache used) and skip MMU support.

After reset MIPS CPU starting to fetch instructions from 0xBFC00000.

This remark from ARM code can be used for MIPS start.S:
----
Code running immediately after reset runs at an address it is not linked
to: "runtime address !=3D link address". You should only use branches and
do not refer to fixed data. This implies the use of assembler code only.
After MIPS CPU reset cache and MMU are in random state. They are unusable.
----

barebox MIPS initialisation sequence:

 * set the CP0 STATUS register to some known and sensible state.
Now you can load and store reliably in uncached space.

 * call a function \<mach_init_lowlevel\> (if not disabled).
do some special things required only on specific CPU
 (e. g. init RAM controller, disable watchdog)

 * call a function \<board_init_lowlevel\> (if not disable).
do some special things required only on specific board
 (e. g. setup GPIO to required state).

   ** It is desirable to have some debug code to make some contact
 with the outside world from assembler code
(e.g. debug_ll-like functions to write to rs232 console).

 * check integity of barebox RAM execute location;
 * copy barebox to RAM execute location;

 * configure cache;

 * setup stack;

   ** after ths point you can call a standard C routine.

 * setup exception vectors in RAM;
 * setup CP0 STATUS to switch exception vector address to RAM;

 * call start_barebox()

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
