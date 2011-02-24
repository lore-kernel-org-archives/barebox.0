Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from susu.bendor.com.au ([203.16.199.2])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PsWrL-0000nk-P2
	for barebox@lists.infradead.org; Thu, 24 Feb 2011 08:47:41 +0000
Date: Thu, 24 Feb 2011 19:47:37 +1100
From: =?UTF-8?B?Wm9sdMOhbiBLw7Njc2k=?= <zoltan@bendor.com.au>
Message-ID: <20110224194737.24b79a0e@manocska.bendor.com.au>
In-Reply-To: <201102232308.14721.jbe@pengutronix.de>
References: <Pine.LNX.4.31.1102231440230.20973-100000@susu.bendor.com.au>
	<201102232308.14721.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] mini2440: Consider correct NAND page size for boot.
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, 23 Feb 2011 23:08:14 +0100
Juergen Beisert <jbe@pengutronix.de> wrote:

> Hi Zoltan,
> 
> > [..]
> 
> do you mean something like that?
> 
> From: Juergen Beisert <juergen@kreuzholzen.de>
> Subject: mini2440: Consider correct NAND page size for boot.
> 
> When booting from NAND, its important to know the correct page size.
> When the NAND is used as the boot source, four dedicated pins are
> used to configure the correct page size and address cycle count.
> These pins can be read back in one of the NFC registers to
> parametrize the load function.
> [...]

Yes, *exactly* like that!

Best Regards,

Zoltan

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
