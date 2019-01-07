Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggTMw-00029G-Se
 for barebox@lists.infradead.org; Mon, 07 Jan 2019 11:47:00 +0000
Date: Mon, 7 Jan 2019 12:46:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190107114656.la4dwhtzt6warjvx@pengutronix.de>
References: <20181214141730.26181-1-s.hauer@pengutronix.de>
 <20181214141730.26181-23-s.hauer@pengutronix.de>
 <aca969f3-1591-b18b-3a4b-49ad546092d5@wago.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aca969f3-1591-b18b-3a4b-49ad546092d5@wago.com>
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
Subject: Re: [PATCH 22/23] ARM: omap: Add board support for WAGO pfc200
 platform
To: Heinrich.Toews@wago.com
Cc: barebox@lists.infradead.org

Hi Heinrich,

On Mon, Jan 07, 2019 at 11:40:13AM +0000, Heinrich.Toews@wago.com wrote:
> Hi Sascha,
> 
> Am 14.12.18 um 15:17 schrieb Sascha Hauer:
> > This adds support for the AM3517 based WAGO pfc100/200 SPS.
>                                                    ^
> CAUTION: The PFC100 SPS is based on AM335x and NOT AM35xx. Would be nice 
> to fix the commit message in order to prevent a misunderstanding.

Thanks for noting. Just did that.

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
