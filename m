Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMeTv-0002DM-BV
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 09:23:15 +0000
Received: from cpe002129687b04-cm001225dbafb6.cpe.net.cable.rogers.com
	([99.235.241.187] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1NMeTr-0002W9-T6
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 04:23:08 -0500
Date: Mon, 21 Dec 2009 04:22:43 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.00.0912210419020.6190@localhost>
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
Subject: can barebox avoid creating typedefs just for struct shortcuts?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  i noticed the following:

$ grep -rw gd_t *
arch/arm/include/asm/global_data.h:typedef	struct	global_data gd_t;
arch/ppc/include/asm/global_data.h: * Keep it *SMALL* and remember to set CFG_GBL_DATA_SIZE > sizeof(gd_t)
arch/ppc/include/asm/global_data.h:} gd_t;
arch/sandbox/include/asm/global_data.h:typedef	struct	global_data gd_t;
$

  it's obvious that the typedef "gd_t" is being created as a
time-saving shortcut.  that approach has been actively discouraged in
the main kernel tree for quite some time, as it just obfuscates the
code.  there are, of course, numerous typedefs being used to support
legitimately opaque types, but creating more of them just to save
keystrokes is now frowned upon.

  and since it looks like no one is actually using that one yet, does
anyone mind if i remove it?

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
