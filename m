Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jneNw-0003bP-13
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 08:34:28 +0000
References: <20200622151525.21082-1-a.fatoum@pengutronix.de>
 <20200623082330.GW11869@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <510a3c4d-7c1d-751e-0cb4-be40507f98d4@pengutronix.de>
Date: Tue, 23 Jun 2020 10:34:26 +0200
MIME-Version: 1.0
In-Reply-To: <20200623082330.GW11869@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH v2] startup: inhibit watchdogs on non-interactive autoboot
 abort
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

On 6/23/20 10:23 AM, Sascha Hauer wrote:
> On Mon, Jun 22, 2020 at 05:15:25PM +0200, Ahmad Fatoum wrote:
>> nv.autoboot=abort has been added as development aid to have barebox stop
>> at the shell prompt automatically. It makes sense to inhibit all watchdogs
>> in this mode, so the user can later use the shell in peace.
> 
> As a person who is frequently annoyed by watchdogs I really like this
> change.

:]

> We could add a new option to the wd command to call
> watchdog_inhibit_all() for the case when the autoboot timeout has been
> interrupted by the user.
> 
> Anyway, this could be done as a separate patch.

I thought about having $global.autoboot_watchdog_inhibit_abort={nv,all},
but didn't go through with it because I couldn't find a name I like.

Is this what you are suggesting, but with wd setting an internal parameter
instead?

Cheers,
Ahmad

> 
> Applied, thanks
> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
