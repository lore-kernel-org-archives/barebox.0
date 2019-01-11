Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghuLl-0008HR-4I
 for barebox@lists.infradead.org; Fri, 11 Jan 2019 10:47:43 +0000
Date: Fri, 11 Jan 2019 11:47:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190111104736.wgweruitxd7bdwik@pengutronix.de>
References: <20190110045739.19399-1-andrew.smirnov@gmail.com>
 <20190110045739.19399-6-andrew.smirnov@gmail.com>
 <20190110100920.gacszawd5wziik73@pengutronix.de>
 <CAHQ1cqFqkytFvvq5JT-6DT0HkykKsRp=R7uYCEhLhH_avQ7Agw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqFqkytFvvq5JT-6DT0HkykKsRp=R7uYCEhLhH_avQ7Agw@mail.gmail.com>
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
Subject: Re: [PATCH 05/21] PCI: Convert postscan_setup_bridge() to use a loop
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jan 10, 2019 at 11:16:07AM -0800, Andrey Smirnov wrote:
> On Thu, Jan 10, 2019 at 2:09 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > Hi Andrey,
> >
> > with the price of having to dispatch the differences in a switch/case
> > later. This often works but here I don't think this is an improvement.
> >
> 
> I am confused, is this a comment for this specific patch or more than
> that, since you mention a switch statement? Can you drop:

The comment was specific to these patches:
> 
> PCI: Convert postscan_setup_bridge() to use a loop
> PCI: Convert prescan_setup_bridge() to use a loop
> PCI: Consolidate limit/base settting code

and this one:

PCI: Replace last_* variables with an array

> 
> and apply the rest?

I tried, it didn't apply. Could you respin the remaining patches?

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
