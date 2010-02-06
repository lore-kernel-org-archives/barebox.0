Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from khc.piap.pl ([195.187.100.11])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1Ndrlt-0004RY-0q
	for barebox@lists.infradead.org; Sat, 06 Feb 2010 21:00:58 +0000
Received: from intrepid.localdomain (intrepid.localdomain [10.0.0.2])
	by khc.piap.pl (Postfix) with ESMTP id 8127B95D1
	for <barebox@lists.infradead.org>; Sat,  6 Feb 2010 22:00:42 +0100 (CET)
From: Krzysztof Halasa <khc@pm.waw.pl>
Date: Sat, 06 Feb 2010 22:00:42 +0100
Message-ID: <m33a1eoz9h.fsf@intrepid.localdomain>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: IXP4xx support
To: barebox@lists.infradead.org

Hi,

I'm thinking about adding Barebox support for a certain platform using
IXP425 (ARM, usually big-endian) CPU. This means the startup code
(trivial, already got it working in little-endian mode), drivers for
hardware Queue Manager, Network Processing Engines and built-in Ethernet
interfaces (all of them easy to port from Linux).

This also means supporting the NOR flash: the CPU has 16-bit, always
big-endian, "value-preserving" EXP bus for connecting such devices. In
LE mode the address has to be XORed with 2, and if it's byte-oriented
data (i.e. not a command/response), it has to be byte-swapped. Only
16-bit writes can be made.

Doing the above in the flash driver would complicate things a lot. The
drivers currently use plain pointers to access the flash. I'm thinking
about moving the low-level access (R/W) routines to arch code (with a
generic defaults), and calling them via the NOR flash platform struct
(which doesn't do anything useful ATM).

The above would also permit supporting flashes which can't be mapped in
normal CPU address space. It would be a bit slower, though.

Opinions?
-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
