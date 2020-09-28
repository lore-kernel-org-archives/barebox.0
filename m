Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMv8X-0004gp-6O
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 15:32:22 +0000
Date: Mon, 28 Sep 2020 17:32:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200928153219.GK11648@pengutronix.de>
References: <20200928144146.21931-1-a.fatoum@pengutronix.de>
 <20200928145818.GH11648@pengutronix.de>
 <510aac46-363f-a521-18a6-0b062368ef63@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <510aac46-363f-a521-18a6-0b062368ef63@pengutronix.de>
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
Subject: Re: [PATCH 1/2] lib: kasan: remove reference of non-existent
 test_kasan.o
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 28, 2020 at 04:59:40PM +0200, Ahmad Fatoum wrote:
> On 9/28/20 4:58 PM, Sascha Hauer wrote:
> > On Mon, Sep 28, 2020 at 04:41:45PM +0200, Ahmad Fatoum wrote:
> >> We don't have anything that test_kasan.o can be generated out of,
> >> thus drop it to fix the build.
> >>
> >> It would still be nice to have this as a command, but that
> >> should be a separate patch.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  lib/kasan/Makefile | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > I prefer to add the code that I have forgotten to git add ;)
> 
> Wouldn't locating it in commands/ be better?

It uses internal KASan functions. Putting it into commands would mean
that we have to include "../lib/kasan/kasan.h". That's possible of
course, but I thought it looks better that way.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
