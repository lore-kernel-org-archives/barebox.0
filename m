Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRdko-00021M-MW
 for barebox@lists.infradead.org; Mon, 04 Nov 2019 14:54:51 +0000
Date: Mon, 4 Nov 2019 15:54:48 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20191104145448.7b4g4qmadpyxaygj@pengutronix.de>
References: <1572018968-343065-1-git-send-email-r.karszniewicz@phytec.de>
 <20191104094250.wn2ib2fs7hspacou@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104094250.wn2ib2fs7hspacou@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Robert Karszniewicz <r.karszniewicz@phytec.de>

Hi Sascha,

On 19-11-04 10:42, Sascha Hauer wrote:
> On Fri, Oct 25, 2019 at 05:56:08PM +0200, Robert Karszniewicz wrote:
> > This should make writing and reading more reliable.
> > 
> > Also:
> > - change loop condition to make "retries" semantically correct
> > - add a debug message in case of fatal failure
> > ---
> > We've had problems writing (and even reading) a 10 MiB file from barebox
> > to multiple USB flash drives.
> > The 10 MiB file copy failed with "write: I/O error" almost every time.
> > Increasing the retry count made 100 MiB file copies succeed every time.
> >
> 
> Doing this doesn't hurt, so I applied this patch. I wonder though if
> there's something else wrong which makes increasing the retry counts
> necessary.
> 
> Sascha

there is a missing sob is that okay with you? Robert can you add a
signed-off-by line?

Regards,
  Marco

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
