Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLopN-00073y-Gq
 for barebox@lists.infradead.org; Fri, 25 Sep 2020 14:36:02 +0000
Date: Fri, 25 Sep 2020 16:35:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200925143558.GA11648@pengutronix.de>
References: <20200923103418.11186-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200923103418.11186-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 1/4] Makefile: add buildsystem version variable
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Sep 23, 2020 at 12:34:15PM +0200, Steffen Trumtrar wrote:
> Introduce a new variable to store a buildsystem version information.
> The exact information that is stored here (git commit, git tag,...) is
> defined by the buildsystem.
> It is intended to have the possibility to get information about the
> exact barebox binary, environment and configuration.
> 
> The variable is utilized the same as KERNELVERSION for linux:
> 
>    make BUILDSYSTEM_VERSION=$COMMITISH
> 
> Via scripts/mkcompile_h this information is injected into the barebox
> codebase.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  Makefile            | 3 ++-
>  scripts/mkcompile_h | 3 +++
>  2 files changed, 5 insertions(+), 1 deletion(-)

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
