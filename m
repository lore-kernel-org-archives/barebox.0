Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1brIwe-0007CU-CK
 for barebox@lists.infradead.org; Tue, 04 Oct 2016 06:11:17 +0000
Date: Tue, 4 Oct 2016 08:10:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161004061054.pfqdjdl5hdwwhe5g@pengutronix.de>
References: <1475187703-5748-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1475187703-5748-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/2] i.MX: Introduce imx6_cpu_revision()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 29, 2016 at 03:21:42PM -0700, Andrey Smirnov wrote:
> Factor out CPU revision identification code from imx6_init() into a
> standalone inline function (similar to imx6_cpu_type()), so that it
> would be possible to use that functionality in PBL code.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
> 
> Sascha:
> 
> I have an almost ready to send, board support patch that uses this in
> PBL. Unfortunately at the last minute a regression in functionality
> was discovered in that code, so I can't post it until that is
> resolved, meanwhile I am hoping I can get this code in while I am
> debugging.
> 
> Let me know if you'd rathe I send everything together.

Looks good as is. Just send your board support when the remaining issues
are resolved. Thanks, applied.

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
