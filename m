Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YFhCB-0007Pq-TS
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 10:47:04 +0000
Message-ID: <1422269200.15206.1.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 26 Jan 2015 11:46:40 +0100
In-Reply-To: <1422268796-24782-3-git-send-email-jbe@pengutronix.de>
References: <1422268796-24782-1-git-send-email-jbe@pengutronix.de>
 <1422268796-24782-3-git-send-email-jbe@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 2/9] Docs: just mark the 'bootm' command like the 'go'
 command as well
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Montag, den 26.01.2015, 11:39 +0100 schrieb Juergen Borleis:
> Just a try to be consistent in one sentence.
> 
> Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
> ---
>  Documentation/boards/mxs.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/boards/mxs.rst b/Documentation/boards/mxs.rst
> index 6c8bdb5..879663c 100644
> --- a/Documentation/boards/mxs.rst
> +++ b/Documentation/boards/mxs.rst
> @@ -115,5 +115,5 @@ mxsboot tool which changes this sector number in the image.
>  Booting second stage
>  --------------------
>  
> -The second stage images can be started with the barebox bootm command or
> +The second stage images can be started with the barebox 'bootm' command or
>  just jumped into using the 'go' command.

Wouldn't it be better to directly link to those commands by
using :ref:`command_bootm` (same for go), like in other parts of the
documentation?

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
