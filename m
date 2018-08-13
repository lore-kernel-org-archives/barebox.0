Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x244.google.com ([2607:f8b0:4001:c0b::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fpM99-0004Lq-2Q
 for barebox@lists.infradead.org; Mon, 13 Aug 2018 23:21:12 +0000
Received: by mail-it0-x244.google.com with SMTP id d16-v6so12969910itj.0
 for <barebox@lists.infradead.org>; Mon, 13 Aug 2018 16:21:00 -0700 (PDT)
MIME-Version: 1.0
References: <20180810185033.7019-1-andrew.smirnov@gmail.com>
 <20180813063405.4jszcah25tsy6abn@pengutronix.de>
 <20180813212305.r6wnpieo3j554xqd@pengutronix.de>
In-Reply-To: <20180813212305.r6wnpieo3j554xqd@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 13 Aug 2018 16:20:48 -0700
Message-ID: <CAHQ1cqFLfhYuq065CQcTuBQ2TMr1==RRAKkzYk8EDmmSNapcqQ@mail.gmail.com>
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
Subject: Re: [PATCH] ARM: i.MX: freescale-mx6sx-sabresdb: Make
 ar8031_phy_fixup static
To: Robert Schwebel <r.schwebel@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Aug 13, 2018 at 2:23 PM Robert Schwebel
<r.schwebel@pengutronix.de> wrote:
>
> On Mon, Aug 13, 2018 at 08:34:05AM +0200, Sascha Hauer wrote:
> > On Fri, Aug 10, 2018 at 11:50:33AM -0700, Andrey Smirnov wrote:
> > > Declare ar8031_phy_fixup as static since it is not being exported to
> > > any other users.
> > > ---
> > >  arch/arm/boards/freescale-mx6sx-sabresdb/board.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > Applied, thanks
>
> Signed-off is missing.
>

Ugh, sorry about that. Sascha, let me know if I should submit v2 with
my Signed-off added.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
