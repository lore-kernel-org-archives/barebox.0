Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cxpDZ-00048j-BI
 for barebox@lists.infradead.org; Tue, 11 Apr 2017 06:23:59 +0000
Date: Tue, 11 Apr 2017 08:23:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170411062332.oitlhkzkgsp4poqu@pengutronix.de>
References: <1490524837-8826-1-git-send-email-menschel-d@posteo.de>
 <a5ab6d55-509a-8d61-d1cb-1140703682f6@posteo.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a5ab6d55-509a-8d61-d1cb-1140703682f6@posteo.de>
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
Subject: Re: [PATCH] scripts: mkmakefile: apply changes from Linux kernel
To: Dennis Menschel <menschel-d@posteo.de>
Cc: barebox@lists.infradead.org

Hi Dennis,

On Mon, Apr 10, 2017 at 11:37:01AM +0200, Dennis Menschel wrote:
> Hello everyone,
> 
> Am 26.03.2017 um 12:40 schrieb Dennis Menschel:
> > The version of mkmakefile which has been used in barebox until now dates
> > back to commit fd5f0cd6b0cef59ba18e5ac13be5b2775fa6ec28 from the Linux
> > kernel git history (Tue May 2 12:33:20 2006 +0200).
> > This patch effectively includes all changes from the aforementioned
> > commit to the latest stable version of the Linux kernel:
> >
> > [...]
> 
> about 2 weeks have passed since I submitted the aforementioned patch. As
> a haven't received any comments or feedback until now, I wanted to ask
> whether the patch has simply been overseen or maybe contains obvious
> errors of which I am not aware.

Sorry, I have really overseen this patch. If this patch was not ok, I
would at least have provided feedback what's wrong with it. Anyway, the
patch looks good, applied now.

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
