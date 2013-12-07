Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f178.google.com ([209.85.212.178])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VpBO5-0002Q7-Eb
 for barebox@lists.infradead.org; Sat, 07 Dec 2013 06:29:14 +0000
Received: by mail-wi0-f178.google.com with SMTP id bz8so1645303wib.17
 for <barebox@lists.infradead.org>; Fri, 06 Dec 2013 22:28:45 -0800 (PST)
Date: Sat, 7 Dec 2013 07:28:40 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131207062838.GA13787@omega>
References: <20131205004834.GA5620@omega>
 <20131205153956.GU24559@pengutronix.de>
 <20131206170803.GF27628@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131206170803.GF27628@ns203013.ovh.net>
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
Subject: Re: ipv6 support in barebox?
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Dec 06, 2013 at 06:08:03PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 16:39 Thu 05 Dec     , Sascha Hauer wrote:
> > On Thu, Dec 05, 2013 at 01:48:35AM +0100, Alexander Aring wrote:
> > > Hi,
> > > 
> > > I need a new challenge in my free time. :-)
> > > 
> > > So maybe I could try to implement a ipv6 stack for barebox. Are there
> > > some interest to apply a ipv6 stack into barebox?
> > > 
> > > I don't need to begin any work if there are no interest to add a ipv6
> > > support.
> > > 
> > > ... and yes I know that's maybe a really big project, but I like to get
> > > some new experience.
> > 
> > Sooner or later I think we will need ipv6 support, but now I think it's
> > up to you if you have enough interest in it to implement it ;)
> 
> I've evaluate it  and I does not want to support a custom implementation
> 
> I was thinking simply integration uIP stack so we can have ip/tcp v4/v6 stack
> 

mhh, yea I know the uIP stack from contiki os. I really don't like
contiki code. :-)

But we can try to use the uIP as basis, of course. Then we could have a
basically ipv6 support.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
