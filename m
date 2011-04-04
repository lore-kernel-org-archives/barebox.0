Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from susu.bendor.com.au ([203.16.199.2])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6hYW-00011Y-DF
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 11:02:49 +0000
Received: from manocska.bendor.com.au (manocska.bendor.com.au [203.16.199.6])
	by susu.bendor.com.au (Postfix) with ESMTP id ABA8A870
	for <barebox@lists.infradead.org>; Mon,  4 Apr 2011 21:02:45 +1000 (EST)
Date: Mon, 4 Apr 2011 21:02:45 +1000
From: =?UTF-8?B?Wm9sdMOhbiBLw7Njc2k=?= <zoltan@bendor.com.au>
Message-ID: <20110404210245.16f269f7@manocska.bendor.com.au>
Mime-Version: 1.0
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
Subject: More Mini2440 questions...
To: barebox@lists.infradead.org

Thanks for all the answers for my previous questions!

The 'next' branch indeed boots from the NAND FLASH like a charm.

What I'm looking for now is a crash-course, or at least a pointer to
some web-based one, on barebox itself, from the usage point of view. I
created the docs and read the User's Manual, but I'm none the wiser. 

How do I boot a kernel from FLASH or via TFTP? I figured that I
can set the Ethernet MAC address by eth0.ethaddr=xx:xx:xx:xx:xx:xx
(although I don't know if that actually changes the MAC) but how can I
save that so that next time I reset the board it is there? 

Same with other environment variables, such as bootargs. The command
'saveenv' says that it saved the environment. According to its docs, it
saved it in /dev/env0. According the the docs of loadenv, that
command should load the saved environment, but I could not get any
of my changes back.

Any help regarding to how to use barebox would be most welcome.

Thanks,

Best Regards,

Zoltan


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
