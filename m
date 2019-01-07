Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggPan-00025c-LL
 for barebox@lists.infradead.org; Mon, 07 Jan 2019 07:45:03 +0000
Date: Mon, 7 Jan 2019 08:44:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190107074459.idj6n577mw6iwyez@pengutronix.de>
References: <4e760479-94dc-d3b5-8056-8c15e743c990@mni.thm.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e760479-94dc-d3b5-8056-8c15e743c990@mni.thm.de>
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
Subject: Re: [PATCH v1 1/1] Add generic implementation for muldi3
To: Martin Hofmann <martin.hofmann@mni.thm.de>
Cc: barebox@lists.infradead.org

Hi Martin,

On Sat, Jan 05, 2019 at 07:45:12PM +0100, Martin Hofmann wrote:
> Since version v2018.08.0 some shared copies of gcc routines got added to
> barebox so that archs don't need to have thier own copy inside thier
> lib. The arch I am working on atm also needs support for muldi3 which is
> not present as a generic version right now.
> 
> This patch addes the generic version form latest linux v4.20 to barebox
> and lets the archs select it in thier Kconfig so they don't need to
> provide it themself.

Applied, thanks

Which architecture is it you are working on?

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
