Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f383.i.mail.ru ([185.5.136.54])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UGQJK-0003lQ-MC
 for barebox@lists.infradead.org; Fri, 15 Mar 2013 08:48:23 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Fri, 15 Mar 2013 12:48:18 +0400
Message-ID: <1363337298.224316052@f383.i.mail.ru>
In-Reply-To: <20130315082927.GC1906@pengutronix.de>
References: <1363329340-13126-1-git-send-email-shc_work@mail.ru>
 <20130315082927.GC1906@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmVbMl06IFtSRkMgMS8zXSBjbGs6IFJlbW92ZSB1bm5lZGVkIHByaXZhdGUg?=
 =?UTF-8?B?InBhcmVudCIgZmllbGRz?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> On Fri, Mar 15, 2013 at 10:35:38AM +0400, Alexander Shiyan wrote:
> > 
> > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > ---
> >  drivers/clk/clk-divider-table.c |    4 +---
> >  drivers/clk/clk-divider.c       |    4 +---
> >  drivers/clk/clk-fixed-factor.c  |    4 +---
> >  drivers/clk/clk-gate.c          |    4 +---
> >  4 files changed, 4 insertions(+), 12 deletions(-)
> > 
> > diff --git a/drivers/clk/clk-divider-table.c b/drivers/clk/clk-divider-table.c
> > index 204e24d..e75fb78 100644
> > --- a/drivers/clk/clk-divider-table.c
> > +++ b/drivers/clk/clk-divider-table.c
> > @@ -25,7 +25,6 @@ struct clk_divider_table {
> >  	u8 shift;
> >  	u8 width;
> >  	void __iomem *reg;
> > -	const char *parent;
> >  	const struct clk_div_table *table;
> >  	int table_size;
> >  	int max_div_index;
> > @@ -94,10 +93,9 @@ struct clk *clk_divider_table(const char *name,
> >  	div->shift = shift;
> >  	div->reg = reg;
> >  	div->width = width;
> > -	div->parent = parent;
> >  	div->clk.ops = &clk_divider_table_ops;
> >  	div->clk.name = name;
> > -	div->clk.parent_names = &div->parent;
> > +	div->clk.parent_names = &parent;
> 
> You can't do that. You can assume that the string *name points to stays
> valid, but the pointer itself might not stay valid when leaving this
> function. parent_names is an array of pointers, with the divider it only
> has one entry, but still you need to keep a pointer for it. This is what
> div->parent is for.

You are right. Thanks.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
