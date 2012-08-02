Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail2.gnudd.com ([213.203.150.91] helo=mail.gnudd.com)
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Swxgq-0008Rr-HJ
 for barebox@lists.infradead.org; Thu, 02 Aug 2012 15:51:58 +0000
Received: from mail.gnudd.com (localhost [127.0.0.1])
 by mail.gnudd.com (8.14.3/8.14.3/Debian-9.4) with ESMTP id q72Fpjsw028434
 for <barebox@lists.infradead.org>; Thu, 2 Aug 2012 17:51:45 +0200
Received: (from rubini@localhost)
 by mail.gnudd.com (8.14.3/8.14.3/Submit) id q72Fpj4E028433
 for barebox@lists.infradead.org; Thu, 2 Aug 2012 17:51:45 +0200
Date: Thu, 2 Aug 2012 17:51:45 +0200
From: Alessandro Rubini <rubini-list@gnudd.com>
Message-ID: <20120802155145.GA28426@mail.gnudd.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: changing environment at build time
To: barebox@lists.infradead.org

Hello.

I'm using barebox on a machine where I wasnt to change the mac address
at flashing time (i.e., not at build time: I'd better not relink
barebox every time I flash a new machine).

I did it lazily with a sed script when the environment was not
compressed, but now a mate updated to a newer version, and the simple
trick is not working.

Since uncompressed environent areas are not supported any more, what is
the preferred method to change the default environment variables?

Thanks
/alessandro, really on deadline, so apologizing for the dumb question

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
