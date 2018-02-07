Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ejL41-0003C4-7e
 for barebox@lists.infradead.org; Wed, 07 Feb 2018 08:26:47 +0000
Date: Wed, 7 Feb 2018 09:26:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180207082626.msowyuuk2ysltc2h@pengutronix.de>
References: <20180202111442.12444-1-aleksander@aleksander.es>
 <20180202111442.12444-8-aleksander@aleksander.es>
 <20180206093338.v5j5r2b3yha2ctju@pengutronix.de>
 <CAAP7uc+M7v33r2MRtUpRtm4SWGHPGJK9Gfvacs2r1ZDzzEJMxQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAP7uc+M7v33r2MRtUpRtm4SWGHPGJK9Gfvacs2r1ZDzzEJMxQ@mail.gmail.com>
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
Subject: Re: [PATCH 07/10] ratp: implement ping as a standard ratp command
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: barebox@lists.infradead.org

On Tue, Feb 06, 2018 at 05:51:59PM +0100, Aleksander Morgado wrote:
> On Tue, Feb 6, 2018 at 10:33 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Fri, Feb 02, 2018 at 12:14:39PM +0100, Aleksander Morgado wrote:
> >> Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
> >> ---
> >>  commands/Makefile    |  1 +
> >>  commands/ratp-ping.c | 38 ++++++++++++++++++++++++++++++++++++++
> >>  common/ratp.c        | 27 ---------------------------
> >
> > Can we put the ratp commands to a separate directory like
> > common/ratp/commands/ or similar?
> > There doesn't seem to be very much code sharing between the regular
> > commands and their ratp correspondents. Most good commands are written
> > in the way that the functionality is in common code outside the command
> > file itself anyway.
> >
> 
> I actually did that originally, but then implemented "md" for RATP and
> decided I could reuse part of the code doing the memory dump. But then
> no other command I implemented shared anything with the console
> counterpart... so yes, totally agree changing that would be much
> better. I did think of moving them to commands/ratp/* instead of
> common/ratp/commands/* though. Why do you suggest to have them in
> common/? Shouldn't they be closer to the console commands in the
> hierarchy?

My idea probably was to have the ratp commands close to the ratp code,
thus moving ratp.c to common/ratp/ also.

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
