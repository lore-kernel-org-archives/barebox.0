Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mho-03-ewr.mailhop.org ([204.13.248.66]
 helo=mho-01-ewr.mailhop.org)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UYhI6-0001fm-AU
 for barebox@lists.infradead.org; Sat, 04 May 2013 18:34:38 +0000
Date: Sat, 4 May 2013 14:34:14 -0400
From: Jason Cooper <jason@lakedaemon.net>
Message-ID: <20130504183414.GP31290@titan.lakedaemon.net>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130504171530.GK31290@titan.lakedaemon.net>
 <20130504195228.4ba1cdca@skate>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130504195228.4ba1cdca@skate>
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
Subject: Re: [PATCH 0/7] Basic support for Marvell Armada 370/XP SoC
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

On Sat, May 04, 2013 at 07:52:28PM +0200, Thomas Petazzoni wrote:
> Dear Jason Cooper,
> 
> On Sat, 4 May 2013 13:15:30 -0400, Jason Cooper wrote:
> 
> > Great work!  Very clean series.  I only have one thought.  Prafulla
> > (u-boot kirkwood maintainer) is always asking about consolidating the
> > kwbimage.cfg files.  The three you've submitted for the first three
> > boards are almost (if not entirely) identical.  Before a whole bunch of
> > boards get added, should we make a kwbimage-common.cfg or similar?
> 
> I'm not sure I want to make the configuration language more complicated
> than it is already. It's already a pain to parse such a configuration
> file in C (I would have preferred to write the kwbimage tool in Python,
> but since all existing Barebox tools are in C, I wasn't sure a Python
> tool would have been accepted). Adding the support for includes means
> that you have to recursively handle includes, etc. I'm not sure I want
> to go down this road for files that typically have between 10 to 30
> lines.

Agreed.

> > I'm not sold on the idea, I'm just mentioning it since it's been an
> > issue in the past.  If we want to do that, now would be the time.
> 
> I don't agree: we can refactor those files at any point in time. For
> now, I don't think it's very useful, but in the future, if it turns out
> to be useful and someone feels that it is important to improve this, we
> can always refactor the .cfg files.

Ok, no problem.  I just wanted to make sure it was considered before we
went all gung-ho adding boards.

thx,

Jason.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
