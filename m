Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1exqAH-0005Ew-R2
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 08:29:15 +0000
Date: Mon, 19 Mar 2018 09:28:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180319082857.2kxpkffblycc2tl4@pengutronix.de>
References: <20180318211046.14239-1-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180318211046.14239-1-akurz@blala.de>
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
Subject: Re: [PATCH] ARM: i.MX50: Amazon Kindle: fix setup of board specific
 environment
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Sun, Mar 18, 2018 at 09:10:46PM +0000, Alexander Kurz wrote:
> With patch 5b92cfceff38 ("startup: Load default environment earlier")
> loading of the default environment moved from environment_initcall
> four initcalls up to fs_initcall. At this time, most of the board specific
> environment patches inserted via defaultenv_append_directory() have not
> been processed yet (mostly done in device_initcall) and will not appear
> in the environment.
> Fix this problem for the mx50 kindles by moving defaultenv_append_directory()
> one initcall in front of fs_initcall.
> Similar patches may be necessary for all other board implementations and the
> efi implementation using defaultenv_append_directory() in device_initcall.

You are right. Most boards do not cope with this change. Let's just
revert the original patch instead of reworking all boards.

It should be also possible to call defaultenv_load_one() instead of
putting it to the defaultenv_list list when we have already loaded the
environment, but for now I prefer the easy way out without possible
regressions.

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
