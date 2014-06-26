Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x22d.google.com ([2607:f8b0:4002:c01::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X06ey-0000ov-TD
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 10:12:06 +0000
Received: by mail-yh0-f45.google.com with SMTP id t59so1967683yho.32
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 03:11:16 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1403776882.4254.7.camel@weser.hi.pengutronix.de>
References: <1403772698-10330-1-git-send-email-s.hauer@pengutronix.de>
 <CAOpc7mHfA9VTobbpW8SecSorV5K0KrESn75T4ue-Y0iGs9j=qw@mail.gmail.com>
 <1403776882.4254.7.camel@weser.hi.pengutronix.de>
Date: Thu, 26 Jun 2014 12:11:15 +0200
Message-ID: <CAOpc7mHRhpOGesqi-K+8huVJbop+hEV=d1LK=-_-Q4OEDdn9MQ@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: New Documentation for barebox
To: Lucas Stach <l.stach@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> No, we would like to clearly separate user docs

But still it is unfortunate that two "Getting Barebox" chapters are
there at all, and that they are very near to each.

Also, I think that (necessarily!) the design desicions are now mostly
in the user manual, e.g. device parameters. In the non-user-manual
parts there is hardly contents at all. And most, e.g. the file system
descriptions or the glossary, could very well be moved into the user
manual. Which will lead us to ... the user-manual containing all of
the current HTML docs.

So, let me rephrase it: I also think that long term the whole current
(!) HTML documentation should be part of the user manual.

Simply because there's no developer documentation in the current (!)
HTML, e.g. "How to start a new board" type docs, or an introduction
into the file system structure.

Maybe the PBL chapter is developer documentation, but that is (sic!)
in the user manual ...

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
