Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZLsw-0004st-D9
 for barebox@lists.infradead.org; Mon, 06 May 2013 13:55:22 +0000
Date: Mon, 6 May 2013 15:54:57 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130506155457.4623ab35@skate>
In-Reply-To: <20130505063318.GX32299@pengutronix.de>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130504171530.GK31290@titan.lakedaemon.net>
 <20130504195228.4ba1cdca@skate>
 <20130505063318.GX32299@pengutronix.de>
Mime-Version: 1.0
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, Willy Tarreau <w@1wt.eu>

Dear Sascha Hauer,

On Sun, 5 May 2013 08:33:18 +0200, Sascha Hauer wrote:

> > > Great work!  Very clean series.  I only have one thought.  Prafulla
> > > (u-boot kirkwood maintainer) is always asking about consolidating the
> > > kwbimage.cfg files.  The three you've submitted for the first three
> > > boards are almost (if not entirely) identical.  Before a whole bunch of
> > > boards get added, should we make a kwbimage-common.cfg or similar?
> > 
> > I'm not sure I want to make the configuration language more complicated
> > than it is already. It's already a pain to parse such a configuration
> > file in C (I would have preferred to write the kwbimage tool in Python,
> > but since all existing Barebox tools are in C, I wasn't sure a Python
> > tool would have been accepted). Adding the support for includes means
> > that you have to recursively handle includes, etc. I'm not sure I want
> > to go down this road for files that typically have between 10 to 30
> > lines.
> 
> How about using the C preprocessor for includes if they become
> necessary?

Yes, that could be one option, and certainly more reasonable than
including the include mechanism into the configuration language itself.

Best regards,

Thomas
-- 
Thomas Petazzoni, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
