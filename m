Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UO2a3-0005ZZ-3C
 for barebox@lists.infradead.org; Fri, 05 Apr 2013 09:05:08 +0000
Date: Fri, 5 Apr 2013 11:05:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130405090504.GL1906@pengutronix.de>
References: <1365089621-27545-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1365089621-27545-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] lib: import kstrtox from the kernel 3.8
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Apr 04, 2013 at 05:33:41PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  include/linux/kernel.h |   94 +++++++++++++-
>  lib/Makefile           |    1 +
>  lib/kstrtox.c          |  322 ++++++++++++++++++++++++++++++++++++++++++++++++
>  lib/kstrtox.h          |    8 ++
>  lib/vsprintf.c         |  109 ++++++++--------
>  5 files changed, 484 insertions(+), 50 deletions(-)
>  create mode 100644 lib/kstrtox.c
>  create mode 100644 lib/kstrtox.h

You introduce a lot of new code without saying a single word why we need
this, what is wrong with the current implemementation or what's the
motivation for this.

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
