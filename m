Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eXTKO-0004B3-V0
 for barebox@lists.infradead.org; Fri, 05 Jan 2018 14:50:39 +0000
Date: Fri, 5 Jan 2018 15:50:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180105145024.3rfcva347lj4xqwb@pengutronix.de>
References: <1513830635-24496-1-git-send-email-yamada.masahiro@socionext.com>
 <CAK7LNAQgp=cu8+jvGooDMrXPOqzbt2TTrEGsXcPVvf-Q3iguYw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNAQgp=cu8+jvGooDMrXPOqzbt2TTrEGsXcPVvf-Q3iguYw@mail.gmail.com>
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
Subject: Re: [PATCH] linux/kernel.h: move ALIGN_DOWN() to
 include/linux/kernel.h
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 21, 2017 at 01:37:46PM +0900, Masahiro Yamada wrote:
> 2017-12-21 13:30 GMT+09:00 Masahiro Yamada <yamada.masahiro@socionext.com>:
> > Linux commit ed067d4a859f ("linux/kernel.h: Add ALIGN_DOWN macro")
> > moved ALIGN_MACRO to include/linux/kernel.h.
> 
> 
> This is a typo.
> 
> ALIGN_MACRO -> ALIGN_DOWN

Applied with typo fixed, thanks.

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
