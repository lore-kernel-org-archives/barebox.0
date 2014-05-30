Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x234.google.com ([2607:f8b0:4002:c07::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqJ9F-00013d-42
 for barebox@lists.infradead.org; Fri, 30 May 2014 09:30:49 +0000
Received: by mail-yk0-f180.google.com with SMTP id q9so1267764ykb.39
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 02:30:27 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140530091716.GA13550@omega>
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
 <1401440856-6145-10-git-send-email-holgerschurig@gmail.com>
 <20140530091716.GA13550@omega>
Date: Fri, 30 May 2014 11:30:27 +0200
Message-ID: <CAOpc7mGQ0QPpY06qhQJpxjDPZqa7Uz7CdLrwJrtXRJxLRSBO7g@mail.gmail.com>
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
Subject: Re: [PATCH 09/10] beautify PHY driver names
To: Alexander Aring <alex.aring@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

I changed them because (before my patches) the driver list in
"devinfo" looked ugly, with my drvinfo command that one looked ugly.
Those driver names sticked out like a sore thumb.

Now, if I do "diff linux/driver/net/phy/micrel.c
barebox/driver/net/phy/micrel.c", I can see that those files are a bit
similar ... but only a bit. Diff spits out 569 lines of diff output.
And as micrel.c is only 281 lines long, this means that almost no
identical lines are in those two files anyway ...    so, the drivers
are following the Linux model, but they are not Linux drivers anyway.

As this is purely cosmetical, I won't fight over it. Or at least not more :-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
