Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x22f.google.com ([2607:f8b0:4002:c07::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0VXO-00014U-9l
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 12:45:54 +0000
Received: by mail-yk0-f175.google.com with SMTP id 9so2806431ykp.6
 for <barebox@lists.infradead.org>; Fri, 27 Jun 2014 05:45:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.11.1406270745300.3483@localhost>
References: <alpine.LFD.2.11.1406261725570.2448@localhost>
 <20140627045150.GN14257@pengutronix.de>
 <alpine.LFD.2.11.1406270502570.4443@localhost>
 <CAOpc7mHqg00i7-R4yfiPjVg9SudWYq7A_WiAtYfNctGr4_ZqEA@mail.gmail.com>
 <alpine.LFD.2.11.1406270745300.3483@localhost>
Date: Fri, 27 Jun 2014 14:45:31 +0200
Message-ID: <CAOpc7mGknphJ0Cw5RDAbc=-Uq2Fch0NGXEmVrMyAy8oE4rKGUw@mail.gmail.com>
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
Subject: Re: where is Documentation/parameters.txt?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

The doc branch deleted all of the *.dox files. And it will eventually
be merged into master and/or next. So I see not much point into
working on the *.dox files anymore. They are basically end-of-life.

Instead, you can either do doc-related work in the origin/doc branch,
or merge that branch into your local work branch.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
