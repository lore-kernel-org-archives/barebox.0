Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i15OH-00075g-Qs
 for barebox@lists.infradead.org; Fri, 23 Aug 2019 08:57:51 +0000
Date: Fri, 23 Aug 2019 10:57:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190823085748.ihjajm3hirrgriic@pengutronix.de>
References: <1566397308-450229-1-git-send-email-m.otto@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566397308-450229-1-git-send-email-m.otto@phytec.de>
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
Subject: Re: [PATCH v4 1/5] i.mx6: signed boot: add habv4-imx6-gencsf.h to
 the flash header of the PHYTEC boards
To: Maik Otto <m.otto@phytec.de>
Cc: barebox@lists.infradead.org

Hi Maik,

On Wed, Aug 21, 2019 at 04:21:44PM +0200, Maik Otto wrote:
> the habv4-imx6-gencsf.h is necessary in the board flash header to build
> a signed barebox
> 
> Signed-off-by: Maik Otto <m.otto@phytec.de>
> ---

I applied this to -next. So far it seems to work as expected and I could
even generate signed images for the Phytec boards. I want to have a
closer look to this patchset later, but I like it. It's really an
improvement.

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
