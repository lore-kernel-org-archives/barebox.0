Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relaygw4-12.mclink.it ([213.21.178.179])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WUv78-0002nn-Ic
 for barebox@lists.infradead.org; Tue, 01 Apr 2014 09:36:15 +0000
Received: from [195.110.128.82] (HELO smtpoutgw3.mclink.it)
 by relaygw4-12.mclink.it (CommuniGate Pro SMTP 6.0.6)
 with ESMTP id 15965838 for barebox@lists.infradead.org;
 Tue, 01 Apr 2014 11:35:49 +0200
Received: from mail.gnudd.com (localhost [127.0.0.1])
 by mail.gnudd.com (8.14.3/8.14.3/Debian-9.4) with ESMTP id s319ZmM4010177
 for <barebox@lists.infradead.org>; Tue, 1 Apr 2014 11:35:48 +0200
Received: (from rubini@localhost)
 by mail.gnudd.com (8.14.3/8.14.3/Submit) id s319ZmTp010176
 for barebox@lists.infradead.org; Tue, 1 Apr 2014 11:35:48 +0200
Date: Tue, 1 Apr 2014 11:35:48 +0200
From: Alessandro Rubini <rubini-list@gnudd.com>
Message-ID: <20140401093548.GA10169@mail.gnudd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJfOKBzKT-W+n+53erdUmTG84tuaWao9rKpm47pWcpvA2=BWOg@mail.gmail.com>
References: <CAJfOKBzKT-W+n+53erdUmTG84tuaWao9rKpm47pWcpvA2=BWOg@mail.gmail.com>
 <20140401090229.GT17250@pengutronix.de>
 <1396344055.968598215@f73.i.mail.ru>
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
Subject: Re: Introducing barebOS
To: barebox@lists.infradead.org

Great news Sascha.

>> I therefore decided that it's no longer necessary to have the overhead
>> of Linux at all. The project will be renamed to barebOS in the next few

I believed it, until the "rename" bit.

Actually, adding a scheduler and making it an RT OS has been in my
intentions for quite a long time now.  Having no interrupts and a
great library of drivers, it really is a good target to become an OS.
I even got Sascha's generic approval about the idea, and I only missed
a student willing to do that as his master thesis.  Well, none appeared
so far...

/alessandro

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
