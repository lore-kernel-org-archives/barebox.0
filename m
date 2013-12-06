Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo4.mail-out.ovh.net ([46.105.40.29]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Voyt9-0003OE-1F
 for barebox@lists.infradead.org; Fri, 06 Dec 2013 17:08:28 +0000
Received: from mail634.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 41A0AFFBC85
 for <barebox@lists.infradead.org>; Fri,  6 Dec 2013 18:10:47 +0100 (CET)
Date: Fri, 6 Dec 2013 18:08:03 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131206170803.GF27628@ns203013.ovh.net>
References: <20131205004834.GA5620@omega>
 <20131205153956.GU24559@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131205153956.GU24559@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 16:39 Thu 05 Dec     , Sascha Hauer wrote:
> On Thu, Dec 05, 2013 at 01:48:35AM +0100, Alexander Aring wrote:
> > Hi,
> > 
> > I need a new challenge in my free time. :-)
> > 
> > So maybe I could try to implement a ipv6 stack for barebox. Are there
> > some interest to apply a ipv6 stack into barebox?
> > 
> > I don't need to begin any work if there are no interest to add a ipv6
> > support.
> > 
> > ... and yes I know that's maybe a really big project, but I like to get
> > some new experience.
> 
> Sooner or later I think we will need ipv6 support, but now I think it's
> up to you if you have enough interest in it to implement it ;)

I've evaluate it  and I does not want to support a custom implementation

I was thinking simply integration uIP stack so we can have ip/tcp v4/v6 stack

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
