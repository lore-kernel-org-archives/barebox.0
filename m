Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22f.google.com ([2a00:1450:4010:c07::22f])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d1boS-0000v6-6j
 for barebox@lists.infradead.org; Fri, 21 Apr 2017 16:53:42 +0000
Received: by mail-lf0-x22f.google.com with SMTP id c80so47792531lfh.3
 for <barebox@lists.infradead.org>; Fri, 21 Apr 2017 09:53:19 -0700 (PDT)
Date: Fri, 21 Apr 2017 19:53:13 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20170421165313.GD16849@berta>
References: <20170414101051.GB16849@berta>
 <20170419080723.cq3cs7djdshvvlgg@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170419080723.cq3cs7djdshvvlgg@pengutronix.de>
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
Subject: Re: cp: incorrect behaviour when copying recursively
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sasha,

On Wed, Apr 19, 2017 at 10:07:23AM +0200, Sascha Hauer wrote:
> Hi Peter,
> 
> On Fri, Apr 14, 2017 at 01:10:51PM +0300, Peter Mamonov wrote:
> > Hi,
> > 
> > The "cp -r <src> <dst>" command omits top directory, when the trailing "/" is 
> > present in the <src> string. Here is the test case:
> 
> I can confirm that. It turned out this is because we used GNU basename
> in barebox, but we should use POSIX basename. Please check the series
> I just sent out.

Tested the `next` branch: everything works as expected.

Thanks!
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
