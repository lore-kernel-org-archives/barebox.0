Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UYsW2-0005yp-3T
 for barebox@lists.infradead.org; Sun, 05 May 2013 06:33:47 +0000
Date: Sun, 5 May 2013 08:33:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130505063318.GX32299@pengutronix.de>
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
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, Willy Tarreau <w@1wt.eu>

Hi Thomas,

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

How about using the C preprocessor for includes if they become
necessary?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
