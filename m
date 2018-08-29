Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuvOZ-0006uR-Pz
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 08:00:09 +0000
Date: Wed, 29 Aug 2018 09:59:56 +0200
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20180829075956.dhvqllkjn7sb2krr@pengutronix.de>
References: <20180827151428.3032-1-mkl@pengutronix.de>
 <20180827151428.3032-6-mkl@pengutronix.de>
 <20180829071538.xlxwaqvgfdpupppr@pengutronix.de>
 <00108338-e1f4-f25a-79fa-070342c2cb3e@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00108338-e1f4-f25a-79fa-070342c2cb3e@pengutronix.de>
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
Subject: Re: [PATCH 5/5] scripts imx-image: add support for newer versions of
 "cst"
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Aug 29, 2018 at 09:29:25AM +0200, Marc Kleine-Budde wrote:
> On 08/29/2018 09:15 AM, Sascha Hauer wrote:
> > On Mon, Aug 27, 2018 at 05:14:28PM +0200, Marc Kleine-Budde wrote:
> >> Older versions of "cst" want to read the CSF frm STDIN, while newer versions
> >> want to read the CSF from a file. Sadly, the "-i" option doesn't understand
> >> "-i -" to read from STDIN, so we give it "/dev/stdin" instead.
> >>
> >> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> >> ---
> >>  scripts/imx/imx-image.c | 16 +++++++++++++++-
> >>  1 file changed, 15 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
> >> index 452a544bc3eb..17d504586967 100644
> >> --- a/scripts/imx/imx-image.c
> >> +++ b/scripts/imx/imx-image.c
> >> @@ -558,7 +558,21 @@ static int hab_sign(struct config_data *data)
> >>  		}
> >>  	}
> >>  
> >> -	ret = asprintf(&command, "%s -o %s", cst, csffile);
> >> +	/*
> >> +	 * Older versions of "cst" want to read the CSF frm STDIN,
> >> +	 * while newer versions want to read the CSF from a
> >> +	 * file. Sadly, the "-i" option doesn't understand "-i -" to
> >> +	 * read from STDIN, so we give it "/dev/stdin" instead.
> >> +	 */
> >> +	ret = asprintf(&command,
> >> +		       "if %s | grep 'Input CSF text filename'; then"
> >> +		       "	%s -o %s -i /dev/stdin;"
> >> +		       "else"
> >> +		       "	%s -o %s;"
> >> +		       "fi",
> >> +		       cst,
> >> +		       cst, csffile,
> >> +		       cst, csffile);
> > 
> > Could you separate the cst calling convention detection from the actual
> > call, so effectively do the if/else in C rather than shell? That would
> > give us a place to add a debug printf and say which way we actually call
> > the cst tool and it will be slightly less magical when something goes
> > wrong.
> 
> Makes sense. Do the "cst | grep" in one shell and evaluate the return
> value, do the if else in C and then do the proper shell call?

Yes.

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
