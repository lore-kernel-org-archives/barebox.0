Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRYsu-0008MS-A7
 for barebox@lists.infradead.org; Mon, 04 Nov 2019 09:42:53 +0000
Date: Mon, 4 Nov 2019 10:42:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191104094250.wn2ib2fs7hspacou@pengutronix.de>
References: <1572018968-343065-1-git-send-email-r.karszniewicz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572018968-343065-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: Re: [PATCH] usb: storage: Increase retries for usb_stor_transport()
To: Robert Karszniewicz <r.karszniewicz@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Oct 25, 2019 at 05:56:08PM +0200, Robert Karszniewicz wrote:
> This should make writing and reading more reliable.
> 
> Also:
> - change loop condition to make "retries" semantically correct
> - add a debug message in case of fatal failure
> ---
> We've had problems writing (and even reading) a 10 MiB file from barebox
> to multiple USB flash drives.
> The 10 MiB file copy failed with "write: I/O error" almost every time.
> Increasing the retry count made 100 MiB file copies succeed every time.
>

Doing this doesn't hurt, so I applied this patch. I wonder though if
there's something else wrong which makes increasing the retry counts
necessary.

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
