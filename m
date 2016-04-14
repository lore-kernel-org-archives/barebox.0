Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqaMe-0001I1-5v
 for barebox@lists.infradead.org; Thu, 14 Apr 2016 06:02:52 +0000
Date: Thu, 14 Apr 2016 08:02:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160414060222.GX9102@pengutronix.de>
References: <HK2PR04MB16188596FE161189D917398EBE960@HK2PR04MB1618.apcprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <HK2PR04MB16188596FE161189D917398EBE960@HK2PR04MB1618.apcprd04.prod.outlook.com>
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
Subject: Re: [PATCH] NULL: keep NULL definition in stddef.h only
To: DU HUANPENG <no_rep1y@hotmail.com>, g@pengutronix.de
Cc: Du Huanpeng <u74147@gmail.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>, "norep1y@21cn.com" <norep1y@21cn.com>, "t-kernel@googlegroups.com" <t-kernel@googlegroups.com>

On Wed, Apr 13, 2016 at 04:04:01PM +0000, DU HUANPENG wrote:
> From: Du Huanpeng <u74147@gmail.com>
> 
> remove other local definition of NULL, use
>   #include <linux/stddef.h>
> instead.
> I use this command to search NULL definition,
>   grep -R "define\s*\<NULL\>"
> hope there are no more definition of NULL.
> 
> from ISO/IEC 9899:TC3:
> The macros are
> 	NULL
> which expands to an implementation-defined null pointer constant;
> 
> Signed-off-by: Du Huanpeng <u74147@gmail.com>
> ---
>  include/command.h   |  5 +----
>  lib/bzlib_private.h | 11 +----------
>  2 files changed, 2 insertions(+), 14 deletions(-)

Applied, thanks

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
