Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OwGu7-0005ym-S7
	for barebox@lists.infradead.org; Thu, 16 Sep 2010 16:01:44 +0000
Date: Thu, 16 Sep 2010 18:00:29 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100916160029.GE5762@game.jcrosoft.org>
References: <1283700222-19388-1-git-send-email-plagnioj@jcrosoft.com>
	<1283702627-23167-1-git-send-email-plagnioj@jcrosoft.com>
	<20100916105322.GS1473@pengutronix.de>
	<20100916120956.GB5762@game.jcrosoft.org>
	<20100916135501.GW1473@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100916135501.GW1473@pengutronix.de>
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
Subject: Re: [PATCH V2] Menu: add box style entry
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:55 Thu 16 Sep     , Sascha Hauer wrote:
> On Thu, Sep 16, 2010 at 02:09:56PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > +		} else {
> > > > +			puts("   ");
> > > > +		}
> > > > +		printf(" %d: %-*s", me->num, m->width, me->display);
> > > > +	}
> > > 
> > > I think this could look a bit simpler if we had a
> > > static int printf_menu(int selected, const char *fmt, ...) function.
> > > 'selected' is a better name for the argument. with 'reverse' my first
> > > thought was that it prints backwards...
> > sorry I do not follow
> 
> The print_menu_entry would look simpler like this:
> 
> static void print_menu_entry(struct menu *m, struct menu_entry *me, int selected)
> {
> 	gotoXY(me->num + 1, 3);
> 
> 	if (selected)
> 		printf("\e[7m");
> 
> 	if (me->type == MENU_ENTRY_BOX) {
> 		if (me->box_state)
> 			printf("[*]");
> 		else
> 			printf("[ ]");
> 	} else {
> 		printf("   ");
> 	}
> 
> 	printf(" %d: %-*s", me->num, m->width, me->display);
> 
> 	if (selected)
> 		printf("\e[m");
> }
> 
> I was confused by the name of the printf_reverse macro. For me it was
> not clear what it should do without looking at the macro definition.
ok

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
