Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQiEL-0003La-JZ
 for barebox@lists.infradead.org; Wed, 15 May 2019 00:57:15 +0000
Received: by mail-oi1-x243.google.com with SMTP id m204so585062oib.0
 for <barebox@lists.infradead.org>; Tue, 14 May 2019 17:57:13 -0700 (PDT)
MIME-Version: 1.0
References: <bafb7600-4351-2c80-d78f-35d59ae559ba@pengutronix.de>
 <20190514021954.11834-1-gneukum1@gmail.com>
 <f7c0782a-22df-9d1f-3699-de3cf220962d@mev.co.uk>
 <03cd78b8-74dd-9b78-c8fa-9fce756df101@pengutronix.de>
 <929b315f-248b-e5f9-7bc6-926d698611a5@mev.co.uk>
In-Reply-To: <929b315f-248b-e5f9-7bc6-926d698611a5@mev.co.uk>
From: Geordan Neukum <gneukum1@gmail.com>
Date: Wed, 15 May 2019 00:56:55 +0000
Message-ID: <CA+T6rvGqDvkMheL3vG9RmGDC=87PaTNSZ9XzB8O0-DDPvahOMw@mail.gmail.com>
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
Subject: Re: [PATCH] LICENSES: modify .gitignore files to be nonempty
To: Ian Abbott <abbotti@mev.co.uk>, barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

> If the .gitignore is currently only needed as a placeholder to avoid the
> directory being empty, it could be a file that git does not care about
> at all.  Common names for such a file seem to include '.keep' and
> '.gitkeep'.

Fair enough. As Ahmad suggested earlier, I was attempting to force a
cleanup of this file in the future as the new licenses are added. If we
feel strongly enough against using a .gitignore for this purpose, I would
be happy to resubmit the patch using another strategy. A README may also
suffice as a visible reminder that this is only intended to be a temporary
workaround.

Best,
Geordan

On Tue, May 14, 2019 at 12:51 PM Ian Abbott <abbotti@mev.co.uk> wrote:
>
> On 14/05/2019 09:28, Ahmad Fatoum wrote:
> > On 14/5/19 09:28, Ian Abbott wrote:
> >> On 14/05/2019 03:19, Geordan Neukum wrote:
> >>> The .gitignore files under the LICENSES/exceptions and LICENSES/other
> >>> directories cannot have a size of 0 or else they are subject to removal
> >>> by the make target 'distclean'. Modify the .gitignore files to
> >>> ignore all files except for themselves. These .gitignores can be
> >>> updated further or removed outright as new licenses are added to these
> >>> directories in the future.
> >>>
> >>> Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
> >>> ---
> >>>    LICENSES/exceptions/.gitignore | 4 ++++
> >>>    LICENSES/other/.gitignore      | 4 ++++
> >>>    2 files changed, 8 insertions(+)
> >>>
> >>> diff --git a/LICENSES/exceptions/.gitignore b/LICENSES/exceptions/.gitignore
> >>> index e69de29bb..d5e7eacf3 100644
> >>> --- a/LICENSES/exceptions/.gitignore
> >>> +++ b/LICENSES/exceptions/.gitignore
> >>> @@ -0,0 +1,4 @@
> >>> +# Ignore everything in this directory
> >>> +*
> >>> +# Except for this file
> >>> +!.gitignore
> >>> diff --git a/LICENSES/other/.gitignore b/LICENSES/other/.gitignore
> >>> index e69de29bb..d5e7eacf3 100644
> >>> --- a/LICENSES/other/.gitignore
> >>> +++ b/LICENSES/other/.gitignore
> >>> @@ -0,0 +1,4 @@
> >>> +# Ignore everything in this directory
> >>> +*
> >>> +# Except for this file
> >>> +!.gitignore
> >>>
> >>
> >> I may be missing something, but why not have just a comment line?
> >>
> >
> > One side effect of doing it this way, that it's more likely to remind,
> > whoever `git add`s files to these directories that the .gitignore needs to
> > be removed (unless they have aliased git add to git add -f..).
>
> It may confuse some people for a while, until they figure out what is
> preventing them from adding their file to git.
>
> > Personally, I am fine with both ways, but I would prefer the comment
> > to say something along the lines of:
> >
> >       # Placeholder as upstream checkpatch.pl requires this directory to exist
> >       # This file can be removed when new files are added
>
> If the .gitignore is currently only needed as a placeholder to avoid the
> directory being empty, it could be a file that git does not care about
> at all.  Common names for such a file seem to include '.keep' and
> '.gitkeep'.
>
> --
> -=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
> -=( MEV Ltd. is a company registered in England & Wales. )=-
> -=( Registered number: 02862268.  Registered address:    )=-
> -=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
