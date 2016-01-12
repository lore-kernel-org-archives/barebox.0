Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aIua3-0004FF-R6
 for barebox@lists.infradead.org; Tue, 12 Jan 2016 08:45:35 +0000
Date: Tue, 12 Jan 2016 09:45:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160112084509.GV13058@pengutronix.de>
References: <1452473892-19791-1-git-send-email-andrew.smirnov@gmail.com>
 <20160111104951.GP13058@pengutronix.de>
 <CAHQ1cqFRxR3U61KO73oqk-P4Mp3q7nfdN_QqVk1amQ5Mv2Ay4w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqFRxR3U61KO73oqk-P4Mp3q7nfdN_QqVk1amQ5Mv2Ay4w@mail.gmail.com>
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
Subject: Re: [PATCH v2 1/3] ARM: asm: Add convenience fucntions to access VBAR
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Jan 11, 2016 at 03:58:03PM -0800, Andrey Smirnov wrote:
> On Mon, Jan 11, 2016 at 2:49 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Sun, Jan 10, 2016 at 04:58:10PM -0800, Andrey Smirnov wrote:
> >> Add two functions to get/set VBAR register.
> >>
> >> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> >> ---
> >>
> >> Changes since v1 (http://lists.infradead.org/pipermail/barebox/2015-December/025685.html):
> >>
> >>  - Use CONFIG_CPU_32v7 instead of __LINUX_ARM_ARCH__
> >>
> >> ---
> >>  arch/arm/include/asm/system.h | 20 ++++++++++++++++++++
> >>  1 file changed, 20 insertions(+)
> >
> > Applied, thanks
> 
> Sacha, I screwed up that subject line for two other patches in this
> series (forgot to put v2), did you apply them as well or should I
> resend them?

I applied the whole series, no need to resend anything.

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
