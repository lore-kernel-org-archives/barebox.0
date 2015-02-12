Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YLqYB-0002Jt-AU
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 09:59:12 +0000
Date: Thu, 12 Feb 2015 10:58:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150212095849.GU12209@pengutronix.de>
References: <1423733455-27084-1-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1423733455-27084-1-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [PATCH v4: For next 1/2] reset_source: Add external reset
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 12, 2015 at 10:30:54AM +0100, Wadim Egorov wrote:
> Some SoCs have special device pins for external reset signals.
> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> ---
>  common/reset_source.c  | 1 +
>  include/reset_source.h | 1 +
>  2 files changed, 2 insertions(+)

Applied both, thanks

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
