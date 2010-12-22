Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from fmmailgate02.web.de ([217.72.192.227])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PVO8P-0001GX-OG
	for barebox@lists.infradead.org; Wed, 22 Dec 2010 12:49:38 +0000
Date: Wed, 22 Dec 2010 13:48:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101222124820.GD6017@pengutronix.de>
References: <m362uodqms.fsf@intrepid.localdomain>
	<m3lj3kca6m.fsf@intrepid.localdomain>
	<20101222010130.GG19266@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101222010130.GG19266@game.jcrosoft.org>
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
Subject: Re: [PATCH 12] Fix NOR CFI flash driver to work on big endian systems.
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Krzysztof Halasa <khc@pm.waw.pl>

On Wed, Dec 22, 2010 at 02:01:30AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 00:10 Tue 21 Dec     , Krzysztof Halasa wrote:
> > Fix NOR CFI flash driver to work on big endian systems.
> > Basically this transforms the u8/u16/u32/u64 union into
> > a single u64 value.
> > 
> > Not tested on LE platform. Apply with caution.
> I'd like to test it a few this week can we wait a few before applying?

I already applied it. I tested it on little endian and it works. Anyway,
if you find regressions we can still update the patch.

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
