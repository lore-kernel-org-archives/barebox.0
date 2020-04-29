Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTgQx-0003h4-Nj
 for barebox@lists.infradead.org; Wed, 29 Apr 2020 06:43:05 +0000
Date: Wed, 29 Apr 2020 08:43:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200429064301.GB5877@pengutronix.de>
References: <20200428073730.34579-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428073730.34579-1-ahmad@a3f.at>
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
Subject: Re: [PATCH 01/11] scripts: import Zephyr scripts/kconfig/lint.py
 into barebox
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Tue, Apr 28, 2020 at 09:37:20AM +0200, Ahmad Fatoum wrote:
> This kconfig linter can do some useful analysis to find problems
> in our Kconfig files. Import it into barebox source tree with the
> changes necessary to be usable.
> 
> The results of running it should be taken with a grain of salt and
> verified with grep.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  scripts/kconfig-lint.py | 306 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 306 insertions(+)
>  create mode 100755 scripts/kconfig-lint.py

Applied, thanks

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
