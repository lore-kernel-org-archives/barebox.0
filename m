Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLs2s-0008Mn-4v
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 08:53:40 +0000
Date: Wed, 10 Oct 2012 10:53:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121010085335.GU27665@pengutronix.de>
References: <1349641053-18685-1-git-send-email-antonynpavlov@gmail.com>
 <20121008204745.GT1322@pengutronix.de>
 <CAA4bVAH7YpUgp6-hJZMLVK3Vt=LsEJNgjqg8E+50WiXuc7=U7g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAH7YpUgp6-hJZMLVK3Vt=LsEJNgjqg8E+50WiXuc7=U7g@mail.gmail.com>
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
Subject: Re: [RFC] add 'miitool' command to view media-independent interface
 status
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 09, 2012 at 11:39:24AM +0400, Antony Pavlov wrote:
> On 9 October 2012 00:47, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > Hi Antony,
> >
> > On Mon, Oct 08, 2012 at 12:17:33AM +0400, Antony Pavlov wrote:
> >> This command is based on "mii-diag" and "mii-tool" programs.
> >>
> >> TODO:
> >>  * drop MII_ANER_ and MII_AN_, use linux/mii.h macros;
> >>  * add routines to manipulate media-independent interface state.
> >
> > Such a tool is nice to have. Some small comments inline.
> >
> ...
> >> +
> >> +/* Table of known MII's */
> >> +static struct {
> >> +     u_short id1, id2;
> >> +     u_short mask1, mask2;
> >> +     char    *name;
> >> +} mii_id[] = {
> >> +     { 0x7810, 0x0003, 0xffff, 0xffff, "Level One LXT970A" },
> >> +     { 0x7810, 0x0000, 0xffff, 0xfff0, "Level One LXT970/LXT971" },
> >> +     { 0x0013, 0x78e0, 0xffff, 0xfff0, "Level One LXT971A" },
> >> +};
> >
> > Maybe we should find a place where other code (phylib?) can use this
> > table aswell?
> 
> I agree. It is very convinient to use only one place to store the MII
> tranceivers database.
> But just now we have only one phy driver ("Generic PHY"). It has no
> table of know MII.
> I have tryed to port drivers/net/phy/lxt.c from linux. But there is no
> reason to do it: it contain only generic support for LXT970/971.
> 
> IMHO mii_id[] table is a __temporary__ but a good-enough solution.

Ack

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
