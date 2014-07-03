Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relaygw1-2.mclink.it ([213.21.178.133])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2ctE-0005Aj-Hf
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 09:01:13 +0000
Received: from [195.110.128.82] (HELO smtpoutgw2.mclink.it)
 by relaygw1-2.mclink.it (CommuniGate Pro SMTP 6.0.2)
 with ESMTP id 24428473 for barebox@lists.infradead.org;
 Thu, 03 Jul 2014 11:00:47 +0200
Date: Thu, 3 Jul 2014 11:00:45 +0200
From: Alessandro Rubini <rubini-list@gnudd.com>
Message-ID: <20140703090045.GA21384@mail.gnudd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140703085122.GT14781@pengutronix.de>
References: <20140703085122.GT14781@pengutronix.de>
 <alpine.DEB.2.10.1407031026270.15322@9VTHT2J-D520>
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
Subject: Re: [PATCH] automount: check for recursive automount
To: u.kleine-koenig@pengutronix.de
Cc: barebox@lists.infradead.org, embedded24@evers-fischer.de

> static variables are initialized to 0 (for pointers: NULL) by the
> compiler.

Well, not really. The compiler just places them in the .bss area.  It
is barebox, it is run-time initialization, that zeroes bss.

So it is barebox, not the compiler.

Uwe, I know you know this, but I'd better make it clear for
everybody. I've already seen a "specialist" writing an IPL where he
explicitly sets static variables to 0 one by one in different places
because he didn't clear bss in his assembly.

/alessandro

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
