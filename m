Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YPpKR-0004r4-1U
 for barebox@lists.infradead.org; Mon, 23 Feb 2015 09:29:28 +0000
Date: Mon, 23 Feb 2015 10:29:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150223092903.GM12209@pengutronix.de>
References: <1423805265-19766-1-git-send-email-dbrainard@brainardinsight.com>
 <54DD9130.40606@atmel.com>
 <CA+nEJikidFkrVM+CbqZfFU=Y2EjYKZDz-ug=eVWDh5Y-g0_Gkw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+nEJikidFkrVM+CbqZfFU=Y2EjYKZDz-ug=eVWDh5Y-g0_Gkw@mail.gmail.com>
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
Subject: Re: [PATCH] SAMA5D4EK - Now uses the new environment.
To: Doug Brainard <dbrainard@brainardinsight.com>
Cc: barebox@lists.infradead.org

On Sun, Feb 22, 2015 at 10:58:42AM -0700, Doug Brainard wrote:
> Bo,
> 
> On Thu, Feb 12, 2015 at 10:52 PM, Bo Shen <voice.shen@atmel.com> wrote:
> > Hi Doug,
> >
> > On 02/13/2015 01:27 PM, Doug Brainard wrote:
> >>
> >> Switched SAMA5D4EK development board to the newer environment method.
> >>
> >> Improved interface to the new environment
> >>
> >> Create a custom mtdparts-add script to have the partition naming work the
> >> same as in the old environment
> >>
> >> Removed custom mtdparts-add after new patch resolved the issue being seen.
> >
> >
> > I think the upper three line should be under "---", while not in commit
> > message. This is what you do between previous version and this version (So
> > you need add version to the patch).
> >
> 
> Is there an official way to add a patch version?  And shouldn't
> everything go above the "---" or it will be added to the changed
> files?
> 
> >> Signed-off-by: Doug Brainard <dbrainard@brainardinsight.com>
> >> ---
> >
> >
> > (Put the depends here)
> > For example:
> >   This patch based on "mtd partition handling updates" patch series from
> > Sascha Hauer <s.hauer@pengutronix.de>
> >
> > (Put change log here)
> >
> > For example:
> > Changes in v2:
> >   - Removed custom mtdparts-add after new patch resolved the issue being
> > seen.
> >
> 
> To add the depends and change log, do I just edit the patch file with
> a text editor or is there a command argument to do that?

The --annotate option might help you here. I haven't used it before, so
I don't know.

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
