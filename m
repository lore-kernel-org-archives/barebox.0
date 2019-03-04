Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0ibu-000156-Cy
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 08:06:07 +0000
Date: Mon, 4 Mar 2019 09:06:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190304080604.zydlpjvytwdg4i5v@pengutronix.de>
References: <20190302101813.13998-1-m.olbrich@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190302101813.13998-1-m.olbrich@pengutronix.de>
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
Subject: Re: [PATCH] i.MX habv3: add missing includes and make locally used
 function static
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sat, Mar 02, 2019 at 11:18:13AM +0100, Michael Olbrich wrote:
> Without this building fails with:
> 
> drivers/hab/habv3.c:80:12: error: static declaration of 'imx25_hab_get_status' follows non-static declaration
> In file included from drivers/hab/habv3.c:14:
> include/hab.h:39:5: note: previous declaration of 'imx25_hab_get_status' was here
> drivers/hab/habv3.c:87:1: warning: data definition has no type or storage class
> drivers/hab/habv3.c:87:1: warning: type defaults to 'int' in declaration of 'postmmu_initcall' [-Wimplicit-int]
> drivers/hab/habv3.c:87:1: warning: parameter names (without types) in function declaration
> drivers/hab/habv3.c:80:12: warning: 'imx25_hab_get_status' defined but not used [-Wunused-function]
> 
> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> ---
>  drivers/hab/habv3.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Applied to master, thanks

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
