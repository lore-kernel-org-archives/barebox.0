Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail5.tpgi.com.au ([203.12.160.101])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PVYej-0002gv-Ua
	for barebox@lists.infradead.org; Thu, 23 Dec 2010 00:03:43 +0000
Received: from dev1.localnet (220-244-174-13.static.tpgi.com.au
	[220.244.174.13]) (authenticated bits=0)
	by mail5.tpgi.com.au (envelope-from marc@cpdesign.com.au)
	(8.14.3/8.14.3) with ESMTP id oBN03WQb031493
	for <barebox@lists.infradead.org>; Thu, 23 Dec 2010 11:03:34 +1100
From: Marc Reilly <marc@cpdesign.com.au>
Date: Thu, 23 Dec 2010 11:03:31 +1100
MIME-Version: 1.0
Message-Id: <201012231103.31335.marc@cpdesign.com.au>
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
Subject: Determining barebox version from linux
To: barebox@lists.infradead.org

Hi,

I want to be able to determine what version of barebox I have on my NOR flash, 
after booting into linux.

The easiest way I thought of is something like:
cat /dev/mtd0 | grep "barebox 2010"

Another way to do this is to have the version_string (or other version info) 
at a fixed location in the barebox image. This feels like a overly rigid 
solution, and may be a pain to put into the build system.

Does anybody else accomplish this in a better way? (I don't want to pass the 
barebox version as an arg when booting the kernel - I'd rather it be more 
"standalone").

Cheers
Marc

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
