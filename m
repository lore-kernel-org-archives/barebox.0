Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo5.mail-out.ovh.net ([178.33.111.247]
 helo=mo5.mail-out.ovh.net)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TCQgE-0001z1-Ll
 for barebox@lists.infradead.org; Fri, 14 Sep 2012 07:51:15 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id BB530FFA98B
 for <barebox@lists.infradead.org>; Fri, 14 Sep 2012 09:52:50 +0200 (CEST)
Date: Fri, 14 Sep 2012 09:44:37 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120914074437.GE20834@game.jcrosoft.org>
References: <CAJfOKByn43d80YRB52D2RQXVhvweAzQYv2MvRtVyh2-+q5XBQg@mail.gmail.com>
 <20120914071804.GR6180@pengutronix.de>
 <CAJfOKBwqwKGcTZ7X0Z9yLiD6EezXoZmjqfar3koM=d0pvRCCmQ@mail.gmail.com>
 <20120914072536.GS6180@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120914072536.GS6180@pengutronix.de>
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
Subject: Re: [RFC][FAT] Handle MBR on the first sector
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>


On 09:25 Fri 14 Sep     , Sascha Hauer wrote:
> 
> On Fri, Sep 14, 2012 at 09:22:07AM +0200, Franck Jullien wrote:
> > 2012/9/14 Sascha Hauer <s.hauer@pengutronix.de>:
> > > Hi Franck,
> > >
> > > On Thu, Sep 13, 2012 at 02:13:29PM +0200, Franck Jullien wrote:
> > >> *** Did not send this email with git because it's no working where I am **
> > >>
> > >> We may have some disk with MBR as a first sector. In this case, the
> > >> current FAT check returns an error. However, the FAT sector exist and
> > >> the MBR can tell us where it is.
> > >>
> > >> This patch make the FAT fs try to find the FAT boot sector on the first
> > >> sector of the first partition in case it is not on sector 0.
> > >
> > > The patch looks good. Not applying it because it's RFC, but I would if
> > > you give your ok.
> > >
> > 
> > You have it.
> 
> Thanks, applied

Does this work with the fat autodetection

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
