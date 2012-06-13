Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SetTM-0003D2-7Q
 for barebox@lists.infradead.org; Wed, 13 Jun 2012 19:43:21 +0000
Received: by lbbgg6 with SMTP id gg6so1610165lbb.36
 for <barebox@lists.infradead.org>; Wed, 13 Jun 2012 12:43:17 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 13 Jun 2012 23:43:06 +0400
Message-Id: <1339616588-16636-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: add 'poweroff' support
To: barebox@lists.infradead.org

This patch series adds the ability to turn power off on
Ritmix RZX-50 game console.

The Ritmix RZX-50 game console is a battery-powered device.
So I you keep it running barebox it can to use up the battery
in 14-16 hours. So it is very desirable to be able to turn
power off from barebox.

[PATCH 1/2] add 'poweroff' command
[PATCH 2/2] rzx50: add poweroff support

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
