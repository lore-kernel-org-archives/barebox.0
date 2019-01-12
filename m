Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gi988-0008SQ-0N
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 02:34:37 +0000
Received: by mail-wr1-x444.google.com with SMTP id t27so17132385wra.6
 for <barebox@lists.infradead.org>; Fri, 11 Jan 2019 18:34:32 -0800 (PST)
MIME-Version: 1.0
References: <20190110045739.19399-1-andrew.smirnov@gmail.com>
 <20190110045739.19399-6-andrew.smirnov@gmail.com>
 <20190110100920.gacszawd5wziik73@pengutronix.de>
 <CAHQ1cqFqkytFvvq5JT-6DT0HkykKsRp=R7uYCEhLhH_avQ7Agw@mail.gmail.com>
 <20190111104736.wgweruitxd7bdwik@pengutronix.de>
In-Reply-To: <20190111104736.wgweruitxd7bdwik@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 11 Jan 2019 18:34:19 -0800
Message-ID: <CAHQ1cqGCdwJAO2eSyS1POY5j7=DJBOOBcKD_RQo4erzZxhsA2w@mail.gmail.com>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Jan 11, 2019 at 2:47 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Thu, Jan 10, 2019 at 11:16:07AM -0800, Andrey Smirnov wrote:
> > On Thu, Jan 10, 2019 at 2:09 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > >
> > > Hi Andrey,
> > >
> > > with the price of having to dispatch the differences in a switch/case
> > > later. This often works but here I don't think this is an improvement.
> > >
> >
> > I am confused, is this a comment for this specific patch or more than
> > that, since you mention a switch statement? Can you drop:
>
> The comment was specific to these patches:
> >
> > PCI: Convert postscan_setup_bridge() to use a loop
> > PCI: Convert prescan_setup_bridge() to use a loop
> > PCI: Consolidate limit/base settting code
>
> and this one:
>
> PCI: Replace last_* variables with an array
>
> >
> > and apply the rest?
>
> I tried, it didn't apply.

Yeah, dropping "PCI: Replace last_* variables with an array" will
require some rework.

>Could you respin the remaining patches?

Sure, will do in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
