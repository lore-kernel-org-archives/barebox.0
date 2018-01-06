Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eXkrK-0007R9-7m
 for barebox@lists.infradead.org; Sat, 06 Jan 2018 09:33:48 +0000
Date: Sat, 6 Jan 2018 10:33:30 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180106093330.GA2918@ravnborg.org>
References: <20171231083407.GA16645@ravnborg.org>
 <20180101141831.20120-1-sam@ravnborg.org>
 <20180105091426.pfjxfx633mtkoaoj@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180105091426.pfjxfx633mtkoaoj@pengutronix.de>
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
Subject: Re: [PATCH 11/25] mmccpu: delete unused lowlevel_init
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sasha.

On Fri, Jan 05, 2018 at 10:14:26AM +0100, Sascha Hauer wrote:
> On Mon, Jan 01, 2018 at 03:18:17PM +0100, Sam Ravnborg wrote:
> > Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> > ---
> >  arch/arm/boards/mmccpu/Makefile        |   3 -
> >  arch/arm/boards/mmccpu/lowlevel_init.c | 135 ---------------------------------
> >  2 files changed, 138 deletions(-)
> >  delete mode 100644 arch/arm/boards/mmccpu/lowlevel_init.c
> 
> I suspect this hasn't seen any testing for a long time. The lowlevel
> code was converted from Assembler to C by Jean Christophe who probably
> doesn't have this hardware. It was built without lowlevel config for
> quite some time without anybody noticing. Let's just remove this board
> instead of ventilating it any further.

Ack, will do so as the first patch in this series.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
