Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip9Te-0006rf-7E
 for barebox@lists.infradead.org; Wed, 08 Jan 2020 11:26:20 +0000
Date: Wed, 8 Jan 2020 12:26:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200108112616.es2pdczdo5n5vcbu@pengutronix.de>
References: <1578386762-197152-1-git-send-email-m.otto@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578386762-197152-1-git-send-email-m.otto@phytec.de>
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
Subject: Re: [PATCH v3] habv4: imx change signing area from full to the
 executed image
To: Maik Otto <m.otto@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Jan 07, 2020 at 09:46:02AM +0100, Maik Otto wrote:
> the whole barebox with mbr and partition table were be signed by default.
> change the signing to the executed image without signing the mbr,
> partition table and header_gap by imx8mq
> additional delete option full, from-dcdofs and skip-mbr
> 
> Signed-off-by: Maik Otto <m.otto@phytec.de>
> ---
> Changes in v3:
>     - change hardcoded 0x400 to data->image_dcd_offset
>     - delete offset_load_address
>     - delete offset_size
> Changes in v2:
>     - change subject from habv4: add the possibility to changing the signing
>       area from Kconfig to     
>     - delete KConfig entries
>     - delete changes habv4-imx6-gencsf.h
>     - delete full, from-dcdofs and skip-mbr options
> ---
>  scripts/imx/imx.c | 31 +++++++------------------------
>  1 file changed, 7 insertions(+), 24 deletions(-)

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
