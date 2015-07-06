Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZC4xG-0007dC-TN
 for barebox@lists.infradead.org; Mon, 06 Jul 2015 11:52:59 +0000
Date: Mon, 6 Jul 2015 13:52:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150706115236.GR18700@pengutronix.de>
References: <1436168207-6433-1-git-send-email-Herve.CODINA@celad.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1436168207-6433-1-git-send-email-Herve.CODINA@celad.com>
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
Subject: Re: [PATCH 0/4] exitcall infrastructure
To: Herve Codina <Herve.CODINA@celad.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 06, 2015 at 09:36:42AM +0200, Herve Codina wrote:
> This series adds shutdown hooks mechanism.
> The mechanism chosen is based on initcall infrastructure and so the name
> given is exitcall.
> The first patch implement the exitcall infrastructure.
> The other patches move old shutdown functions to this new infrastructure.
> 
> Herve Codina (4):
>   exitcall: Add exitcall infrastructure
>   exitcall: move device_shutdown to exitcall infrastructure
>   exitcall: move arch_shutdown to exitcall infrastructure
>   exitcall: move board_shutdown to exitcall infrastructure

Applied, thanks. Please watch out for trailing whitespaces next time. I
removed several while applying.

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
