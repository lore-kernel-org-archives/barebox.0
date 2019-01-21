Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glcXW-0005wS-0H
 for barebox@lists.infradead.org; Mon, 21 Jan 2019 16:35:12 +0000
Date: Mon, 21 Jan 2019 17:35:03 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190121163503.GA2854@ravnborg.org>
References: <49608661548074089@myt5-f1576e7b5bad.qloud-c.yandex.net>
 <20190121151232.djbrymvdolvpva3z@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190121151232.djbrymvdolvpva3z@pengutronix.de>
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
Subject: Re: [HELP] Barebox porting
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jan 21, 2019 at 04:12:32PM +0100, Sascha Hauer wrote:
> On Mon, Jan 21, 2019 at 03:34:49PM +0300, Seraphim Dolbilov wrote:
> > Hi friends,
> > 
> > I need some help with barebox environment management. I've added env/config file
> > to arch/arm/myboard/ directory, fixed Makefile with `bbenv-y += env` string, but
> > this config file doesn't apply on barebox boots. What can be the reason for such a problem?
> 
> with bbenv-y it is only compiled it, but remains unused. You have to add
> it using defaultenv_append_directory().

Or even better I think to add the path to:
DEFAULT_ENVIRONMENT_PATH

See sama5d4_xplained as an example.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
