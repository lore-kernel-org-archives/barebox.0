Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo5.mail-out.ovh.net ([178.33.111.247]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VOVj4-00058U-Fy
 for barebox@lists.infradead.org; Tue, 24 Sep 2013 16:44:39 +0000
Received: from mail434.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id DD3C21020125
 for <barebox@lists.infradead.org>; Tue, 24 Sep 2013 18:37:34 +0200 (CEST)
Date: Tue, 24 Sep 2013 18:38:52 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130924163852.GO31585@ns203013.ovh.net>
References: <1379775256-29471-1-git-send-email-plagnioj@jcrosoft.com>
 <20130924073437.GB30088@pengutronix.de>
 <20130924092323.GI31585@ns203013.ovh.net>
 <20130924093718.GE30088@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130924093718.GE30088@pengutronix.de>
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
Subject: Re: [PATCH 1/2 v2] filetype: add Binary PacKage BPK type
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Fargier Sylvain <sylvain.fargier@somfy.com>

On 11:37 Tue 24 Sep     , Sascha Hauer wrote:
> On Tue, Sep 24, 2013 at 11:23:23AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 09:34 Tue 24 Sep     , Sascha Hauer wrote:
> > > On Sat, Sep 21, 2013 at 04:54:15PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > > Signed-off-by: Fargier Sylvain <sylvain.fargier@somfy.com>
> > > > ---
> > > >  common/filetype.c  | 3 +++
> > > >  include/filetype.h | 1 +
> > > >  2 files changed, 4 insertions(+)
> > > > 
> > > > diff --git a/common/filetype.c b/common/filetype.c
> > > > index 59ea25a..ef4452d 100644
> > > > --- a/common/filetype.c
> > > > +++ b/common/filetype.c
> > > > @@ -51,6 +51,7 @@ static const struct filetype_str filetype_str[] = {
> > > >  	[filetype_png] = { "PNG image", "png" },
> > > >  	[filetype_ext] = { "ext filesystem", "ext" },
> > > >  	[filetype_gpt] = { "GUID Partition Table", "gpt" },
> > > > +	[filetype_bpk] = { "Binary PacKage", "bpk" },
> > > 
> > > Can we have "Somfy Binary PacKage" here? As this file format is rather
> > > exoctic I want to make sure we still know what this is in a few years.
> > > Was the CamelCase 'PacKage' intended?
> > We drop the Somfy to make it more generic and everyone can use it
> > as everything is published
> 
> In this case it might be useful to have some pointers *why* someone
> should use it. To me it looks like a custom cpio format. What's the
> advantage of using this instead of cpio or even uImage?

cpio does not handle > 4GiV image and does not have any crc checksum

the bpkfs provide a crc32 for the header and also one per binary stream

so if you does not care of some data you are not force to check them

uImage suffer the same issue as cpio only one crc

and it's a messup to known what it's inside. It just allow you to havea bunch
on binary stream without knowning what is what

here with bpkfs you known exactly the binary stream type and for which hw to
use it

flexibility & boot time as we boot from bpkfs directly

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
