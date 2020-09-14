Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHlbd-0005vQ-NI
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 10:21:08 +0000
Date: Mon, 14 Sep 2020 12:21:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200914102104.GQ4498@pengutronix.de>
References: <20200904101040.19043-1-hubert.feurstein@vahle.at>
 <CAFfN3gXFSC8AzwM2FdUb7kOr_Qp_scAxzWu47MkAEhBp4ePdrw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFfN3gXFSC8AzwM2FdUb7kOr_Qp_scAxzWu47MkAEhBp4ePdrw@mail.gmail.com>
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
Subject: Re: [PATCH] imd: imd_calculate_crc32: initialize imd_crc to NULL
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

Hi Hubert,

On Fri, Sep 04, 2020 at 02:49:15PM +0200, Hubert Feurstein wrote:
> Am Fr., 4. Sept. 2020 um 12:10 Uhr schrieb Hubert Feurstein
> <h.feurstein@gmail.com>:
> > This fixes a NULL pointer dereference in the caller when imd-crc-token is
> > not found.
> In fact, it is even worse, it is a "uninitialized pointer dereference".

Applied to master, thanks. I reworded the commit to:

This fixes a dereference of an uninitialized pointer when imd-crc-token
is not found.

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
