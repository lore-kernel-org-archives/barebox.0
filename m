Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1daPcE-0007h0-Gu
 for barebox@lists.infradead.org; Wed, 26 Jul 2017 16:56:56 +0000
Date: Wed, 26 Jul 2017 18:56:31 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170726165631.GB28124@ravnborg.org>
References: <20170726163120.25952-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170726163120.25952-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 00/11] i.MX7 SabreSD support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey.

On Wed, Jul 26, 2017 at 09:31:09AM -0700, Andrey Smirnov wrote:
> Hi everyone,
> 
> This is a v2 of the patch series to add support for NXP's i.MX7
> SabreSD board. It's most likely lacking some advanced features, but
> basics such as SD card, Ethernet and, of course, booting Linux seem to
> work OK.
> 
> The patchset is updated to use defenitions from Uwe's most recent
> submission ("ARM: i.MX7: provide DDR register definitions") so this
> series has that as a dependency.
> 
> Patch 1/9 contains a fix for a pretty serious screw-up on my part, so
> I think it should be applied to master as well.
> 
> Also, note, that for a reason I haven't been able to track down yet,
> compiling Barebox + this patchset without support for FEC will cause
> upstream kernel (at least 4.12-rc1) to hang during boot while trying
> to access FEC's register file. I suspect clock initialization issue,
> but, as I said, I did not find that out conclusively.
> 
> Anyway, as usual, any feedback is wellcome.
> 
> Thanks,
> Andrey Smirnov

Other than a notpick comment everything looks good to me.
For the whole series:
Acked-by: Sam Ravnborg <sam@ravnborg.org>

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
