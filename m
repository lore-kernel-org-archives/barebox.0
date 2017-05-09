Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d7y4s-00033k-1x
 for barebox@lists.infradead.org; Tue, 09 May 2017 05:52:55 +0000
Date: Tue, 9 May 2017 07:52:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170509055231.sz4jplgkom47m3ww@pengutronix.de>
References: <CAE=AiOPuC_YytvYSQoBnL4DGPypZ7_35zTmMWB5NMcbad2WPcw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAE=AiOPuC_YytvYSQoBnL4DGPypZ7_35zTmMWB5NMcbad2WPcw@mail.gmail.com>
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
Subject: Re: barebox 2017.05 freezes on VirtualBox x86 boot with "BAREBOX JMP"
To: Josh Beavers <josh.beavers@gmail.com>
Cc: barebox@lists.infradead.org

Hi Josh,

On Mon, May 08, 2017 at 04:49:05AM -0400, Josh Beavers wrote:
> Greetings,
> 
> I am trying to boot barebox on x86.  I have tried barebox 2016.06.0
> and 2017.05, both of which produce the same result.  I see the same
> thing as this thread from 2016, except the message has now been
> upgraded to "BAREBOX JMP":
> 
> http://lists.infradead.org/pipermail/barebox/2016-November/028631.html
> 
> 
> As far as I can tell by adding a pr_err() call, start_barebox() from
> common/startup.c does not get called at all.  Instead, something is
> locking up the system between the jump out of boot_hdisk.S and the
> startup code.  I am using VirtualBox as a generic 64-bit x86 system in
> case that matters.
> 
> Any suggestions about what to investigate would be appreciated.

The barebox x86 port was probably only compile tested the last five
years, so I am not wondering at all. The EFI port should work fine and
is tested, but plain old x86 never reached a level in barebox that could
be called mature or usable.

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
