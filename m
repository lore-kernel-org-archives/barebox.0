Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGlCM-0004LA-ME
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 09:15:39 +0000
Date: Thu, 29 Jan 2015 18:15:11 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
In-Reply-To: <20150129085623.GY12209@pengutronix.de>
References: <1422499357-31461-1-git-send-email-yamada.m@jp.panasonic.com>
 <20150129085623.GY12209@pengutronix.de>
Message-Id: <20150129181509.3DA2.AA925319@jp.panasonic.com>
MIME-Version: 1.0
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
Subject: Re: [PATCH] param: add error check to __dev_add_param()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Thu, 29 Jan 2015 09:56:23 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Thu, Jan 29, 2015 at 11:42:36AM +0900, Masahiro Yamada wrote:
> > If the argument, name is given with NULL, it would be probably
> > unexpected behavior.  It should fail rather than register the
> > NULL-named parameter.
> > 
> > If strdup() fails with out-of-memory, it should also fail
> > with -ENOMEM.
> 
> Applied, thanks
> 
> Sascha

Uh, this has been superseded by v2.



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
