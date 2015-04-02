Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22b.google.com ([2a00:1450:400c:c00::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YdbLg-0007T3-Jb
 for barebox@lists.infradead.org; Thu, 02 Apr 2015 09:23:41 +0000
Received: by wgra20 with SMTP id a20so79014361wgr.3
 for <barebox@lists.infradead.org>; Thu, 02 Apr 2015 02:23:16 -0700 (PDT)
Date: Thu, 2 Apr 2015 11:23:10 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20150402092307.GA12759@omega>
References: <1427841205-9393-1-git-send-email-mkl@pengutronix.de>
 <20150402083522.GE8125@ns203013.ovh.net>
 <1427964906.24886.14.camel@pengutronix.de>
 <551D04FD.9040106@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <551D04FD.9040106@pengutronix.de>
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
Subject: Re: [PATCH] makfiles: add emacs syntax highlighting hint
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: mol@pengutronix.de, barebox@lists.infradead.org, sha@pengutronix.de

On Thu, Apr 02, 2015 at 10:59:41AM +0200, Marc Kleine-Budde wrote:
> On 04/02/2015 10:55 AM, Lucas Stach wrote:
> > Am Donnerstag, den 02.04.2015, 10:35 +0200 schrieb Jean-Christophe
> > PLAGNIOL-VILLARD:
> >> On 00:33 Wed 01 Apr     , Marc Kleine-Budde wrote:
> >>> This patches makes a standard emacs to recognise the files as makefiles.
> >> not a fan of vi or emacs stuff in file
> >>
> >> btw I plan to drop the images/ and move them back to the ARCH
> >>
> > I'm not sure if this is time spent well.
> > 
> > Moving the generated images _again_ will get you into some serious
> > discussions with the people integrating barebox into BSP builds. We
> > finally settled for a single directory going forward and changing this
> > is not a good idea.
> 
> +1
> 
> > Or did you mean just moving the rules out of images/, but keeping the
> > generated binaries there? This might in fact be doable.
> 
> On the first sight there's some marvell image related
> doubling/copy-paste leftovers in ARCH and in images/.
> 

reminds me to send patches for RPi build which doesn't place the barebox
image into "images/", otherwise I get a [0]. It's placed in root
directory of barebox "barebox.bin". :-)

- Alex

[0] https://www.mail-archive.com/ptxdist@pengutronix.de/msg09539.html

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
