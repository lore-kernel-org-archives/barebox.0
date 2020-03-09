Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBCxi-00061z-TZ
 for barebox@lists.infradead.org; Mon, 09 Mar 2020 07:36:32 +0000
Date: Mon, 9 Mar 2020 08:36:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200309073629.GG3335@pengutronix.de>
References: <20200305074032.29725-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305074032.29725-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 0/2] state: deal gracefully with runtime bucket corruption
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Mar 05, 2020 at 08:40:30AM +0100, Ahmad Fatoum wrote:
> Series fixes two issues when buckets become corrupted during barebox
> execution. Both issues are currently sorted out after one more reset,
> so I'd suggest this goes into next despite being a fix.
> 
> Cheers,
> Ahmad Fatoum (2):
>   state: backend_storage: deal gracefully with runtime bucket corruption
>   state: treat state with all-invalid buckets as dirty
> 
>  common/state/backend_storage.c | 2 ++
>  common/state/state.c           | 7 +++----
>  2 files changed, 5 insertions(+), 4 deletions(-)

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
