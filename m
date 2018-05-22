Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fL2Uo-0006vk-Df
 for barebox@lists.infradead.org; Tue, 22 May 2018 08:18:15 +0000
Received: by mail-lf0-x241.google.com with SMTP id n18-v6so27797301lfh.10
 for <barebox@lists.infradead.org>; Tue, 22 May 2018 01:18:03 -0700 (PDT)
Date: Tue, 22 May 2018 11:17:58 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20180522081757.yqdoqckwcu524cik@sheep>
References: <20180521115438.26493-1-pmamonov@gmail.com>
 <20180522071111.sipxro5c46rs6zxd@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180522071111.sipxro5c46rs6zxd@pengutronix.de>
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
Subject: Re: [PATCH v2 00/12] various fixes for MIPS64
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi, Sascha,

On Tue, May 22, 2018 at 09:11:11AM +0200, Sascha Hauer wrote:
> Hi Peter,
> 
> On Mon, May 21, 2018 at 02:54:26PM +0300, Peter Mamonov wrote:
> > Hi,
> > 
> > Here is a second revision of the patchset which fixes various issues with 64 bit 
> > barebox, primarily MIPS related. IMHO all of these patches are ready for 
> > application.
> 
> Overall the commit messages in this series could be better. At least for
> the non trivial changes they should answer the question why a particular
> change has been made. You'll be glad having added proper commit messages
> once a 'git blame' run points to your own code ;)

Ok, I will work on that in the next version of the series.

Regards,
Peter

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
