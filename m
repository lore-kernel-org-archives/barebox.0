Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fR9nf-0007XB-CO
 for barebox@lists.infradead.org; Fri, 08 Jun 2018 05:19:01 +0000
Date: Fri, 8 Jun 2018 07:18:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180608051846.pqu3rkypqmcg3xpg@pengutronix.de>
References: <20180606160809.16233-1-m.niestroj@grinn-global.com>
 <20180606160809.16233-3-m.niestroj@grinn-global.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180606160809.16233-3-m.niestroj@grinn-global.com>
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
Subject: Re: [RFC PATCH 2/5] scripts: imx: Support CST version >= 2.3.2
To: Marcin Niestroj <m.niestroj@grinn-global.com>
Cc: barebox@lists.infradead.org

On Wed, Jun 06, 2018 at 06:08:06PM +0200, Marcin Niestroj wrote:
> New versions of CST (starting from 2.3.2 according to Release Notes)
> require specifying '-i --input' option, instead of writing
> configuration to standard input. I see few possibilities here:
> 1) Simply add '-i /dev/fd/0' as a fix to current implementation
>    (this patch actually does that).
> 2) Reimplement code to save CSF content to file, instead of malloc'ed
>    buffer.
> 3) Above methods will only support CST tool >= 2.3.2. To keep
>    compatibility with older CST versions, we would need to check
>    'cst -h' output to see if '-i' option is supported or not (note,
>    that version returned by CST 2.3.3 is 'BLN_CST_MAIN_02.03.00').

You're kidding, no? My 2.3.1 also returns BLN_CST_MAIN_02.03.00. So they
managed to switch the tool to a completely incopatible API without even
increasing the version number. Great.

There's also:

4) Try both methods and see which one succeeds
5) evaluate a CST_VERSION environment variable, expect the new version
   if this is not given.

I think I am happy when we just do a hard switch to the new version like
done in your patch, but then the commit message should be reworded to
"require CST version >= 2.3.2", not "suppport". Also if the command
fails we should add a message like "CST failed, maybe it's too old. We
require at least CST-2.3.2"

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
