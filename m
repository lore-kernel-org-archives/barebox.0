Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLv7P-0002hf-QV
	for barebox@lists.infradead.org; Sat, 19 Dec 2009 08:56:59 +0000
Received: from cpe002129687b04-cm001225dbafb6.cpe.net.cable.rogers.com
	([99.235.241.187] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1NLv7N-0004zP-8z
	for barebox@lists.infradead.org; Sat, 19 Dec 2009 03:56:53 -0500
Date: Sat, 19 Dec 2009 03:56:29 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.00.0912190351400.32196@localhost>
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
Subject: is barebox meant to be the next generation of u-boot?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  i just want to clarify the direction of barebox -- is it meant to
eventually supplant u-boot?  i ask since i want to know if it's not
worth investing much more time in u-boot (v1) if things are eventually
going to switch over to barebox.

  specifically, i want to use it on my beagleboard, so i "git" checked
out the source for barebox, configured it for the beagle, built it
with the denx "arm-linux-" toolchain and it booted.  i haven't got any
further than that so far but that's all i was after -- just getting it
to boot to the barebox prompt.

  at this point, if barebox is merely *adequate* to do what i want and
supports booting my beagleboard fully, is there any reason i don't
just move to it entirely, knowing it does what i need and it's only
going to get better?  thanks.

rday
--

========================================================================
Robert P. J. Day                               Waterloo, Ontario, CANADA

            Linux Consulting, Training and Kernel Pedantry.

Web page:                                          http://crashcourse.ca
Twitter:                                       http://twitter.com/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
