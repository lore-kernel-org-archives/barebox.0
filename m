Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iexaj-00062p-Jb
 for barebox@lists.infradead.org; Wed, 11 Dec 2019 08:43:30 +0000
Date: Wed, 11 Dec 2019 09:43:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191211084327.funfsyn6rtffog4y@pengutronix.de>
References: <20191210183140.11736-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210183140.11736-1-rhi@pengutronix.de>
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
Subject: Re: [PATCH] of: demote most debug output to loglevel 8 (vdebug)
To: Roland Hieber <rhi@pengutronix.de>
Cc: Barebox Mailing List <barebox@lists.infradead.org>

On Tue, Dec 10, 2019 at 07:31:40PM +0100, Roland Hieber wrote:
> Loglevel 7 (debug) is often useful to get barebox running on new
> hardware; however, the heavy output of "OF:" messages makes most
> boards take several minutes to boot to a prompt, printing things which
> are probably interesting when debugging OF code itself, but not very
> helpful otherwise. Degrade most of the message to loglevel 8 (vdebug).
> 
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> 

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
