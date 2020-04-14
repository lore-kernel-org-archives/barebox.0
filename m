Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOHha-0006C9-4T
 for barebox@lists.infradead.org; Tue, 14 Apr 2020 09:17:56 +0000
Date: Tue, 14 Apr 2020 11:17:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200414091752.GC27288@pengutronix.de>
References: <20200406210534.3375-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406210534.3375-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] checkpatch.pl: Update DT vendor prefix check
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Apr 07, 2020 at 12:05:34AM +0300, Antony Pavlov wrote:
> In commit 796af3473b82 ("dts: update to v5.2-rc1")
> vendor-prefixes.txt has been converted to a DT schema.
> Update the checkpatch.pl DT check to extract vendor prefixes from the new
> vendor-prefixes.yaml file.
> 
> Based on this linux kernel commit 852d095d16a6
> ("checkpatch.pl: Update DT vendor prefix check").
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  scripts/checkpatch.pl | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

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
