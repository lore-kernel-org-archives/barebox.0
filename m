Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OwDIv-0006yL-Ry
	for barebox@lists.infradead.org; Thu, 16 Sep 2010 12:11:07 +0000
Date: Thu, 16 Sep 2010 14:09:56 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100916120956.GB5762@game.jcrosoft.org>
References: <1283700222-19388-1-git-send-email-plagnioj@jcrosoft.com>
	<1283702627-23167-1-git-send-email-plagnioj@jcrosoft.com>
	<20100916105322.GS1473@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100916105322.GS1473@pengutronix.de>
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

> > +		} else {
> > +			puts("   ");
> > +		}
> > +		printf(" %d: %-*s", me->num, m->width, me->display);
> > +	}
> 
> I think this could look a bit simpler if we had a
> static int printf_menu(int selected, const char *fmt, ...) function.
> 'selected' is a better name for the argument. with 'reverse' my first
> thought was that it prints backwards...
sorry I do not follow

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
