Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x235.google.com ([2a00:1450:4013:c00::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WerrQ-0006rO-Aj
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 20:09:08 +0000
Received: by mail-ee0-f53.google.com with SMTP id b57so5236869eek.40
 for <barebox@lists.infradead.org>; Mon, 28 Apr 2014 13:08:45 -0700 (PDT)
Date: Mon, 28 Apr 2014 22:08:42 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140428200839.GB11686@omega>
References: <1398673121-6075-1-git-send-email-s.hauer@pengutronix.de>
 <1398673121-6075-2-git-send-email-s.hauer@pengutronix.de>
 <20140428163015.GB19883@omega>
 <20140428184702.GW5858@pengutronix.de>
 <20140428185119.GA11686@omega>
 <20140428200030.GY5858@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140428200030.GY5858@pengutronix.de>
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
Subject: Re: [PATCH 1/2] Add initial regulator support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Apr 28, 2014 at 10:00:30PM +0200, Sascha Hauer wrote:
> On Mon, Apr 28, 2014 at 08:51:21PM +0200, Alexander Aring wrote:
> > Hi,
> > 
> > On Mon, Apr 28, 2014 at 08:47:02PM +0200, Sascha Hauer wrote:
> > > 
> > > I think both functions should return 0 without a valid gpio instead.
> > > Anyway, there's something wrong here.
> > > 
> > 
> > maybe checking on this at probe time, at the beginning or can this gpio
> > changed at runtime?
> > 
> > Maybe you don't need this here because probe will already failed with a
> > invalid gpio.
> 
> No, the gpio is optional. Getting a fixed regulator without software
> control is one usecase of the driver, just like in the kernel.
> 

I understand now. That's why we should return 0, because it's optional.
Thanks.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
