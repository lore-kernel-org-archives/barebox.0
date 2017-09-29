Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx012.vodafonemail.xion.oxcs.net ([153.92.174.90])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxqcG-0000LV-Rq
 for barebox@lists.infradead.org; Fri, 29 Sep 2017 08:25:49 +0000
Received: from vsmx004.vodafonemail.xion.oxcs.net (unknown [192.168.75.198])
 by mta-8-out.mta.xion.oxcs.net (Postfix) with ESMTP id 6CF6D8CE92D
 for <barebox@lists.infradead.org>; Fri, 29 Sep 2017 08:25:05 +0000 (UTC)
Received: from null (app-44.app.xion.oxcs.net [10.10.1.44])
 by mta-8-out.mta.xion.oxcs.net (Postfix) with ESMTPA id 5161FCDF85
 for <barebox@lists.infradead.org>; Fri, 29 Sep 2017 08:25:03 +0000 (UTC)
Date: Fri, 29 Sep 2017 10:25:03 +0200 (CEST)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <1043852685.129432.1506673503086@mail.vodafone.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: how to persistently save config values
To: barebox@lists.infradead.org

Hi,

I'm working on a new project with an embedded system based on
a standard intel PC.

I already have a barebox.efi running on the system; my problem is now
how to permanently save some variables so that, on restart, they can be
automatically restored by my '/env/bin/init' script.
The variables I mean are for example 'eth0.ipaddr' or 'eth0.serveraddr'.
A solution I used in the past was a custom 'env_dump' command that generated
a config text file like:

eth0.ipaddr=10.0.0.15
eth0.serveraddr=10.0.0.1
...

Then I saved the file with 'saveenv' and restored it back with 'loadenv'.

Is there a better way to solve this problem ? I don't like very much having to
write 'custom commands' myself.

I had a look at the state framework but it seems kinda overkill for what I need.

giorgio

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
