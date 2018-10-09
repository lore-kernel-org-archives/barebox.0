Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9tpa-00024S-35
 for barebox@lists.infradead.org; Tue, 09 Oct 2018 15:21:56 +0000
Date: Tue, 9 Oct 2018 17:19:29 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20181009151929.GA18654@ravnborg.org>
References: <20181002140403.3735-1-s.hauer@pengutronix.de>
 <20181003205029.GA20734@ravnborg.org>
 <20181008073659.q3qlbjqacb4yay7k@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181008073659.q3qlbjqacb4yay7k@pengutronix.de>
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
Subject: Re: [PATCH 00/14] UBIFS update
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sasha.

> > 
> > On Tue, Oct 02, 2018 at 04:03:49PM +0200, Sascha Hauer wrote:
> > > This series updates the UBIFS codebase to Linux-4.19-rc6.
> > 
> > Excpet that we are now in sync with upstream kernel, what else
> > does this set of patches provide?
> > Better performance, bugs fixed, or?
> > 
> > Just asking out of curiosity as there is known (by me) problems
> > with the current barebox ubifs code.
> 
> I am also not aware of any problems in the current UBIFS code. The
> motivation for updating it is that I want to add authentication support:
> http://lists.infradead.org/pipermail/linux-mtd/2018-September/083902.html
> This will be easier on a current codebase.
Now I see the motivation behind, thanks.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
