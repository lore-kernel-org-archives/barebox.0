Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YShP6-0007rN-Mf
 for barebox@lists.infradead.org; Tue, 03 Mar 2015 07:38:11 +0000
Date: Tue, 3 Mar 2015 08:37:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150303073743.GM11010@pengutronix.de>
References: <1425286776-5024-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425286776-5024-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] net: cpsw: prevent stray cache writeback
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 02, 2015 at 09:59:36AM +0100, Lucas Stach wrote:
> The cache should be invalidated when transfering ownership of a buffer
> to the device. Otherwise the writeback of dirty cache lines can
> corrupt the hardware written data.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Tested-by: Jan Weitzel <j.weitzel@phytec.de>
> ---
> Sascha, please apply this to master. It fixes a TFTP buffer corruption
> issue reported by Jan.

Did that.

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
