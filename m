Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZhuMu-00064h-TY
 for barebox@lists.infradead.org; Fri, 02 Oct 2015 07:03:01 +0000
Date: Fri, 2 Oct 2015 09:02:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151002070237.GM7858@pengutronix.de>
References: <CAK+b6Lsn6xLG30xK5-9XVLaAGDyDYiPdkfSh-92HcO5fONm_HQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK+b6Lsn6xLG30xK5-9XVLaAGDyDYiPdkfSh-92HcO5fONm_HQ@mail.gmail.com>
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
Subject: Re: booting kernel from ubi volume in nand flash
To: gcleary@sightlogix.com
Cc: barebox@lists.infradead.org

Hi Geoff,

On Thu, Oct 01, 2015 at 04:25:59PM -0400, Geoff Cleary wrote:
> Hi,
> 
> I cannot find documentation regrading scrubbing of ubi volumes in barebox.
> Is this feature implemented in barebox?
> 
> In the case where our kernel is stored in a ubi volume, should we expect
> the possibility that barebox may try to "scrub" (move) a block during boot
> of the kernel, if that block required ECC correction?

I think that should not happen, at least not as long as you only do
readonly accesses to UBI. In this case scrubbing work may be added
to the list of pending works, but that list is never processed. This
can change though if you create/delete volumes or if you write to
volumes. In this case produce_free_peb() or ubi_wl_flush() may be called
which both process the list of pending works.
I hope that helps. If in doubt you should familiarize with the code
yourself.

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
