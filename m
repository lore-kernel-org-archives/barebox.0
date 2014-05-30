Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x231.google.com ([2a00:1450:400c:c05::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqJfV-0003WF-QJ
 for barebox@lists.infradead.org; Fri, 30 May 2014 10:04:10 +0000
Received: by mail-wi0-f177.google.com with SMTP id f8so804307wiw.10
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 03:03:45 -0700 (PDT)
Date: Fri, 30 May 2014 12:03:42 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140530100340.GB9528@omega>
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
 <1401440856-6145-10-git-send-email-holgerschurig@gmail.com>
 <20140530091716.GA13550@omega>
 <CAOpc7mGQ0QPpY06qhQJpxjDPZqa7Uz7CdLrwJrtXRJxLRSBO7g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mGQ0QPpY06qhQJpxjDPZqa7Uz7CdLrwJrtXRJxLRSBO7g@mail.gmail.com>
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
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, May 30, 2014 at 11:30:27AM +0200, Holger Schurig wrote:
> I changed them because (before my patches) the driver list in
> "devinfo" looked ugly, with my drvinfo command that one looked ugly.
> Those driver names sticked out like a sore thumb.
> 
> Now, if I do "diff linux/driver/net/phy/micrel.c
> barebox/driver/net/phy/micrel.c", I can see that those files are a bit
> similar ... but only a bit. Diff spits out 569 lines of diff output.
> And as micrel.c is only 281 lines long, this means that almost no
> identical lines are in those two files anyway ...    so, the drivers
> are following the Linux model, but they are not Linux drivers anyway.
> 
> As this is purely cosmetical, I won't fight over it. Or at least not more :-)

me too, I just want to remember one of the goals of barebox. Maybe
somebody has a freakly crazy script for ethernet driver name parsing and was
happy that the name was equal like the linux one. :-)

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
