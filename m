Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YYUKH-0003Or-9R
 for barebox@lists.infradead.org; Thu, 19 Mar 2015 06:53:06 +0000
Date: Thu, 19 Mar 2015 07:52:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150319065239.GR4927@pengutronix.de>
References: <1426688022-13679-1-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426688022-13679-1-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [PATCH] mci: core: Check return value of dev_add_param_bool
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Mar 18, 2015 at 03:13:42PM +0100, Wadim Egorov wrote:
> Commit 03b59bdb64e83ebcdb9111681775117ebce0e03b changed the
> return values of dev_add_param_* to ERR_PTR(-ENOSYS) and broke a few boards.
> We have now to care about the return value of dev_add_param_bool() in
> mci_register().
> 
> Also set the ret variable when dev_add_param_bool() fails.
> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> ---
>  drivers/mci/mci-core.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

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
