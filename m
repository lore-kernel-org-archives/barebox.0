Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gx4yY-0000nh-1B
 for barebox@lists.infradead.org; Fri, 22 Feb 2019 07:10:28 +0000
Date: Fri, 22 Feb 2019 08:10:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190222071022.buenjan5bbskyufe@pengutronix.de>
References: <20190219141647.2537-1-a.fatoum@pengutronix.de>
 <20190219141647.2537-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190219141647.2537-2-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 1/2] LICENSES: adopt Linux-like LICENSES directory
 structure
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 19, 2019 at 03:16:46PM +0100, Ahmad Fatoum wrote:
> At the moment
>   grep -r --exclude-dir=.git 'SPDX-License-Identifier:' | \
>     grep -v 'GPL-2.0'
> 
> shows me 39 non-dually-licensed source code files (SoCFPGA) that have a
> BSD-3-Clause license _identifier_.
> There seems to be no barebox BSD-3-Clause license  _text_ however,
> which runs afoul of the first clause of the license.
> 
> To account for this and future contributions which are licensed under
> non-GPL-2.0-but-compatible licenses, create a new LICENSES directory
> like the one Linux has, where licenses are located.
> 
> This also removes the jumptable exception inherited from U-Boot:
> 
>   > On 11/2/19 09:00, Sascha Hauer wrote:
>   >> I don't think we need this [exception]. barebox doesn't have
>   >> (and never had since the fork from U-Boot) these standalone
>   >> applications. There is no jumptable in barebox. What we do have
>   >> is modules support, but these are not covered by this text.
> 
> The LICENSES/exceptions directory is therefore empty as well as
> the LICENSES/other directory, which might house new licenses in future.
> They are added along this commit however, because upstream
> checkpatch.pl introduced with a later commit depends on their
> existence.
> 
> Fixes: a3ffa97f4 ("rename U-Boot-v2 project to barebox")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

Applied (only this one) for now.

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
