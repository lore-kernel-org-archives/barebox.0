Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iexfI-0007XJ-Hi
 for barebox@lists.infradead.org; Wed, 11 Dec 2019 08:48:13 +0000
Date: Wed, 11 Dec 2019 09:48:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191211084808.semgbbp7ksqwngwr@pengutronix.de>
References: <20191209104928.1479-1-a.schwarzkopf@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209104928.1479-1-a.schwarzkopf@phytec.de>
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
Subject: Re: [PATCH v2] Allow usage of default environment without
 environment file storage
To: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Dec 09, 2019 at 11:49:28AM +0100, Albert Schwarzkopf wrote:
> Currently, the default environment is only used when the
> barebox environment on the persistent store is not valid
> or when ENVFS_FLAGS_FORCE_BUILT_IN is set in the super block.
> 
> However, ENVFS_FLAGS_FORCE_BUILT_IN can be cleared and the
> environmnet variables in the persistent store will be
> used again. This may not be desirable.
> 
> This patch allows building CONFIG_DEFAULT_ENVIRONMENT
> independent of CONFIG_ENV_HANDLING. This can be useful
> if you never want to load or write values from the
> persistent store and you only need to read environment variables
> from your default environment.
> 
> If CONFIG_ENV_HANDLING is not set, a message will be printed to the
> user indicating that changes to non-volatile variables won't be
> persisted.
> 
> Move envfs functions that are needed when CONFIG_DEFAULT_ENVIRONMENT
> and/or CONFIG_ENV_HANDLING is set to a new file common/envfs-core.c.
> 
> Signed-off-by: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
> ---

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
