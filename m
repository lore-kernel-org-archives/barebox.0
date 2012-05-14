Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STrDf-0002YH-O9
 for barebox@lists.infradead.org; Mon, 14 May 2012 09:05:32 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 14 May 2012 11:04:21 +0200
References: <20120513090917.GX27341@pengutronix.de>
 <201205141013.05760.jbe@pengutronix.de> <4FB0C8EB.1080508@gmail.com>
In-Reply-To: <4FB0C8EB.1080508@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201205141104.22094.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/9] Minimal S5PV210 + Tiny210 support (2nd stage only)
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Alexey Galakhov wrote:
> On 14.05.2012 14:13, Juergen Beisert wrote:
> > This patch series reflects your development steps (2nd stage first, then
> > native boot support). But this is not useful when including the results
> > into the Barebox repository.
> >
> > For example you should add your new platform at the end of this patch
> > series after all the required preparations are done to make it work.
>
> Ok, I'll rebase them.
>
> The reason to do so was to introduce (harmless?) refactoring first and
> to add new features next to make git bisect work.

It would be all right if you had introduce the basic support first and it is 
now part of the repository. And *then* add the native boot support as a 
really second step and separate patch series.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
