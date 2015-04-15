Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YiFdF-0000ww-Lh
 for barebox@lists.infradead.org; Wed, 15 Apr 2015 05:13:03 +0000
Date: Wed, 15 Apr 2015 07:12:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150415051238.GH9742@pengutronix.de>
References: <1428928023-13401-1-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1428928023-13401-1-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH v3 0/3] add habv4 support for i.MX6
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Apr 13, 2015 at 02:27:00PM +0200, Marc Kleine-Budde wrote:
> Hello,
> 
> this series adds support for HABv4 signed images. The last patch add code to
> decode HAB events, which is usefull during development.
> 
> Tested on $CUSTOMER's i.MX6 solo.
> 
> Changes since v2:
> - [PATCH v3 2/3] images: add HABv4 support for i.MX6:
>   fix typos
>   add missing depends on ARCH_IMX6
>   renamed Makefile
>   improved commentsin habv4-imx28.csf.in
> - [PATCH v3 3/3] habv4: add High Assurance Boot v4:
>   habv4_get_rvt(): make use of cpu_is_ rather than IS_ENABLED(CONFIG_ARCH_)
>   provide static inline wrapper for habv4_get_status()

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
