Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YOiW5-0004LI-Mv
 for barebox@lists.infradead.org; Fri, 20 Feb 2015 08:00:54 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 4844FA00150
 for <barebox@lists.infradead.org>; Fri, 20 Feb 2015 09:01:14 +0100 (CET)
Message-ID: <1424419220.4065.15.camel@lws-gamez.phytec.de>
From: Teresa =?ISO-8859-1?Q?G=E1mez?= <t.gamez@phytec.de>
Date: Fri, 20 Feb 2015 09:00:20 +0100
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: bareboxenv: console bootargs
To: barebox@lists.infradead.org

Hello,

I have noticed that the console= bootarg parameter in the latest
enviroment is set in the /env/nv/linux.bootargs.base variable. But it is
also set over common/console.c in the variable linux.bootargs.console
which results here in two console= parameter:

commandline: console=ttyO0,115200n8 console=ttyO0,115200
root=/dev/mmcblk0p2 rootfstype=ext4 rw rootwait

Wouldn't it be the right way to set the linux.bootargs.console instead
of the linux.bootargs.base in the enviroment. If it needs to be
overwritten at all...

I suspect that other boards, then the am335x ones, are also affected.

Regards
Teresa




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
