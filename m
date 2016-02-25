Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYrgH-0008TA-Ok
 for barebox@lists.infradead.Org; Thu, 25 Feb 2016 08:53:54 +0000
Date: Thu, 25 Feb 2016 09:53:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160225085331.GC3939@pengutronix.de>
References: <1456385809-46968-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1456385809-46968-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH v2 1/3] common: oftree: Add fuction to register set
 status fixup
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 25, 2016 at 08:36:47AM +0100, Teresa Remmet wrote:
> Added a function to register a fixup to enable or disable
> device tree nodes.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  common/oftree.c | 36 ++++++++++++++++++++++++++++++++++++
>  include/of.h    |  1 +
>  2 files changed, 37 insertions(+)

Applied, thanks

Possible future enhancements could be that we can list the fixups and
maybe even remove them.

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
