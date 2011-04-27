Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from coyote.quickmin.net ([217.14.112.24])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QF22a-00023s-Qt
	for barebox@lists.infradead.org; Wed, 27 Apr 2011 10:32:21 +0000
From: Roman Fietze <roman.fietze@telemotive.de>
References: <201104261430.01267.roman.fietze@telemotive.de>
	<201104271038.46439.roman.fietze@telemotive.de>
	<4DB7DE8E.6070100@pengutronix.de>
In-Reply-To: <4DB7DE8E.6070100@pengutronix.de>
MIME-Version: 1.0
Message-ID: <201104271232.12931.roman.fietze@telemotive.de>
Date: Wed, 27 Apr 2011 12:32:12 +0200
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
Subject: Re: [PATCH] freescale-mx35-3-stack: support 256 MiB RAM
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Marc,

On Wednesday, 27.April.2011 11:14:54 Marc Kleine-Budde wrote:

> Have a look at the /dev folder, do you have two "/dev/mem*"? If not
> you should make the .id unique, i.e. should be "0" here.

Barebox' register_device auto increments the ID if it's below zero,
and devinfo shows me

...
|----mem2 (ram0)
|----mem3 (ram1)
...

"My" code is just borrowed from boards/karo-tx25/board.c. So if it's
ambiguous, somebody (Sascha? Me?) should fix that there as well.


Thanks for the review.

Roman

-- 
Roman Fietze              Telemotive AG Buero Muehlhausen
Breitwiesen                             73347 Muehlhausen
Tel.: +49(0)7335/18493-45        http://www.telemotive.de

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
