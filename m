Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wn5o1-0007CL-3M
 for barebox@lists.infradead.org; Wed, 21 May 2014 12:39:37 +0000
Date: Wed, 21 May 2014 14:39:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140521123913.GH5918@pengutronix.de>
References: <1400533184-668-1-git-send-email-s.hauer@pengutronix.de>
 <1400533184-668-6-git-send-email-s.hauer@pengutronix.de>
 <537B6FDF.2050507@gmail.com> <87ppj7r65c.fsf@xpc.ulstruplund.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87ppj7r65c.fsf@xpc.ulstruplund.dk>
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
Subject: Re: [PATCH 5/6] of: Drop devicetree merge support
To: Esben Haabendal <esben.haabendal@dev.prevas.dk>
Cc: barebox@lists.infradead.org

On Wed, May 21, 2014 at 08:35:11AM +0200, Esben Haabendal wrote:
> Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> writes:
> 
> > On 05/19/2014 10:59 PM, Sascha Hauer wrote:
> >> I assume I am the only person knowing that barebox is able to
> >> merge devicetrees. This feature seems broken for a while now since
> >> trying to merge devicetress results in:
> >> 
> >> unflatten: too many end nodes
> >
> > Uhm, I know about it because I see it every time I load an updated
> > dtb on my hacky Chromecast barebox. Loading the dtb a second time
> > again works then..
> >
> > Anyway, I don't want to merge any trees but overwrite the existing,
> > so I am fine with the removal ;)
> 
> I actually wanted to merge dtb trees for a project at hand, but ended up
> doing the merge before hand.
> 
> So no, you were not the only one knowing about it ;)

You see me surprised.

Anyway, as you decided to not use it we still do not have a user.
I think using the "official" overlay support for this is the cleaner
way to implement this feature. Another important thing is that a tree
should be explicitly merged with a separate command or option. Just
turning -l (load) option to a merge option when a devicetree is already
present was confusing.

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
