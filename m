Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYpuH-0001rC-Tt
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 10:13:51 +0000
Date: Mon, 17 Dec 2018 11:13:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181217101338.xtkr3c6gyrfem5gw@pengutronix.de>
References: <cover.e610a402e2d09170d606caefc97f20a39572bbde.1545034218.git-series.r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.e610a402e2d09170d606caefc97f20a39572bbde.1545034218.git-series.r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH v4 0/7] Raspberry Pi miniuart support
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Dec 17, 2018 at 09:10:38AM +0100, Rouven Czerwinski wrote:
> This patch series adds support for the raspberry pi miniuart (also called
> aux-uart) to barebox.
> With this series the miniuart overlay is no longer necessary to start barebox on
> Raspberry Pi 3.
> 
> v4:
> - Fix indentation for compatible
> - Fix __maybe_unused annnotation for rpi_drvdata missed in v3
>   from Sascha Hauer

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
