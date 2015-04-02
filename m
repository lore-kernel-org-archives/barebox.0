Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo68.mail-out.ovh.net ([46.105.41.146])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YdbMm-000884-Gz
 for barebox@lists.infradead.org; Thu, 02 Apr 2015 09:24:49 +0000
Received: from mail610.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id 4ABE7FFA4C8
 for <barebox@lists.infradead.org>; Thu,  2 Apr 2015 11:24:24 +0200 (CEST)
Date: Thu, 2 Apr 2015 11:24:22 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150402092422.GF8125@ns203013.ovh.net>
References: <1427841205-9393-1-git-send-email-mkl@pengutronix.de>
 <20150402083522.GE8125@ns203013.ovh.net>
 <1427964906.24886.14.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1427964906.24886.14.camel@pengutronix.de>
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
To: Lucas Stach <l.stach@pengutronix.de>
Cc: mol@pengutronix.de, barebox@lists.infradead.org, sha@pengutronix.de

On 10:55 Thu 02 Apr     , Lucas Stach wrote:
> Am Donnerstag, den 02.04.2015, 10:35 +0200 schrieb Jean-Christophe
> PLAGNIOL-VILLARD:
> > On 00:33 Wed 01 Apr     , Marc Kleine-Budde wrote:
> > > This patches makes a standard emacs to recognise the files as makefiles.
> > not a fan of vi or emacs stuff in file
> > 
> > btw I plan to drop the images/ and move them back to the ARCH
> > 
> I'm not sure if this is time spent well.
> 
> Moving the generated images _again_ will get you into some serious
> discussions with the people integrating barebox into BSP builds. We
> finally settled for a single directory going forward and changing this
> is not a good idea.
> 
> Or did you mean just moving the rules out of images/, but keeping the
> generated binaries there? This might in fact be doable.
binary yes we must to do not break the build system

or a symlink at least

Best Regards,
J.
> 
> Regards,
> Lucas
> -- 
> Pengutronix e.K.             | Lucas Stach                 |
> Industrial Linux Solutions   | http://www.pengutronix.de/  |
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
