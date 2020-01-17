Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isP1D-0003gW-F0
 for barebox@lists.infradead.org; Fri, 17 Jan 2020 10:38:28 +0000
Date: Fri, 17 Jan 2020 11:38:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200117103821.6lcodmreajfjadbt@pengutronix.de>
References: <CALtZhhPbqBmyHUDqb+mg=JfAP1GioitSSE0d119ACf9kw5J_CQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALtZhhPbqBmyHUDqb+mg=JfAP1GioitSSE0d119ACf9kw5J_CQ@mail.gmail.com>
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
Subject: Re: Cannot get 'wd' to appear
To: Frederick Gotham <cauldwell.thomas@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

On Fri, Jan 17, 2020 at 10:31:56AM +0000, Frederick Gotham wrote:
> I'm running embedded Linux on a quadcore x86_64 machine, and I'm using
> Buildroot.
> 
> If I go into the "menuconfig" for Barebox, I find;
> 
> WATCHDOG
> RAVE_SP_WATCHDOG
> WATCHDOG_AR9344
> WATCHDOG_BCM2835
> WATCHDOG_DAVINCI
> WATCHDOG_DW
> WATCHDOG_IMX
> WATCHDOG_IMX_RESET_SOURCE
> WATCHDOG_JZ4740
> WATCHDOG_MXS28
> WATCHDOG_OMAP
> WATCHDOG_ORION
> WATCHDOG_POLLER
> 
> I don't see the driver for the watchdog timer inside my Intel CPU, but
> for the time being I have enabled the module WATCHDOG.
> 
> I thought at the very least, if I enabled "WATCHDOG", then I would be
> able to use the command "wd" at the command prompt, but this isn't so.
> "wd" is an unrecognised command.
> 
> What do I have to do in order to get the "wd" command to work?

You'll need to enable the CMD_WD option. It's in the command section.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
