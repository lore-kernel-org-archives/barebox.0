Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glbFa-0004Gk-If
 for barebox@lists.infradead.org; Mon, 21 Jan 2019 15:12:36 +0000
Date: Mon, 21 Jan 2019 16:12:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190121151232.djbrymvdolvpva3z@pengutronix.de>
References: <49608661548074089@myt5-f1576e7b5bad.qloud-c.yandex.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <49608661548074089@myt5-f1576e7b5bad.qloud-c.yandex.net>
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
To: Seraphim Dolbilov <s.dlblv@ya.ru>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jan 21, 2019 at 03:34:49PM +0300, Seraphim Dolbilov wrote:
> Hi friends,
> 
> I need some help with barebox environment management. I've added env/config file
> to arch/arm/myboard/ directory, fixed Makefile with `bbenv-y += env` string, but
> this config file doesn't apply on barebox boots. What can be the reason for such a problem?

with bbenv-y it is only compiled it, but remains unused. You have to add
it using defaultenv_append_directory().

Regards
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
