Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gveoA-0005Jz-Cc
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 09:01:57 +0000
Date: Mon, 18 Feb 2019 10:01:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190218090148.mgz3uyh2jukyjwmd@pengutronix.de>
References: <1550067466-48228-1-git-send-email-j.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1550067466-48228-1-git-send-email-j.remmet@phytec.de>
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
Subject: Re: [PATCH] commands: nandtest: provide readonly test
To: Jan Remmet <j.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Feb 13, 2019 at 03:17:46PM +0100, Jan Remmet wrote:
> Test will read the device and report the corrected or failed ECC states.
> 
> Signed-off-by: Jan Remmet <j.remmet@phytec.de>
> ---
>  commands/nandtest.c | 125 ++++++++++++++++++++++++++++++++++------------------
>  1 file changed, 83 insertions(+), 42 deletions(-)

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
