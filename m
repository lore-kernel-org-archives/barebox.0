Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cEjHN-0007u0-NP
 for barebox@lists.infradead.org; Wed, 07 Dec 2016 20:57:31 +0000
Date: Wed, 7 Dec 2016 21:57:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161207205707.74pqilf5wj26czbk@pengutronix.de>
References: <1480949684-18520-1-git-send-email-andrew.smirnov@gmail.com>
 <1480949684-18520-3-git-send-email-andrew.smirnov@gmail.com>
 <20161205151431.GC14158@lws-christ>
 <CAHQ1cqErON12d4KTdYg614U5i9j8X=_-kD8+g9JtfFgak9MXBA@mail.gmail.com>
 <20161207085105.GC2371@lws-christ>
 <20161207191343.v2y3dmzo4m67ws3c@pengutronix.de>
 <CAHQ1cqEMgyfvqrujYDQZp_6TzLGxpQ937RjOQZrkas+8BmutHg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqEMgyfvqrujYDQZp_6TzLGxpQ937RjOQZrkas+8BmutHg@mail.gmail.com>
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
Subject: Re: [PATCH 02/16] i.MX: ocotp: Add provisions for storing multiple
 MAC addresses
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Stefan Lengfeld <s.lengfeld@phytec.de>

On Wed, Dec 07, 2016 at 11:36:21AM -0800, Andrey Smirnov wrote:
> On Wed, Dec 7, 2016 at 11:13 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Wed, Dec 07, 2016 at 09:51:05AM +0100, Stefan Lengfeld wrote:
> >> Hi Andrey,
> >>
> >> > I did see that patch go through, however since the title of it is
> >> > "arm: imx6: ocotp: Added support for the i.MX6UL" I didn't look into
> >> > it any further.
> >>
> >> In the light of the Vybrid also supports two MAC addresses your patch title
> >>
> >>     i.MX: ocotp: Add provisions for storing multiple MAC addresses
> >>
> >> is better, since it is more generic.
> >>
> >> > > Your approach uses an extra device attribute  'mac_idx' to select the meaning
> >> > > of the device attribute 'mac_addr': Whether it points to the MAC0 or MAC1.
> >> > >
> >> > > I find it less error prone and confusing to use two seperate device attributes
> >> > > 'mac_addr' and 'mac_addr1' for MAC0 and MAC1. So you don't have to check the
> >> > > value of 'mac_idx before reading or writing the MAC addresses.
> >> >
> >> > Can't say that I necessarily agree with you assessment. There's no
> >> > need to check 'mac_idx' if it is written every time as a part of MAC
> >> > address assignment operation. The reason I chose the approach that I
> >> > did was mainly because it allowed to both have backwards compatibility
> >> > with the old naming scheme and avoid having variable naming
> >> > inconsistency (as you see in your example where one variable has a
> >> > numerical suffix and the other doesn't) which I was concerned would be
> >> > make scripting it more clunky than necessary.
> >>
> >> hmm, I find it more convenient use
> >>
> >>     bootloader$ ocotp0.mac_addr=22:33:44:55:66:77
> >>     bootloader$ ocotp0.mac_addr1=22:33:44:AA:AA:AA
> >>
> >> than
> >>
> >>     bootloader$ ocotp0.mac_idx=0
> >>     bootloader$ ocotp0.mac_addr=22:33:44:55:66:77
> >>     bootloader$ ocotp0.mac_idx=1
> >>     bootloader$ ocotp0.mac_addr=22:33:44:AA:AA:AA
> >>
> >> The same goes for reading the MAC addresses. The first one is more obvious,
> >> because the meaning of the variable "mac_addr" does not depend on another
> >> variable "mac_idx".
> >
> > I agree here.
> >
> >>
> >> Maybe we can settle on a different approach to avoid the inconsistent variable
> >> names "mac_addr" and "mac_addr1":
> >
> > How about always registering mac_addr0 with mac_addr as alias? Then we
> > have consistent variable naming and still the backward compatible
> > standard mac address.
> 
> That'd definetly would be even better way to go if we want to preserve
> backwards compatibility. It might be a bit confusing UI wise to have
> "ocotp0.mac_addr0", "ocotp0.mac_addr1" and "ocotp0.mac_addr" at the
> same time, though.

Yes, indeed, this might be confusing, but the fact that mac_addr and
mac_addr0 always have the same value should make that clear.

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
