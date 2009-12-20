Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-px0-f186.google.com ([209.85.216.186])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NMPL3-0006tm-1M
	for barebox@lists.infradead.org; Sun, 20 Dec 2009 17:13:05 +0000
Received: by pxi16 with SMTP id 16so3102715pxi.25
	for <barebox@lists.infradead.org>; Sun, 20 Dec 2009 09:12:58 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.00.0912201108280.22419@localhost>
References: <alpine.LFD.2.00.0912201108280.22419@localhost>
Date: Sun, 20 Dec 2009 22:42:58 +0530
Message-ID: <57969b5c0912200912s238437b5gd57c7f3472a7861b@mail.gmail.com>
From: Anand Gadiyar <gadiyar@gmail.com>
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
Subject: Re: barebox on beagleboard: two questions
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

Hi Robert,

>  at that point, every single command i type gives me "Unknown
> command", which may be because i haven't read all the docs and have
> done nothing in terms of an environment.  i figured it was just worth
> doing the trivially obvious to see what happened.
>

The beagle and 3430sdp defconfigs seem to have most of the commands
disabled.

I manually enabled some of them from the menuconfig->Commands menu.
Haven't gotten around to sending out a patch yet (yes, I know it takes
only a few minutes, but general laziness prevails...).

- Anand

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
