Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YdauR-0006fS-Qg
 for barebox@lists.infradead.org; Thu, 02 Apr 2015 08:55:33 +0000
Message-ID: <1427964906.24886.14.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 02 Apr 2015 10:55:06 +0200
In-Reply-To: <20150402083522.GE8125@ns203013.ovh.net>
References: <1427841205-9393-1-git-send-email-mkl@pengutronix.de>
 <20150402083522.GE8125@ns203013.ovh.net>
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
Subject: Re: [PATCH] makfiles: add emacs syntax highlighting hint
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: mol@pengutronix.de, barebox@lists.infradead.org, sha@pengutronix.de

Am Donnerstag, den 02.04.2015, 10:35 +0200 schrieb Jean-Christophe
PLAGNIOL-VILLARD:
> On 00:33 Wed 01 Apr     , Marc Kleine-Budde wrote:
> > This patches makes a standard emacs to recognise the files as makefiles.
> not a fan of vi or emacs stuff in file
> 
> btw I plan to drop the images/ and move them back to the ARCH
> 
I'm not sure if this is time spent well.

Moving the generated images _again_ will get you into some serious
discussions with the people integrating barebox into BSP builds. We
finally settled for a single directory going forward and changing this
is not a good idea.

Or did you mean just moving the rules out of images/, but keeping the
generated binaries there? This might in fact be doable.

Regards,
Lucas
-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
