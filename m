Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YT6dp-000282-GV
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 10:35:02 +0000
Date: Wed, 4 Mar 2015 11:34:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150304103439.GX11010@pengutronix.de>
References: <1425411983-24732-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425411983-24732-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 01/11] of: make of_alias_get work on all types of DT paths
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 03, 2015 at 08:46:13PM +0100, Lucas Stach wrote:
> of_alias_get assumed that a DT path is always the full node path,
> whic is not necessarily the case, as there are other valid path
> descriptions. All of them are handled by of_find_node_by_path.
> 
> As there is already a preparsed list with all DT aliases that handles
> this case properly we can simply reuse that one.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  drivers/of/base.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Applied all, thanks

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
